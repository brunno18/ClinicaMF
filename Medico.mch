/* Medico
 * Author: Jonathan
 * Creation date: 20/05/2015
 */
MACHINE
    Medico

SETS MEDICOS
VARIABLES medicos
INVARIANT medicos <: MEDICOS
INITIALISATION medicos := {}
OPERATIONS 
    addMedico (mm) =
        PRE mm : MEDICOS & mm /: medicos
        THEN medicos := medicos \/ {mm}
        END;
    
    m1 <-- removerMedico (mm) =
        PRE mm : medicos
        THEN m1 := mm || medicos := medicos - {mm}
        END
    
END
