/* Consulta
 * Author: bruno
 * Creation date: 08/06/2015
 */
MACHINE
    Consulta
    
SEES Timefields
EXTENDS Medico, Paciente, Sala
    
    
VARIABLES cm, cp, cs, chora, cdia, cmes, cano, counter, idConsultas
    
INVARIANT 
    counter : NAT & 
    idConsultas <: NAT1 &
    cm : idConsultas --> medicos & 
    cp : idConsultas --> pacientes &
    cs : idConsultas --> salas &
    chora : idConsultas --> HORA &
    cdia : idConsultas --> DIA &
    cmes : idConsultas --> MES &
    cano : idConsultas --> ANO
    
INITIALISATION 
    cm := {} || 
    cp := {} || 
    cs := {} || 
    cdia := {} || 
    chora := {} || 
    cmes := {} || 
    cano := {} || 
    counter := 1 || 
    idConsultas := {}
    
OPERATIONS
    
    agendarConsulta ( mm, pp, hora, dia, mes, ano ) =
    PRE 
        hora : HORA & 
        dia : DIA & 
        mes : MES & 
        ano : ANO & 
        mm : MEDICOS & 
        mm : medicos & 
        pp : PACIENTES & 
        pp : pacientes & 
        mm /: cm[(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))] & 
        pp /: cp[(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))]
    THEN
        ANY sala 
        WHERE sala : salas & 
        sala /: cs[(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))] 
        THEN
            idConsultas := idConsultas \/ {counter} ||
            cm(counter) := mm ||
            cp(counter) := pp ||
            chora(counter) := hora ||
            cdia(counter) := dia ||
            cmes(counter) := mes ||
            cano(counter) := ano ||
            cs(counter) := sala ||
            counter := counter + 1
        END
    END;
    
    desmarcarConsulta ( mm, pp, hora, dia, mes, ano) =
    PRE  
        hora : HORA & 
        dia : DIA & 
        mes : MES & 
        ano : ANO & 
        mm : MEDICOS &
        mm : medicos &
        pp : PACIENTES & 
        pp : pacientes	&
        mm : cm[(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))] & 
        pp : cp[(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))]
    THEN
        ANY pos 
        WHERE 
            pos : (
                      dom(cm |> {mm}) /\ 
                      dom(cp |> {pp}) /\ 
                      dom(chora |> {hora}) /\ 
                      dom(cdia |> {dia}) /\ 
                      dom(cmes |> {mes}) /\ 
                      dom(cano |> {ano})
                  )
        THEN
            cm    := (cm    /|\ (pos-1)) ^ (cm    \|/ pos) ||
            cp    := (cp    /|\ (pos-1)) ^ (cp    \|/ pos) || 
            chora := (chora /|\ (pos-1)) ^ (chora \|/ pos) || 
            cdia  := (cdia  /|\ (pos-1)) ^ (cdia  \|/ pos) || 
            cmes  := (cmes  /|\ (pos-1)) ^ (cmes  \|/ pos) || 
            cano  := (cano  /|\ (pos-1)) ^ (cano  \|/ pos) || 
            cs    := (cs    /|\ (pos-1)) ^ (cs    \|/ pos) || 
            idConsultas := idConsultas - {counter-1} ||
            counter := counter - 1
        END
    END
END