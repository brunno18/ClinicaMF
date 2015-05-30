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
    
    removerSala (ss) =
        PRE ss : salas
        THEN salas := salas - {ss}
        END
    
END
