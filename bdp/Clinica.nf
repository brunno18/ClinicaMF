Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Clinica))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Clinica))==(Machine(Clinica));
  Level(Machine(Clinica))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Clinica)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Clinica))==(Capacidade,Timefields)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Clinica))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Clinica))==(Sala,Paciente,Medico);
  List_Includes(Machine(Clinica))==(Medico,Paciente,Sala)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Clinica))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Clinica))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Clinica))==(?);
  Context_List_Variables(Machine(Clinica))==(?);
  Abstract_List_Variables(Machine(Clinica))==(?);
  Local_List_Variables(Machine(Clinica))==(idConsultas,counter,cano,cmes,cdia,chora,cs,cp,cm);
  List_Variables(Machine(Clinica))==(idConsultas,counter,cano,cmes,cdia,chora,cs,cp,cm,medicos,pacientes,salas);
  External_List_Variables(Machine(Clinica))==(idConsultas,counter,cano,cmes,cdia,chora,cs,cp,cm,medicos,pacientes,salas)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Clinica))==(?);
  Abstract_List_VisibleVariables(Machine(Clinica))==(?);
  External_List_VisibleVariables(Machine(Clinica))==(?);
  Expanded_List_VisibleVariables(Machine(Clinica))==(?);
  List_VisibleVariables(Machine(Clinica))==(?);
  Internal_List_VisibleVariables(Machine(Clinica))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Clinica))==(btrue);
  Gluing_List_Invariant(Machine(Clinica))==(btrue);
  Abstract_List_Invariant(Machine(Clinica))==(btrue);
  Expanded_List_Invariant(Machine(Clinica))==(medicos <: MEDICOS & pacientes <: PACIENTES & salas <: SALAS);
  Context_List_Invariant(Machine(Clinica))==(btrue);
  List_Invariant(Machine(Clinica))==(card(salas)<=capacidade & counter: NAT & idConsultas <: NAT1 & cm: idConsultas --> medicos & cp: idConsultas --> pacientes & cs: idConsultas --> salas & chora: idConsultas --> HORA & cdia: idConsultas --> DIA & cmes: idConsultas --> MES & cano: idConsultas --> ANO)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Clinica))==(btrue);
  Expanded_List_Assertions(Machine(Clinica))==(btrue);
  Context_List_Assertions(Machine(Clinica))==(btrue);
  List_Assertions(Machine(Clinica))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Clinica))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Clinica))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Clinica))==(medicos:={};pacientes:={};salas:={};cm,cp,cs,cdia,chora,cmes,cano,counter,idConsultas:={},{},{},{},{},{},{},1,{});
  Context_List_Initialisation(Machine(Clinica))==(skip);
  List_Initialisation(Machine(Clinica))==(cm:={} || cp:={} || cs:={} || cdia:={} || chora:={} || cmes:={} || cano:={} || counter:=1 || idConsultas:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Clinica))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Clinica),Machine(Medico))==(?);
  List_Instanciated_Parameters(Machine(Clinica),Machine(Paciente))==(?);
  List_Instanciated_Parameters(Machine(Clinica),Machine(Sala))==(?);
  List_Instanciated_Parameters(Machine(Clinica),Machine(Capacidade))==(?);
  List_Instanciated_Parameters(Machine(Clinica),Machine(Timefields))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Clinica),Machine(Sala))==(btrue);
  List_Context_Constraints(Machine(Clinica))==(btrue);
  List_Constraints(Machine(Clinica))==(btrue);
  List_Constraints(Machine(Clinica),Machine(Paciente))==(btrue);
  List_Constraints(Machine(Clinica),Machine(Medico))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Clinica))==(addMedicoClinica,removerMedicoClinica,addPacienteClinica,removerPacienteClinica,addSalaClinica,removerSalaClinica,agendarConsulta,desmarcarConsulta);
  List_Operations(Machine(Clinica))==(addMedicoClinica,removerMedicoClinica,addPacienteClinica,removerPacienteClinica,addSalaClinica,removerSalaClinica,agendarConsulta,desmarcarConsulta)
END
&
THEORY ListInputX IS
  List_Input(Machine(Clinica),addMedicoClinica)==(mm);
  List_Input(Machine(Clinica),removerMedicoClinica)==(mm);
  List_Input(Machine(Clinica),addPacienteClinica)==(pp);
  List_Input(Machine(Clinica),removerPacienteClinica)==(pp);
  List_Input(Machine(Clinica),addSalaClinica)==(ss);
  List_Input(Machine(Clinica),removerSalaClinica)==(ss);
  List_Input(Machine(Clinica),agendarConsulta)==(mm,pp,hora,dia,mes,ano);
  List_Input(Machine(Clinica),desmarcarConsulta)==(mm,pp,hora,dia,mes,ano)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Clinica),addMedicoClinica)==(?);
  List_Output(Machine(Clinica),removerMedicoClinica)==(?);
  List_Output(Machine(Clinica),addPacienteClinica)==(?);
  List_Output(Machine(Clinica),removerPacienteClinica)==(?);
  List_Output(Machine(Clinica),addSalaClinica)==(?);
  List_Output(Machine(Clinica),removerSalaClinica)==(?);
  List_Output(Machine(Clinica),agendarConsulta)==(identificador);
  List_Output(Machine(Clinica),desmarcarConsulta)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Clinica),addMedicoClinica)==(addMedicoClinica(mm));
  List_Header(Machine(Clinica),removerMedicoClinica)==(removerMedicoClinica(mm));
  List_Header(Machine(Clinica),addPacienteClinica)==(addPacienteClinica(pp));
  List_Header(Machine(Clinica),removerPacienteClinica)==(removerPacienteClinica(pp));
  List_Header(Machine(Clinica),addSalaClinica)==(addSalaClinica(ss));
  List_Header(Machine(Clinica),removerSalaClinica)==(removerSalaClinica(ss));
  List_Header(Machine(Clinica),agendarConsulta)==(identificador <-- agendarConsulta(mm,pp,hora,dia,mes,ano));
  List_Header(Machine(Clinica),desmarcarConsulta)==(desmarcarConsulta(mm,pp,hora,dia,mes,ano))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Clinica),addMedicoClinica)==(mm: MEDICOS & mm/:medicos);
  List_Precondition(Machine(Clinica),removerMedicoClinica)==(mm: MEDICOS & mm: medicos & mm/:ran(cm));
  List_Precondition(Machine(Clinica),addPacienteClinica)==(pp: PACIENTES & pp/:pacientes);
  List_Precondition(Machine(Clinica),removerPacienteClinica)==(pp: PACIENTES & pp: pacientes & pp/:ran(cp));
  List_Precondition(Machine(Clinica),addSalaClinica)==(ss: SALAS & ss/:salas & card(salas)<capacidade);
  List_Precondition(Machine(Clinica),removerSalaClinica)==(ss: SALAS & ss: salas & ss/:ran(cs));
  List_Precondition(Machine(Clinica),agendarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm/:cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp/:cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})]);
  List_Precondition(Machine(Clinica),desmarcarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm: cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp: cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})])
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Clinica),desmarcarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm: cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp: cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] | @pos.(pos: dom(cm|>{mm})/\dom(cp|>{pp})/\dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano}) ==> cm,cp,chora,cdia,cmes,cano,cs,idConsultas,counter:=cm/|\pos-1^(cm\|/pos),cp/|\pos-1^(cp\|/pos),chora/|\pos-1^(chora\|/pos),cdia/|\pos-1^(cdia\|/pos),cmes/|\pos-1^(cmes\|/pos),cano/|\pos-1^(cano\|/pos),cs/|\pos-1^(cs\|/pos),idConsultas-{counter-1},counter-1));
  Expanded_List_Substitution(Machine(Clinica),agendarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm/:cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp/:cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] | @sala.(sala: salas & sala/:cs[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] ==> identificador,idConsultas,cm,cp,chora,cdia,cmes,cano,cs,counter:=counter,idConsultas\/{counter},cm<+{counter|->mm},cp<+{counter|->pp},chora<+{counter|->hora},cdia<+{counter|->dia},cmes<+{counter|->mes},cano<+{counter|->ano},cs<+{counter|->sala},counter+1));
  Expanded_List_Substitution(Machine(Clinica),removerSalaClinica)==(ss: SALAS & ss: salas & ss/:ran(cs) & ss: SALAS & ss: salas | salas:=salas-{ss});
  Expanded_List_Substitution(Machine(Clinica),addSalaClinica)==(ss: SALAS & ss/:salas & card(salas)<capacidade & ss: SALAS & ss/:salas | salas:=salas\/{ss});
  Expanded_List_Substitution(Machine(Clinica),removerPacienteClinica)==(pp: PACIENTES & pp: pacientes & pp/:ran(cp) & pp: PACIENTES & pp: pacientes | pacientes:=pacientes-{pp});
  Expanded_List_Substitution(Machine(Clinica),addPacienteClinica)==(pp: PACIENTES & pp/:pacientes | pacientes:=pacientes\/{pp});
  Expanded_List_Substitution(Machine(Clinica),removerMedicoClinica)==(mm: MEDICOS & mm: medicos & mm/:ran(cm) & mm: MEDICOS & mm: medicos | medicos:=medicos-{mm});
  Expanded_List_Substitution(Machine(Clinica),addMedicoClinica)==(mm: MEDICOS & mm/:medicos | medicos:=medicos\/{mm});
  List_Substitution(Machine(Clinica),addMedicoClinica)==(addMedico(mm));
  List_Substitution(Machine(Clinica),removerMedicoClinica)==(removerMedico(mm));
  List_Substitution(Machine(Clinica),addPacienteClinica)==(addPaciente(pp));
  List_Substitution(Machine(Clinica),removerPacienteClinica)==(removerPaciente(pp));
  List_Substitution(Machine(Clinica),addSalaClinica)==(addSala(ss));
  List_Substitution(Machine(Clinica),removerSalaClinica)==(removerSala(ss));
  List_Substitution(Machine(Clinica),agendarConsulta)==(ANY sala WHERE sala: salas & sala/:cs[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] THEN identificador:=counter || idConsultas:=idConsultas\/{counter} || cm(counter):=mm || cp(counter):=pp || chora(counter):=hora || cdia(counter):=dia || cmes(counter):=mes || cano(counter):=ano || cs(counter):=sala || counter:=counter+1 END);
  List_Substitution(Machine(Clinica),desmarcarConsulta)==(ANY pos WHERE pos: dom(cm|>{mm})/\dom(cp|>{pp})/\dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano}) THEN cm:=cm/|\pos-1^(cm\|/pos) || cp:=cp/|\pos-1^(cp\|/pos) || chora:=chora/|\pos-1^(chora\|/pos) || cdia:=cdia/|\pos-1^(cdia\|/pos) || cmes:=cmes/|\pos-1^(cmes\|/pos) || cano:=cano/|\pos-1^(cano\|/pos) || cs:=cs/|\pos-1^(cs\|/pos) || idConsultas:=idConsultas-{counter-1} || counter:=counter-1 END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Clinica))==(?);
  Inherited_List_Constants(Machine(Clinica))==(?);
  List_Constants(Machine(Clinica))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Clinica),SALAS)==(?);
  Context_List_Enumerated(Machine(Clinica))==(?);
  Context_List_Defered(Machine(Clinica))==(HORA,DIA,MES,ANO);
  Context_List_Sets(Machine(Clinica))==(HORA,DIA,MES,ANO);
  List_Valuable_Sets(Machine(Clinica))==(MEDICOS,PACIENTES,SALAS);
  Inherited_List_Enumerated(Machine(Clinica))==(?);
  Inherited_List_Defered(Machine(Clinica))==(MEDICOS,PACIENTES,SALAS);
  Inherited_List_Sets(Machine(Clinica))==(MEDICOS,PACIENTES,SALAS);
  List_Enumerated(Machine(Clinica))==(?);
  List_Defered(Machine(Clinica))==(?);
  List_Sets(Machine(Clinica))==(?);
  Set_Definition(Machine(Clinica),PACIENTES)==(?);
  Set_Definition(Machine(Clinica),MEDICOS)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Clinica))==(?);
  Expanded_List_HiddenConstants(Machine(Clinica))==(?);
  List_HiddenConstants(Machine(Clinica))==(?);
  External_List_HiddenConstants(Machine(Clinica))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Clinica))==(btrue);
  Context_List_Properties(Machine(Clinica))==(capacidade: NAT & capacidade = 5 & HORA: FIN(INTEGER) & not(HORA = {}) & DIA: FIN(INTEGER) & not(DIA = {}) & MES: FIN(INTEGER) & not(MES = {}) & ANO: FIN(INTEGER) & not(ANO = {}));
  Inherited_List_Properties(Machine(Clinica))==(MEDICOS: FIN(INTEGER) & not(MEDICOS = {}) & PACIENTES: FIN(INTEGER) & not(PACIENTES = {}) & SALAS: FIN(INTEGER) & not(SALAS = {}));
  List_Properties(Machine(Clinica))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Clinica),Machine(Timefields))==(?);
  Seen_Context_List_Enumerated(Machine(Clinica))==(?);
  Seen_Context_List_Invariant(Machine(Clinica))==(btrue);
  Seen_Context_List_Assertions(Machine(Clinica))==(btrue);
  Seen_Context_List_Properties(Machine(Clinica))==(btrue);
  Seen_List_Constraints(Machine(Clinica))==(btrue);
  Seen_List_Operations(Machine(Clinica),Machine(Timefields))==(?);
  Seen_Expanded_List_Invariant(Machine(Clinica),Machine(Timefields))==(btrue);
  Seen_Internal_List_Operations(Machine(Clinica),Machine(Capacidade))==(?);
  Seen_List_Operations(Machine(Clinica),Machine(Capacidade))==(?);
  Seen_Expanded_List_Invariant(Machine(Clinica),Machine(Capacidade))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Clinica),addMedicoClinica)==(?);
  List_ANY_Var(Machine(Clinica),removerMedicoClinica)==(?);
  List_ANY_Var(Machine(Clinica),addPacienteClinica)==(?);
  List_ANY_Var(Machine(Clinica),removerPacienteClinica)==(?);
  List_ANY_Var(Machine(Clinica),addSalaClinica)==(?);
  List_ANY_Var(Machine(Clinica),removerSalaClinica)==(?);
  List_ANY_Var(Machine(Clinica),agendarConsulta)==(Var(sala) == atype(SALAS,?,?));
  List_ANY_Var(Machine(Clinica),desmarcarConsulta)==(Var(pos) == btype(INTEGER,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Clinica)) == (? | SALAS,PACIENTES,MEDICOS | idConsultas,counter,cano,cmes,cdia,chora,cs,cp,cm | salas,pacientes,medicos | addMedicoClinica,removerMedicoClinica,addPacienteClinica,removerPacienteClinica,addSalaClinica,removerSalaClinica,agendarConsulta,desmarcarConsulta | ? | seen(Machine(Capacidade)),seen(Machine(Timefields)),included(Machine(Medico)),included(Machine(Paciente)),included(Machine(Sala)) | ? | Clinica);
  List_Of_HiddenCst_Ids(Machine(Clinica)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Clinica)) == (?);
  List_Of_VisibleVar_Ids(Machine(Clinica)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Clinica)) == (?: ?);
  List_Of_Ids(Machine(Sala)) == (SALAS | ? | salas | ? | addSala,removerSala | ? | ? | ? | Sala);
  List_Of_HiddenCst_Ids(Machine(Sala)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Sala)) == (?);
  List_Of_VisibleVar_Ids(Machine(Sala)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Sala)) == (?: ?);
  List_Of_Ids(Machine(Paciente)) == (PACIENTES | ? | pacientes | ? | addPaciente,removerPaciente | ? | ? | ? | Paciente);
  List_Of_HiddenCst_Ids(Machine(Paciente)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Paciente)) == (?);
  List_Of_VisibleVar_Ids(Machine(Paciente)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Paciente)) == (?: ?);
  List_Of_Ids(Machine(Medico)) == (MEDICOS | ? | medicos | ? | addMedico,removerMedico | ? | ? | ? | Medico);
  List_Of_HiddenCst_Ids(Machine(Medico)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Medico)) == (?);
  List_Of_VisibleVar_Ids(Machine(Medico)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Medico)) == (?: ?);
  List_Of_Ids(Machine(Timefields)) == (HORA,DIA,MES,ANO | ? | ? | ? | ? | ? | ? | ? | Timefields);
  List_Of_HiddenCst_Ids(Machine(Timefields)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Timefields)) == (?);
  List_Of_VisibleVar_Ids(Machine(Timefields)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Timefields)) == (?: ?);
  List_Of_Ids(Machine(Capacidade)) == (capacidade | ? | ? | ? | ? | ? | ? | ? | Capacidade);
  List_Of_HiddenCst_Ids(Machine(Capacidade)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Capacidade)) == (capacidade);
  List_Of_VisibleVar_Ids(Machine(Capacidade)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Capacidade)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Clinica)) == (Type(MEDICOS) == Cst(SetOf(atype(MEDICOS,"[MEDICOS","]MEDICOS")));Type(PACIENTES) == Cst(SetOf(atype(PACIENTES,"[PACIENTES","]PACIENTES")));Type(SALAS) == Cst(SetOf(atype(SALAS,"[SALAS","]SALAS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Clinica)) == (Type(medicos) == Mvl(SetOf(atype(MEDICOS,?,?)));Type(pacientes) == Mvl(SetOf(atype(PACIENTES,?,?)));Type(salas) == Mvl(SetOf(atype(SALAS,?,?)));Type(idConsultas) == Mvl(SetOf(btype(INTEGER,?,?)));Type(counter) == Mvl(btype(INTEGER,?,?));Type(cano) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ANO,"[ANO","]ANO")));Type(cmes) == Mvl(SetOf(btype(INTEGER,?,?)*atype(MES,"[MES","]MES")));Type(cdia) == Mvl(SetOf(btype(INTEGER,?,?)*atype(DIA,"[DIA","]DIA")));Type(chora) == Mvl(SetOf(btype(INTEGER,?,?)*atype(HORA,"[HORA","]HORA")));Type(cs) == Mvl(SetOf(btype(INTEGER,?,?)*atype(SALAS,?,?)));Type(cp) == Mvl(SetOf(btype(INTEGER,?,?)*atype(PACIENTES,?,?)));Type(cm) == Mvl(SetOf(btype(INTEGER,?,?)*atype(MEDICOS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Clinica)) == (Type(desmarcarConsulta) == Cst(No_type,atype(MEDICOS,?,?)*atype(PACIENTES,?,?)*atype(HORA,?,?)*atype(DIA,?,?)*atype(MES,?,?)*atype(ANO,?,?));Type(agendarConsulta) == Cst(btype(INTEGER,?,?),atype(MEDICOS,?,?)*atype(PACIENTES,?,?)*atype(HORA,?,?)*atype(DIA,?,?)*atype(MES,?,?)*atype(ANO,?,?));Type(removerSalaClinica) == Cst(No_type,atype(SALAS,?,?));Type(addSalaClinica) == Cst(No_type,atype(SALAS,?,?));Type(removerPacienteClinica) == Cst(No_type,atype(PACIENTES,?,?));Type(addPacienteClinica) == Cst(No_type,atype(PACIENTES,?,?));Type(removerMedicoClinica) == Cst(No_type,atype(MEDICOS,?,?));Type(addMedicoClinica) == Cst(No_type,atype(MEDICOS,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
