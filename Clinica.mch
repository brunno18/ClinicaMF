MACHINE
    Clinica
    
SETS MEDICOS; PACIENTES; SALAS    
SEES Capacidade, Timefields


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
          ch : idConsultas --> (HORA * DIA * MES * ANO)

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
        
    identificador <-- agendarConsulta ( mm, pp, hora, dia, mes, ano ) =
		PRE hora : HORA & dia : DIA & mes : MES & ano : ANO & mm : medicos & pp : pacientes & mm /: cm[dom(ch |> {(hora, dia, mes, ano)})] & pp /: cp[dom(ch |> {(hora, dia, mes, ano)})]
		THEN
		    IF salasDisponiveis > 0
           		    THEN
           		        identificador := counter ||
			idConsultas := idConsultas \/ {counter} ||
              			cm(counter) := mm ||
                			ch(counter) := (hora, dia, mes, ano) ||
                			cp(counter) := pp ||
                			ANY sala WHERE sala : salas & sala /: cs[dom(ch |> {(hora, dia, mes, ano)})] THEN cs(counter) := sala END ||
               			salasDisponiveis := salasDisponiveis - 1 || 
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
			idConsultas := idConsultas - {pos} ||
			salasDisponiveis := salasDisponiveis + 1 
			END
		END
END