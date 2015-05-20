/* Clinica
 * Author: bruno e jonathan
 * Creation date: 18/05/2015
 */
MACHINE
    Clinica
    
SETS MEDICOS; PACIENTES; SALAS
    
SEES Capacidade

INCLUDES Horario

VARIABLES cm, cp, cs, ch, medicos, pacientes, salas, salasDisponiveis, counter, idConsultas

INVARIANT medicos <: MEDICOS & 
          pacientes <: PACIENTES &
          salas <: SALAS &
          salasDisponiveis : NAT &
          counter : NAT & 
	  idConsultas <: NAT1 &
          cm : idConsultas --> medicos & 
          cp : idConsultas --> pacientes &
          cs : idConsultas --> salas &
          ch : idConsultas --> HORARIO

INITIALISATION cm := {} || cp := {} || cs := {} || ch := {} || medicos := {} || pacientes := {} || salas := {} 
              	|| counter := 1 || salasDisponiveis := capacidade || idConsultas := {}
  
OPERATIONS
    
    addMedico( mm ) =
        PRE mm : MEDICOS & mm /: medicos
        THEN medicos := medicos \/ {mm}
        END;
        
    removerMedico( mm ) =
        PRE mm : medicos & mm /: ran(cm)
        THEN medicos := medicos - {mm}
        END;
       
    addPaciente( pp ) =
        PRE pp : PACIENTES & pp /: pacientes
        THEN pacientes := pacientes \/ {pp}
        END;
    
    removerPaciente( pp ) = 
        PRE  pp : pacientes & pp /: ran(cp)
        THEN pacientes := pacientes - {pp}
        END;
        
    addSala ( ss ) = 
        PRE ss : SALAS & ss /: salas
        THEN salas := salas \/ {ss}
        END;
      
    removerSala ( ss ) = 
        PRE ss : salas & ss /: ran(cs)
        THEN salas := salas - {ss}
        END;
        
    identificador <-- agendarConsulta ( mm, pp, hh ) =
		PRE hh : HORARIO & mm : medicos & pp : pacientes & hh /: ran(ch) & mm /: cm[dom(ch |> {hh})] & pp /: cp[dom(ch |> {hh})]
		THEN
		    IF salasDisponiveis > 0
           		    THEN
           		        identificador := counter ||
			idConsultas := idConsultas \/ {counter} ||
              			cm(counter) := mm ||
                			ch(counter) := hh ||
                			cp(counter) := pp ||
                			ANY sala WHERE sala : salas & sala /: cs[dom(ch |> {hh})] THEN cs(counter) := sala END ||
               			salasDisponiveis := salasDisponiveis - 1 || 
                			counter := counter + 1
            		    END
		END;
	
	desmarcarConsulta ( mm, pp, hh, pos) =
		PRE pos : NAT1 & pos : idConsultas & pos : (dom(cm |> {mm}) /\ dom(cp |> {pp}) /\ dom(ch |> {hh})) 
			& hh : HORARIO & hh : ran(ch) & mm : cm[dom(ch |> {hh})] & pp : cp[dom(ch |> {hh})] 
		THEN
			cm := cm - {(pos |-> mm)} ||
			ch := ch - {(pos |-> hh)} ||
			cp := cp - {(pos |-> pp)} ||
			cs := {pos} <<| cs ||
			idConsultas := idConsultas - {pos} ||
			salasDisponiveis := salasDisponiveis + 1 
		END
END