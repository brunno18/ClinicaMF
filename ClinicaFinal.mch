/* ClinicaFinal
 * Author: bruno
 * Creation date: 08/06/2015
 */
MACHINE ClinicaFinal
SEES Capacidade, Timefields
INCLUDES Consulta
INVARIANT 
    card(salas) <= capacidade
OPERATIONS
    
    addMedicoClinica( mm ) =
    PRE mm : MEDICOS & mm /: medicos
    THEN addMedico(mm)
    END;
    
    removerMedicoClinica( mm ) =
    PRE mm : MEDICOS & mm : medicos & mm /: ran(cm)
    THEN removerMedico(mm)
    END;
    
    addPacienteClinica( pp ) =
    PRE pp : PACIENTES & pp /: pacientes
    THEN addPaciente(pp)
    END;
    
    removerPacienteClinica( pp ) = 
    PRE  pp : PACIENTES & pp : pacientes & pp /: ran(cp)
    THEN removerPaciente(pp)
    END;
    
    addSalaClinica ( ss ) = 
    PRE ss : SALAS & ss /: salas & card(salas) < capacidade 
    THEN addSala(ss)
    END;
    
    removerSalaClinica ( ss ) = 
    PRE ss : SALAS & ss : salas & ss /: ran(cs)
    THEN removerSala(ss)
    END;
    
    agendarConsultaClinica( mm, pp, hora, dia, mes, ano) = 
    PRE 
        hora : HORA & 
        dia : DIA & 
        mes : MES & 
        ano : ANO & 
        mm : MEDICOS & 
        mm : medicos & 
        pp : PACIENTES & 
        pp : pacientes & 
        mm /: cm[(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))] & 
        pp /: cp[(dom(chora |> {hora}) /\ dom(cdia |> {dia}) /\ dom(cmes |> {mes}) /\ dom(cano |> {ano}))]
    THEN agendarConsulta ( mm, pp, hora, dia, mes, ano ) 
    END
END
