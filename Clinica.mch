/* Clinica
 * Author: bruno
 * Creation date: 18/05/2015
 */
MACHINE
    Clinica

SEES Quantidade

SETS MEDICOS; PACIENTES; SALAS
    
VARIABLES cm, cp, ch, cs, medicos, pacientes, salas, salasDisponiveis, counter, tamanho

INVARIANT medicos <: MEDICOS & 
          pacientes <: PACIENTES &
          salas <: SALAS &
          salasDisponiveis : NAT &
          cm : NAT1 --> medicos & 
          cp : NAT1 --> pacientes &
          cs : NAT1 --> salas & 
          ch : NAT1 --> NAT &
          counter : NAT &
          card(salas) = quantidade &
          tamanho : NAT

INITIALISATION cm := {} || cp := {} || cs := {} || ch := {} || medicos := {} || pacientes := {} || salas := {} || salasDisponiveis := quantidade || counter := 1 || tamanho := 0
  
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
       
    addConsulta ( mm, pp, hh ) =
        PRE mm : medicos & pp : pacientes & hh : NAT
        THEN
            IF  mm /: cm[dom(ch |> {hh})] & pp /: cp[dom(ch |> {hh})] & salasDisponiveis > 0 
                THEN
                    cm := cm \/ {(counter, mm)} ||
                    cp := cp \/ {(counter, pp)} ||
                    ch := ch \/ {(counter, hh)} ||
                    ANY ss
                    WHERE ss : salas & ss /: cs[dom(ch |> {hh})]
                    THEN cs := cs \/ {(counter, ss)}
                    END ||
                    counter := counter + 1 ||
                    salasDisponiveis := salasDisponiveis - 1 ||
                    tamanho :=  tamanho + 1
                END
        END;
        
     desmarcarConsulta (mm, pp, hh, pos) =
         PRE mm : medicos & pp : pacientes & hh : NAT & pos : NAT
         THEN 
             
             cm := cm /|\ pos -1 ^ cm \|/ pos ||
             cp := cp /|\ pos -1 ^ cp \|/ pos ||
             ch := ch /|\ pos -1 ^ ch \|/ pos ||
             cs := cs /|\ pos -1 ^ cs \|/ pos
         END;
END