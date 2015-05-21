/* Sala
 * Author: Jonathan
 * Creation date: 20/05/2015
 */
MACHINE
    Sala
    
SETS SALAS
VARIABLES salas
INVARIANT salas <: SALAS
INITIALISATION salas := {}
OPERATIONS 
    addSala (ss) =
        PRE ss : SALAS & ss /: salas
        THEN salas := salas \/ {ss}
        END;
    
    s1 <-- removerMedico (ss) =
        PRE ss : salas
        THEN s1 := ss || salas := salas - {ss}
        END
    
END
