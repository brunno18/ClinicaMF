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
  List_Sees(Machine(Clinica))==(Quantidade)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Clinica))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Clinica))==(?);
  List_Includes(Machine(Clinica))==(?)
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
  Local_List_Variables(Machine(Clinica))==(salasDisponiveis,salas,pacientes,medicos,cs,ch,cp,cm);
  List_Variables(Machine(Clinica))==(salasDisponiveis,salas,pacientes,medicos,cs,ch,cp,cm);
  External_List_Variables(Machine(Clinica))==(salasDisponiveis,salas,pacientes,medicos,cs,ch,cp,cm)
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
  Expanded_List_Invariant(Machine(Clinica))==(btrue);
  Abstract_List_Invariant(Machine(Clinica))==(btrue);
  Context_List_Invariant(Machine(Clinica))==(btrue);
  List_Invariant(Machine(Clinica))==(medicos <: MEDICOS & pacientes <: PACIENTES & salas <: SALAS & salasDisponiveis: NAT & cm: NAT1 --> medicos & cp: NAT1 --> pacientes & cs: NAT1 --> salas & ch: NAT1 --> NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Clinica))==(btrue);
  Abstract_List_Assertions(Machine(Clinica))==(btrue);
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
  Expanded_List_Initialisation(Machine(Clinica))==(cm,cp,cs,ch,medicos,pacientes,salas,salasDisponiveis:={},{},{},{},{},{},{},quantidade);
  Context_List_Initialisation(Machine(Clinica))==(skip);
  List_Initialisation(Machine(Clinica))==(cm:={} || cp:={} || cs:={} || ch:={} || medicos:={} || pacientes:={} || salas:={} || salasDisponiveis:=quantidade)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Clinica))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Clinica),Machine(Quantidade))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Clinica))==(btrue);
  List_Constraints(Machine(Clinica))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Clinica))==(addMedico,removerMedico,addPaciente,removerPaciente,addSala,removerSala);
  List_Operations(Machine(Clinica))==(addMedico,removerMedico,addPaciente,removerPaciente,addSala,removerSala)
END
&
THEORY ListInputX IS
  List_Input(Machine(Clinica),addMedico)==(mm);
  List_Input(Machine(Clinica),removerMedico)==(mm);
  List_Input(Machine(Clinica),addPaciente)==(pp);
  List_Input(Machine(Clinica),removerPaciente)==(pp);
  List_Input(Machine(Clinica),addSala)==(ss);
  List_Input(Machine(Clinica),removerSala)==(ss)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Clinica),addMedico)==(?);
  List_Output(Machine(Clinica),removerMedico)==(?);
  List_Output(Machine(Clinica),addPaciente)==(?);
  List_Output(Machine(Clinica),removerPaciente)==(?);
  List_Output(Machine(Clinica),addSala)==(?);
  List_Output(Machine(Clinica),removerSala)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Clinica),addMedico)==(addMedico(mm));
  List_Header(Machine(Clinica),removerMedico)==(removerMedico(mm));
  List_Header(Machine(Clinica),addPaciente)==(addPaciente(pp));
  List_Header(Machine(Clinica),removerPaciente)==(removerPaciente(pp));
  List_Header(Machine(Clinica),addSala)==(addSala(ss));
  List_Header(Machine(Clinica),removerSala)==(removerSala(ss))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Clinica),addMedico)==(mm: MEDICOS & mm/:medicos);
  List_Precondition(Machine(Clinica),removerMedico)==(mm: medicos & mm/:ran(cm));
  List_Precondition(Machine(Clinica),addPaciente)==(pp: PACIENTES & pp/:pacientes);
  List_Precondition(Machine(Clinica),removerPaciente)==(pp: pacientes & pp/:ran(cp));
  List_Precondition(Machine(Clinica),addSala)==(ss: SALAS & ss/:salas);
  List_Precondition(Machine(Clinica),removerSala)==(ss: salas & ss/:ran(cs))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Clinica),removerSala)==(ss: salas & ss/:ran(cs) | salas:=salas-{ss});
  Expanded_List_Substitution(Machine(Clinica),addSala)==(ss: SALAS & ss/:salas | salas:=salas\/{ss});
  Expanded_List_Substitution(Machine(Clinica),removerPaciente)==(pp: pacientes & pp/:ran(cp) | pacientes:=pacientes-{pp});
  Expanded_List_Substitution(Machine(Clinica),addPaciente)==(pp: PACIENTES & pp/:pacientes | pacientes:=pacientes\/{pp});
  Expanded_List_Substitution(Machine(Clinica),removerMedico)==(mm: medicos & mm/:ran(cm) | medicos:=medicos-{mm});
  Expanded_List_Substitution(Machine(Clinica),addMedico)==(mm: MEDICOS & mm/:medicos | medicos:=medicos\/{mm});
  List_Substitution(Machine(Clinica),addMedico)==(medicos:=medicos\/{mm});
  List_Substitution(Machine(Clinica),removerMedico)==(medicos:=medicos-{mm});
  List_Substitution(Machine(Clinica),addPaciente)==(pacientes:=pacientes\/{pp});
  List_Substitution(Machine(Clinica),removerPaciente)==(pacientes:=pacientes-{pp});
  List_Substitution(Machine(Clinica),addSala)==(salas:=salas\/{ss});
  List_Substitution(Machine(Clinica),removerSala)==(salas:=salas-{ss})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Clinica))==(?);
  Inherited_List_Constants(Machine(Clinica))==(?);
  List_Constants(Machine(Clinica))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Clinica),MEDICOS)==(?);
  Context_List_Enumerated(Machine(Clinica))==(?);
  Context_List_Defered(Machine(Clinica))==(?);
  Context_List_Sets(Machine(Clinica))==(?);
  List_Valuable_Sets(Machine(Clinica))==(MEDICOS,PACIENTES,SALAS);
  Inherited_List_Enumerated(Machine(Clinica))==(?);
  Inherited_List_Defered(Machine(Clinica))==(?);
  Inherited_List_Sets(Machine(Clinica))==(?);
  List_Enumerated(Machine(Clinica))==(?);
  List_Defered(Machine(Clinica))==(MEDICOS,PACIENTES,SALAS);
  List_Sets(Machine(Clinica))==(MEDICOS,PACIENTES,SALAS);
  Set_Definition(Machine(Clinica),PACIENTES)==(?);
  Set_Definition(Machine(Clinica),SALAS)==(?)
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
  Context_List_Properties(Machine(Clinica))==(quantidade = 5);
  Inherited_List_Properties(Machine(Clinica))==(btrue);
  List_Properties(Machine(Clinica))==(MEDICOS: FIN(INTEGER) & not(MEDICOS = {}) & PACIENTES: FIN(INTEGER) & not(PACIENTES = {}) & SALAS: FIN(INTEGER) & not(SALAS = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Clinica),Machine(Quantidade))==(?);
  Seen_Context_List_Enumerated(Machine(Clinica))==(?);
  Seen_Context_List_Invariant(Machine(Clinica))==(btrue);
  Seen_Context_List_Assertions(Machine(Clinica))==(btrue);
  Seen_Context_List_Properties(Machine(Clinica))==(btrue);
  Seen_List_Constraints(Machine(Clinica))==(btrue);
  Seen_List_Operations(Machine(Clinica),Machine(Quantidade))==(?);
  Seen_Expanded_List_Invariant(Machine(Clinica),Machine(Quantidade))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Clinica),addMedico)==(?);
  List_ANY_Var(Machine(Clinica),removerMedico)==(?);
  List_ANY_Var(Machine(Clinica),addPaciente)==(?);
  List_ANY_Var(Machine(Clinica),removerPaciente)==(?);
  List_ANY_Var(Machine(Clinica),addSala)==(?);
  List_ANY_Var(Machine(Clinica),removerSala)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Clinica)) == (MEDICOS,PACIENTES,SALAS | ? | salasDisponiveis,salas,pacientes,medicos,cs,ch,cp,cm | ? | addMedico,removerMedico,addPaciente,removerPaciente,addSala,removerSala | ? | seen(Machine(Quantidade)) | ? | Clinica);
  List_Of_HiddenCst_Ids(Machine(Clinica)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Clinica)) == (?);
  List_Of_VisibleVar_Ids(Machine(Clinica)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Clinica)) == (?: ?);
  List_Of_Ids(Machine(Quantidade)) == (quantidade | ? | ? | ? | ? | ? | ? | ? | Quantidade);
  List_Of_HiddenCst_Ids(Machine(Quantidade)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Quantidade)) == (quantidade);
  List_Of_VisibleVar_Ids(Machine(Quantidade)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Quantidade)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Clinica)) == (Type(MEDICOS) == Cst(SetOf(atype(MEDICOS,"[MEDICOS","]MEDICOS")));Type(PACIENTES) == Cst(SetOf(atype(PACIENTES,"[PACIENTES","]PACIENTES")));Type(SALAS) == Cst(SetOf(atype(SALAS,"[SALAS","]SALAS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Clinica)) == (Type(salasDisponiveis) == Mvl(btype(INTEGER,?,?));Type(salas) == Mvl(SetOf(atype(SALAS,?,?)));Type(pacientes) == Mvl(SetOf(atype(PACIENTES,?,?)));Type(medicos) == Mvl(SetOf(atype(MEDICOS,?,?)));Type(cs) == Mvl(SetOf(btype(INTEGER,1,MAXINT)*atype(SALAS,?,?)));Type(ch) == Mvl(SetOf(btype(INTEGER,1,MAXINT)*btype(INTEGER,0,MAXINT)));Type(cp) == Mvl(SetOf(btype(INTEGER,1,MAXINT)*atype(PACIENTES,?,?)));Type(cm) == Mvl(SetOf(btype(INTEGER,1,MAXINT)*atype(MEDICOS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Clinica)) == (Type(removerSala) == Cst(No_type,atype(SALAS,?,?));Type(addSala) == Cst(No_type,atype(SALAS,?,?));Type(removerPaciente) == Cst(No_type,atype(PACIENTES,?,?));Type(addPaciente) == Cst(No_type,atype(PACIENTES,?,?));Type(removerMedico) == Cst(No_type,atype(MEDICOS,?,?));Type(addMedico) == Cst(No_type,atype(MEDICOS,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == KO;
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
