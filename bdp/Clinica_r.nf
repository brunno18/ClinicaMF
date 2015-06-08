Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Clinica_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Clinica_r))==(Machine(Clinica));
  Level(Refinement(Clinica_r))==(1);
  Upper_Level(Refinement(Clinica_r))==(Machine(Clinica))
END
&
THEORY LoadedStructureX IS
  Refinement(Clinica_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Clinica_r))==(Capacidade,Timefields)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Clinica_r))==(Sala,Paciente,Medico);
  List_Includes(Refinement(Clinica_r))==(Medico,Paciente,Sala)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Clinica_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Clinica_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Clinica_r))==(?);
  Context_List_Variables(Refinement(Clinica_r))==(?);
  Abstract_List_Variables(Refinement(Clinica_r))==(idConsultas,counter,cano,cmes,cdia,chora,cs,cp,cm,medicos,pacientes,salas);
  Local_List_Variables(Refinement(Clinica_r))==(salasr,canor,cmesr,cdiar,chorar,csr,cpr,cmr,idConsultasr);
  List_Variables(Refinement(Clinica_r))==(salasr,canor,cmesr,cdiar,chorar,csr,cpr,cmr,idConsultasr,medicos,pacientes,salas);
  External_List_Variables(Refinement(Clinica_r))==(salasr,canor,cmesr,cdiar,chorar,csr,cpr,cmr,idConsultasr,medicos,pacientes,salas)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Clinica_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Clinica_r))==(?);
  External_List_VisibleVariables(Refinement(Clinica_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Clinica_r))==(?);
  List_VisibleVariables(Refinement(Clinica_r))==(?);
  Internal_List_VisibleVariables(Refinement(Clinica_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Clinica_r))==(salasr,canor,cmesr,cdiar,chorar,csr,cpr,cmr,idConsultasr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Clinica_r))==(btrue);
  Abstract_List_Invariant(Refinement(Clinica_r))==(card(salas)<=capacidade & counter: NAT & idConsultas <: NAT1 & cm: idConsultas --> medicos & cp: idConsultas --> pacientes & cs: idConsultas --> salas & chora: idConsultas --> HORA & cdia: idConsultas --> DIA & cmes: idConsultas --> MES & cano: idConsultas --> ANO & medicos <: MEDICOS & pacientes <: PACIENTES & salas <: SALAS);
  Expanded_List_Invariant(Refinement(Clinica_r))==(medicos <: MEDICOS & pacientes <: PACIENTES & salas <: SALAS);
  Context_List_Invariant(Refinement(Clinica_r))==(btrue);
  List_Invariant(Refinement(Clinica_r))==(card(salas)<=capacidade & salasr: NAT >+> salas & idConsultasr: NAT1 & cmr: 1..idConsultasr --> medicos & cpr: 1..idConsultasr --> pacientes & csr: 1..idConsultasr --> salas & chorar: 1..idConsultasr --> HORA & cdiar: 1..idConsultasr --> DIA & cmesr: 1..idConsultasr --> MES & canor: 1..idConsultasr --> ANO & idConsultas = 1..idConsultasr & counter = idConsultasr+1 & cm = cmr & cp = cpr & cs = csr & chora = chorar & cdia = cdiar & cmes = cmesr & cano = canor)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Clinica_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Refinement(Clinica_r))==(btrue);
  Expanded_List_Assertions(Refinement(Clinica_r))==(btrue);
  Context_List_Assertions(Refinement(Clinica_r))==(btrue);
  List_Assertions(Refinement(Clinica_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Clinica_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Clinica_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Clinica_r))==(medicos:={};pacientes:={};salas:={};idConsultasr,cmr,cpr,csr,chorar,cdiar,cmesr,canor,salasr:=0,{},{},{},{},{},{},{},{});
  Context_List_Initialisation(Refinement(Clinica_r))==(skip);
  List_Initialisation(Refinement(Clinica_r))==(idConsultasr:=0 || cmr:={} || cpr:={} || csr:={} || chorar:={} || cdiar:={} || cmesr:={} || canor:={} || salasr:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Clinica_r))==(addMedicoClinica,removerMedicoClinica,addPacienteClinica,removerPacienteClinica,addSalaClinica,removerSalaClinica,agendarConsulta,desmarcarConsulta);
  List_Operations(Refinement(Clinica_r))==(addMedicoClinica,removerMedicoClinica,addPacienteClinica,removerPacienteClinica,addSalaClinica,removerSalaClinica,agendarConsulta,desmarcarConsulta)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Clinica_r),addMedicoClinica)==(mm);
  List_Input(Refinement(Clinica_r),removerMedicoClinica)==(mm);
  List_Input(Refinement(Clinica_r),addPacienteClinica)==(pp);
  List_Input(Refinement(Clinica_r),removerPacienteClinica)==(pp);
  List_Input(Refinement(Clinica_r),addSalaClinica)==(ss);
  List_Input(Refinement(Clinica_r),removerSalaClinica)==(ss);
  List_Input(Refinement(Clinica_r),agendarConsulta)==(mm,pp,hora,dia,mes,ano);
  List_Input(Refinement(Clinica_r),desmarcarConsulta)==(mm,pp,hora,dia,mes,ano)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Clinica_r),addMedicoClinica)==(?);
  List_Output(Refinement(Clinica_r),removerMedicoClinica)==(?);
  List_Output(Refinement(Clinica_r),addPacienteClinica)==(?);
  List_Output(Refinement(Clinica_r),removerPacienteClinica)==(?);
  List_Output(Refinement(Clinica_r),addSalaClinica)==(?);
  List_Output(Refinement(Clinica_r),removerSalaClinica)==(?);
  List_Output(Refinement(Clinica_r),agendarConsulta)==(identificador);
  List_Output(Refinement(Clinica_r),desmarcarConsulta)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Clinica_r),addMedicoClinica)==(addMedicoClinica(mm));
  List_Header(Refinement(Clinica_r),removerMedicoClinica)==(removerMedicoClinica(mm));
  List_Header(Refinement(Clinica_r),addPacienteClinica)==(addPacienteClinica(pp));
  List_Header(Refinement(Clinica_r),removerPacienteClinica)==(removerPacienteClinica(pp));
  List_Header(Refinement(Clinica_r),addSalaClinica)==(addSalaClinica(ss));
  List_Header(Refinement(Clinica_r),removerSalaClinica)==(removerSalaClinica(ss));
  List_Header(Refinement(Clinica_r),agendarConsulta)==(identificador <-- agendarConsulta(mm,pp,hora,dia,mes,ano));
  List_Header(Refinement(Clinica_r),desmarcarConsulta)==(desmarcarConsulta(mm,pp,hora,dia,mes,ano))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Clinica_r),addMedicoClinica)==(mm: MEDICOS & mm/:medicos);
  List_Precondition(Refinement(Clinica_r),addMedicoClinica)==(mm: MEDICOS & mm/:medicos & mm: MEDICOS & mm/:medicos);
  Own_Precondition(Refinement(Clinica_r),removerMedicoClinica)==(mm: MEDICOS & mm: medicos & mm/:ran(cmr));
  List_Precondition(Refinement(Clinica_r),removerMedicoClinica)==(mm: MEDICOS & mm: medicos & mm/:ran(cmr) & mm: MEDICOS & mm: medicos & mm/:ran(cm));
  Own_Precondition(Refinement(Clinica_r),addPacienteClinica)==(pp: PACIENTES & pp/:pacientes);
  List_Precondition(Refinement(Clinica_r),addPacienteClinica)==(pp: PACIENTES & pp/:pacientes & pp: PACIENTES & pp/:pacientes);
  Own_Precondition(Refinement(Clinica_r),removerPacienteClinica)==(pp: PACIENTES & pp: pacientes & pp/:ran(cpr));
  List_Precondition(Refinement(Clinica_r),removerPacienteClinica)==(pp: PACIENTES & pp: pacientes & pp/:ran(cpr) & pp: PACIENTES & pp: pacientes & pp/:ran(cp));
  Own_Precondition(Refinement(Clinica_r),addSalaClinica)==(ss: SALAS & ss/:salas);
  List_Precondition(Refinement(Clinica_r),addSalaClinica)==(ss: SALAS & ss/:salas & ss: SALAS & ss/:salas);
  Own_Precondition(Refinement(Clinica_r),removerSalaClinica)==(ss: SALAS & ss: salas & ss/:ran(csr));
  List_Precondition(Refinement(Clinica_r),removerSalaClinica)==(ss: SALAS & ss: salas & ss/:ran(csr) & ss: SALAS & ss: salas & ss/:ran(cs));
  Own_Precondition(Refinement(Clinica_r),agendarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm/:cmr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & pp/:cpr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})]);
  List_Precondition(Refinement(Clinica_r),agendarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm/:cmr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & pp/:cpr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm/:cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp/:cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})]);
  Own_Precondition(Refinement(Clinica_r),desmarcarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm: cmr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & pp: cpr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})]);
  List_Precondition(Refinement(Clinica_r),desmarcarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm: cmr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & pp: cpr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm: cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp: cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})])
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Clinica_r),desmarcarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm: cmr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & pp: cpr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm: cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp: cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] | @pos.(pos:=min(dom(cmr|>{mm})/\dom(cpr|>{pp})/\dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano}));cmr:=cmr/|\pos-1^(cmr\|/pos);cpr:=cpr/|\pos-1^(cpr\|/pos);chorar:=chorar/|\pos-1^(chorar\|/pos);cdiar:=cdiar/|\pos-1^(cdiar\|/pos);cmesr:=cmesr/|\pos-1^(cmesr\|/pos);canor:=canor/|\pos-1^(canor\|/pos);csr:=csr/|\pos-1^(csr\|/pos);idConsultasr:=idConsultasr-1));
  Expanded_List_Substitution(Refinement(Clinica_r),agendarConsulta)==(hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm/:cmr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & pp/:cpr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})] & hora: HORA & dia: DIA & mes: MES & ano: ANO & mm: MEDICOS & mm: medicos & pp: PACIENTES & pp: pacientes & mm/:cm[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] & pp/:cp[dom(chora|>{hora})/\dom(cdia|>{dia})/\dom(cmes|>{mes})/\dom(cano|>{ano})] | @sala.(sala:=min(dom(salasr|>>csr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})]));idConsultasr:=idConsultasr+1;identificador:=idConsultasr;cmr:=cmr<+{idConsultasr|->mm};cpr:=cpr<+{idConsultasr|->pp};chorar:=chorar<+{idConsultasr|->hora};cdiar:=cdiar<+{idConsultasr|->dia};cmesr:=cmesr<+{idConsultasr|->mes};canor:=canor<+{idConsultasr|->ano};csr:=csr<+{idConsultasr|->salasr(sala)}));
  Expanded_List_Substitution(Refinement(Clinica_r),removerSalaClinica)==(ss: SALAS & ss: salas & ss/:ran(csr) & ss: SALAS & ss: salas & ss/:ran(cs) | salasr:=salasr/|\salasr~(ss)-1^salasr\|/salasr~(ss);(ss: SALAS & ss: salas | salas:=salas-{ss}));
  Expanded_List_Substitution(Refinement(Clinica_r),addSalaClinica)==(ss: SALAS & ss/:salas & ss: SALAS & ss/:salas | (ss: SALAS & ss/:salas | salas:=salas\/{ss});salasr:=salasr<+{card(salasr)+1|->ss});
  Expanded_List_Substitution(Refinement(Clinica_r),removerPacienteClinica)==(pp: PACIENTES & pp: pacientes & pp/:ran(cpr) & pp: PACIENTES & pp: pacientes & pp/:ran(cp) & pp: PACIENTES & pp: pacientes | pacientes:=pacientes-{pp});
  Expanded_List_Substitution(Refinement(Clinica_r),addPacienteClinica)==(pp: PACIENTES & pp/:pacientes & pp: PACIENTES & pp/:pacientes & pp: PACIENTES & pp/:pacientes | pacientes:=pacientes\/{pp});
  Expanded_List_Substitution(Refinement(Clinica_r),removerMedicoClinica)==(mm: MEDICOS & mm: medicos & mm/:ran(cmr) & mm: MEDICOS & mm: medicos & mm/:ran(cm) & mm: MEDICOS & mm: medicos | medicos:=medicos-{mm});
  Expanded_List_Substitution(Refinement(Clinica_r),addMedicoClinica)==(mm: MEDICOS & mm/:medicos & mm: MEDICOS & mm/:medicos & mm: MEDICOS & mm/:medicos | medicos:=medicos\/{mm});
  List_Substitution(Refinement(Clinica_r),addMedicoClinica)==(addMedico(mm));
  List_Substitution(Refinement(Clinica_r),removerMedicoClinica)==(removerMedico(mm));
  List_Substitution(Refinement(Clinica_r),addPacienteClinica)==(addPaciente(pp));
  List_Substitution(Refinement(Clinica_r),removerPacienteClinica)==(removerPaciente(pp));
  List_Substitution(Refinement(Clinica_r),addSalaClinica)==(addSala(ss);salasr(card(salasr)+1):=ss);
  List_Substitution(Refinement(Clinica_r),removerSalaClinica)==(salasr:=salasr/|\salasr~(ss)-1^salasr\|/salasr~(ss);removerSala(ss));
  List_Substitution(Refinement(Clinica_r),agendarConsulta)==(VAR sala IN sala:=min(dom(salasr|>>csr[dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano})]));idConsultasr:=idConsultasr+1;identificador:=idConsultasr;cmr(idConsultasr):=mm;cpr(idConsultasr):=pp;chorar(idConsultasr):=hora;cdiar(idConsultasr):=dia;cmesr(idConsultasr):=mes;canor(idConsultasr):=ano;csr(idConsultasr):=salasr(sala) END);
  List_Substitution(Refinement(Clinica_r),desmarcarConsulta)==(VAR pos IN pos:=min(dom(cmr|>{mm})/\dom(cpr|>{pp})/\dom(chorar|>{hora})/\dom(cdiar|>{dia})/\dom(cmesr|>{mes})/\dom(canor|>{ano}));cmr:=cmr/|\pos-1^(cmr\|/pos);cpr:=cpr/|\pos-1^(cpr\|/pos);chorar:=chorar/|\pos-1^(chorar\|/pos);cdiar:=cdiar/|\pos-1^(cdiar\|/pos);cmesr:=cmesr/|\pos-1^(cmesr\|/pos);canor:=canor/|\pos-1^(canor\|/pos);csr:=csr/|\pos-1^(csr\|/pos);idConsultasr:=idConsultasr-1 END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Clinica_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Clinica_r),Machine(Medico))==(?);
  List_Instanciated_Parameters(Refinement(Clinica_r),Machine(Paciente))==(?);
  List_Instanciated_Parameters(Refinement(Clinica_r),Machine(Sala))==(?);
  List_Instanciated_Parameters(Refinement(Clinica_r),Machine(Capacidade))==(?);
  List_Instanciated_Parameters(Refinement(Clinica_r),Machine(Timefields))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Clinica_r),Machine(Sala))==(btrue);
  List_Constraints(Refinement(Clinica_r))==(btrue);
  List_Context_Constraints(Refinement(Clinica_r))==(btrue);
  List_Constraints(Refinement(Clinica_r),Machine(Paciente))==(btrue);
  List_Constraints(Refinement(Clinica_r),Machine(Medico))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Clinica_r))==(?);
  Inherited_List_Constants(Refinement(Clinica_r))==(?);
  List_Constants(Refinement(Clinica_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Clinica_r),SALAS)==(?);
  Context_List_Enumerated(Refinement(Clinica_r))==(?);
  Context_List_Defered(Refinement(Clinica_r))==(HORA,DIA,MES,ANO);
  Context_List_Sets(Refinement(Clinica_r))==(HORA,DIA,MES,ANO);
  List_Valuable_Sets(Refinement(Clinica_r))==(MEDICOS,PACIENTES,SALAS,MEDICOS,PACIENTES,SALAS);
  Inherited_List_Enumerated(Refinement(Clinica_r))==(?);
  Inherited_List_Defered(Refinement(Clinica_r))==(MEDICOS,PACIENTES,SALAS);
  Inherited_List_Sets(Refinement(Clinica_r))==(MEDICOS,PACIENTES,SALAS);
  List_Enumerated(Refinement(Clinica_r))==(?);
  List_Defered(Refinement(Clinica_r))==(?);
  List_Sets(Refinement(Clinica_r))==(?);
  Set_Definition(Refinement(Clinica_r),PACIENTES)==(?);
  Set_Definition(Refinement(Clinica_r),MEDICOS)==(?);
  Set_Definition(Refinement(Clinica_r),SALAS)==(?);
  Set_Definition(Refinement(Clinica_r),PACIENTES)==(?);
  Set_Definition(Refinement(Clinica_r),MEDICOS)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Clinica_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Clinica_r))==(?);
  List_HiddenConstants(Refinement(Clinica_r))==(?);
  External_List_HiddenConstants(Refinement(Clinica_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Clinica_r))==(MEDICOS: FIN(INTEGER) & not(MEDICOS = {}) & PACIENTES: FIN(INTEGER) & not(PACIENTES = {}) & SALAS: FIN(INTEGER) & not(SALAS = {}));
  Context_List_Properties(Refinement(Clinica_r))==(capacidade: NAT & capacidade = 5 & HORA: FIN(INTEGER) & not(HORA = {}) & DIA: FIN(INTEGER) & not(DIA = {}) & MES: FIN(INTEGER) & not(MES = {}) & ANO: FIN(INTEGER) & not(ANO = {}));
  Inherited_List_Properties(Refinement(Clinica_r))==(MEDICOS: FIN(INTEGER) & not(MEDICOS = {}) & PACIENTES: FIN(INTEGER) & not(PACIENTES = {}) & SALAS: FIN(INTEGER) & not(SALAS = {}));
  List_Properties(Refinement(Clinica_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Clinica_r),Machine(Timefields))==(?);
  Seen_Context_List_Enumerated(Refinement(Clinica_r))==(?);
  Seen_Context_List_Invariant(Refinement(Clinica_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(Clinica_r))==(btrue);
  Seen_Context_List_Properties(Refinement(Clinica_r))==(btrue);
  Seen_List_Constraints(Refinement(Clinica_r))==(btrue);
  Seen_List_Operations(Refinement(Clinica_r),Machine(Timefields))==(?);
  Seen_Expanded_List_Invariant(Refinement(Clinica_r),Machine(Timefields))==(btrue);
  Seen_Internal_List_Operations(Refinement(Clinica_r),Machine(Capacidade))==(?);
  Seen_List_Operations(Refinement(Clinica_r),Machine(Capacidade))==(?);
  Seen_Expanded_List_Invariant(Refinement(Clinica_r),Machine(Capacidade))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Clinica_r),addMedicoClinica)==(?);
  List_ANY_Var(Refinement(Clinica_r),removerMedicoClinica)==(?);
  List_ANY_Var(Refinement(Clinica_r),addPacienteClinica)==(?);
  List_ANY_Var(Refinement(Clinica_r),removerPacienteClinica)==(?);
  List_ANY_Var(Refinement(Clinica_r),addSalaClinica)==(?);
  List_ANY_Var(Refinement(Clinica_r),removerSalaClinica)==(?);
  List_ANY_Var(Refinement(Clinica_r),agendarConsulta)==(?);
  List_ANY_Var(Refinement(Clinica_r),desmarcarConsulta)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Clinica_r)) == (? | SALAS,PACIENTES,MEDICOS | salasr,canor,cmesr,cdiar,chorar,csr,cpr,cmr,idConsultasr | salas,pacientes,medicos | addMedicoClinica,removerMedicoClinica,addPacienteClinica,removerPacienteClinica,addSalaClinica,removerSalaClinica,agendarConsulta,desmarcarConsulta | ? | seen(Machine(Capacidade)),seen(Machine(Timefields)),included(Machine(Medico)),included(Machine(Paciente)),included(Machine(Sala)) | ? | Clinica_r);
  List_Of_HiddenCst_Ids(Refinement(Clinica_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Clinica_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Clinica_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Clinica_r)) == (?: ?);
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
  Sets(Refinement(Clinica_r)) == (Type(MEDICOS) == Cst(SetOf(atype(MEDICOS,"[MEDICOS","]MEDICOS")));Type(PACIENTES) == Cst(SetOf(atype(PACIENTES,"[PACIENTES","]PACIENTES")));Type(SALAS) == Cst(SetOf(atype(SALAS,"[SALAS","]SALAS")));Type(SALAS) == Cst(SetOf(atype(SALAS,"[SALAS","]SALAS")));Type(PACIENTES) == Cst(SetOf(atype(PACIENTES,"[PACIENTES","]PACIENTES")));Type(MEDICOS) == Cst(SetOf(atype(MEDICOS,"[MEDICOS","]MEDICOS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Clinica_r)) == (Type(medicos) == Mvl(SetOf(atype(MEDICOS,?,?)));Type(pacientes) == Mvl(SetOf(atype(PACIENTES,?,?)));Type(salas) == Mvl(SetOf(atype(SALAS,?,?)));Type(salasr) == Mvl(SetOf(btype(INTEGER,?,?)*atype(SALAS,?,?)));Type(canor) == Mvl(SetOf(btype(INTEGER,1,idConsultasr)*atype(ANO,"[ANO","]ANO")));Type(cmesr) == Mvl(SetOf(btype(INTEGER,1,idConsultasr)*atype(MES,"[MES","]MES")));Type(cdiar) == Mvl(SetOf(btype(INTEGER,1,idConsultasr)*atype(DIA,"[DIA","]DIA")));Type(chorar) == Mvl(SetOf(btype(INTEGER,1,idConsultasr)*atype(HORA,"[HORA","]HORA")));Type(csr) == Mvl(SetOf(btype(INTEGER,1,idConsultasr)*atype(SALAS,?,?)));Type(cpr) == Mvl(SetOf(btype(INTEGER,1,idConsultasr)*atype(PACIENTES,?,?)));Type(cmr) == Mvl(SetOf(btype(INTEGER,1,idConsultasr)*atype(MEDICOS,?,?)));Type(idConsultasr) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Clinica_r)) == (Type(desmarcarConsulta) == Cst(No_type,atype(MEDICOS,?,?)*atype(PACIENTES,?,?)*atype(HORA,?,?)*atype(DIA,?,?)*atype(MES,?,?)*atype(ANO,?,?));Type(agendarConsulta) == Cst(btype(INTEGER,?,?),atype(MEDICOS,?,?)*atype(PACIENTES,?,?)*atype(HORA,?,?)*atype(DIA,?,?)*atype(MES,?,?)*atype(ANO,?,?));Type(removerSalaClinica) == Cst(No_type,atype(SALAS,?,?));Type(addSalaClinica) == Cst(No_type,atype(SALAS,?,?));Type(removerPacienteClinica) == Cst(No_type,atype(PACIENTES,?,?));Type(addPacienteClinica) == Cst(No_type,atype(PACIENTES,?,?));Type(removerMedicoClinica) == Cst(No_type,atype(MEDICOS,?,?));Type(addMedicoClinica) == Cst(No_type,atype(MEDICOS,?,?)))
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
