/* Medico
 * Author: Jonathan
 * Creation date: 20/05/2015
 */
MACHINE
    Medico

SETS MEDICOS
ABSTRACT_VARIABLES medicos
INVARIANT medicos <: MEDICOS
INITIALISATION medicos := {}
OPERATIONS
    addMedico ( mm ) =
        PRE mm : MEDICOS & mm /: medicos
        THEN medicos := medicos \/ { mm }
        END ;

    removerMedico ( mm ) =
        PRE mm : MEDICOS & mm : medicos
        THEN medicos := medicos - { mm }
        END

END
