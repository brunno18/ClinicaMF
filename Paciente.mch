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
    
    removerPaciente (pp) =
        PRE pp : pacientes
        THEN pacientes := pacientes - {pp}
        END
    
END

