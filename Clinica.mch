MACHINE
    Clinica
    
SEES Capacidade, Timefields
INCLUDES Medico, Paciente, Sala
    
    
VARIABLES cm, cp, cs, chora, cdia, cmes, cano, counter, idConsultas
    
INVARIANT card(salas) <= capacidade &
    counter : NAT & 
    idConsultas <: NAT1 &
    cm : idConsultas --> medicos & 
    cp : idConsultas --> pacientes &
    cs : idConsultas --> salas &
    chora : idConsultas --> HORA &
    cdia : idConsultas --> DIA &
    cmes : idConsultas --> MES &
    cano : idConsultas --> ANO
    
INITIALISATION cm := {} || cp := {} || cs := {} || cdia := {} || chora := {} || cmes := {} || cano := {} || counter := 1 || idConsultas := {}
    
OPERATIONS
    
    addMedicoClinica( mm ) =
    PRE mm : MEDICOS & mm /: medicos
    THEN addMedico(mm)
    END;
    
    removerMedicoClinica( mm ) =
    PRE mm : medicos & mm /: ran(cm)
    THEN removerMedico(mm)
    END;
    
    addPacienteClinica( pp ) =
    PRE pp : PACIENTES & pp /: pacientes
    THEN addPaciente(pp)
    END;
    
    removerPacienteClinica( pp ) = 
    PRE  pp : pacientes & pp /: ran(cp)
    THEN removerPaciente(pp)
    END;
    
    addSalaClinica ( ss ) = 
    PRE ss : SALAS & ss /: salas
    THEN addSala(ss)
    END;
    
    removerSalaClinica ( ss ) = 
    PRE ss : salas & ss /: ran(cs)
    THEN removerSala(ss)
    END;
    
    identificador <-- agendarConsulta ( mm, pp, hora, dia, mes, ano ) =
    PRE hora : HORA & dia : DIA & mes : MES & ano : ANO & mm : medicos & pp : pacientes & mm /: cm[dom(chora |> {(hora)})] & pp /: cp[{(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))}]
    THEN
        ANY sala WHERE sala : salas & sala /: cs[dom(ch |> {(hora, dia, mes, ano)})] THEN
            identificador := counter ||
            idConsultas := idConsultas \/ {counter} ||
            cm(counter) := mm ||
            ch(counter) := (hora, dia, mes, ano) ||
            cp(counter) := pp ||
            cs(counter) := sala ||
            counter := counter + 1
        END
    END;
    
    desmarcarConsulta ( mm, pp, hora, dia, mes, ano) =
    PRE  hora : HORA & dia : DIA & mes : MES & ano : ANO & mm : medicos & pp : pacientes	& mm : cm[dom(ch |> {(hora, dia, mes, ano)})] & pp : cp[dom(ch |> {(hora, dia, mes, ano)})] 
    THEN
        ANY pos WHERE pos : ((dom(cm |> {mm}) /\ dom(cp |> {pp}) /\ dom(ch |> {(hora, dia, mes, ano)}))) THEN
            cm := cm - {(pos |-> mm)} ||
            ch := ch - {(pos |-> (hora, dia, mes, ano))} ||
            cp := cp - {(pos |-> pp)} ||
            cs := {pos} <<| cs ||
            idConsultas := idConsultas - {pos}
        END
    END
END