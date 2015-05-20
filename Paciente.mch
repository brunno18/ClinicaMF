/* Paciente
 * Author: Jonathan
 * Creation date: 20/05/2015
 */
MACHINE
    Paciente

SETS PACIENTES
VARIABLES pacientes
INVARIANT pacientes <: PACIENTES
INITIALISATION pacientes := {}
OPERATIONS 
    addPaciente (pp) =
        PRE pp : PACIENTES & pp /: pacientes
        THEN pacientes := pacientes \/ {pp}
        END;
    
    p1 <-- removerPaciente (pp) =
        PRE pp : pacientes
        THEN p1 := pp || pacientes := pacientes - {pp}
        END
    
END

