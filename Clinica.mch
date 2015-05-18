/* Clinica
 * Author: bruno
 * Creation date: 18/05/2015
 */
MACHINE
    Clinica
    
SETS MEDICOS; PACIENTES; SALAS 
    
VARIABLES cm, cp, cs, medicos, pacientes, salas

INVARIANT medicos <: MEDICOS & 
          pacientes <: PACIENTES &
          salas <: SALAS &
          cm : NAT1 --> medicos & 
          cp : NAT1 --> pacientes &
          cs : NAT1 --> salas

INITIALISATION cm := {} || cp := {} || cs := {} || medicos := {} || pacientes := {} || salas := {}
  
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
        END

END