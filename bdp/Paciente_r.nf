Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Paciente_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Paciente_r))==(Machine(Paciente));
  Level(Refinement(Paciente_r))==(1);
  Upper_Level(Refinement(Paciente_r))==(Machine(Paciente))
END
&
THEORY LoadedStructureX IS
  Refinement(Paciente_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Paciente_r))==(Answer)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Paciente_r))==(?);
  List_Includes(Refinement(Paciente_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Paciente_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Paciente_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Paciente_r))==(?);
  Context_List_Variables(Refinement(Paciente_r))==(?);
  Abstract_List_Variables(Refinement(Paciente_r))==(pacientes);
  Local_List_Variables(Refinement(Paciente_r))==(pacientesr);
  List_Variables(Refinement(Paciente_r))==(pacientesr);
  External_List_Variables(Refinement(Paciente_r))==(pacientesr)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Paciente_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Paciente_r))==(?);
  External_List_VisibleVariables(Refinement(Paciente_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Paciente_r))==(?);
  List_VisibleVariables(Refinement(Paciente_r))==(?);
  Internal_List_VisibleVariables(Refinement(Paciente_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Paciente_r))==(pacientesr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Paciente_r))==(btrue);
  Expanded_List_Invariant(Refinement(Paciente_r))==(btrue);
  Abstract_List_Invariant(Refinement(Paciente_r))==(pacientes <: PACIENTES);
  Context_List_Invariant(Refinement(Paciente_r))==(btrue);
  List_Invariant(Refinement(Paciente_r))==(pacientesr: PACIENTES --> ANSWER & pacientes = dom(pacientesr|>{yes}))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Paciente_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Paciente_r))==(btrue);
  Abstract_List_Assertions(Refinement(Paciente_r))==(btrue);
  Context_List_Assertions(Refinement(Paciente_r))==(btrue);
  List_Assertions(Refinement(Paciente_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Paciente_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Paciente_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Paciente_r))==(pacientesr:=PACIENTES*{no});
  Context_List_Initialisation(Refinement(Paciente_r))==(skip);
  List_Initialisation(Refinement(Paciente_r))==(pacientesr:=PACIENTES*{no})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Paciente_r))==(addPaciente,removerPaciente);
  List_Operations(Refinement(Paciente_r))==(addPaciente,removerPaciente)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Paciente_r),addPaciente)==(pp);
  List_Input(Refinement(Paciente_r),removerPaciente)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Paciente_r),addPaciente)==(?);
  List_Output(Refinement(Paciente_r),removerPaciente)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Paciente_r),addPaciente)==(addPaciente(pp));
  List_Header(Refinement(Paciente_r),removerPaciente)==(removerPaciente(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Paciente_r),addPaciente)==(pp: PACIENTES & pacientesr(pp) = no);
  List_Precondition(Refinement(Paciente_r),addPaciente)==(pp: PACIENTES & pacientesr(pp) = no & pp: PACIENTES & pp/:pacientes);
  Own_Precondition(Refinement(Paciente_r),removerPaciente)==(pp: PACIENTES);
  List_Precondition(Refinement(Paciente_r),removerPaciente)==(pp: PACIENTES & pp: PACIENTES & pp: pacientes)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Paciente_r),removerPaciente)==(pp: PACIENTES & pp: PACIENTES & pp: pacientes | pacientesr(pp) = yes ==> pacientesr:=pacientesr<+{pp|->no} [] not(pacientesr(pp) = yes) ==> skip);
  Expanded_List_Substitution(Refinement(Paciente_r),addPaciente)==(pp: PACIENTES & pacientesr(pp) = no & pp: PACIENTES & pp/:pacientes | pacientesr:=pacientesr<+{pp|->yes});
  List_Substitution(Refinement(Paciente_r),addPaciente)==(pacientesr(pp):=yes);
  List_Substitution(Refinement(Paciente_r),removerPaciente)==(IF pacientesr(pp) = yes THEN pacientesr(pp):=no END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Paciente_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Paciente_r),Machine(Answer))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Paciente_r))==(btrue);
  List_Context_Constraints(Refinement(Paciente_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Paciente_r))==(?);
  Inherited_List_Constants(Refinement(Paciente_r))==(?);
  List_Constants(Refinement(Paciente_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Paciente_r),PACIENTES)==(?);
  Context_List_Enumerated(Refinement(Paciente_r))==(ANSWER);
  Context_List_Defered(Refinement(Paciente_r))==(?);
  Context_List_Sets(Refinement(Paciente_r))==(ANSWER);
  List_Valuable_Sets(Refinement(Paciente_r))==(PACIENTES);
  Inherited_List_Enumerated(Refinement(Paciente_r))==(?);
  Inherited_List_Defered(Refinement(Paciente_r))==(PACIENTES);
  Inherited_List_Sets(Refinement(Paciente_r))==(PACIENTES);
  List_Enumerated(Refinement(Paciente_r))==(?);
  List_Defered(Refinement(Paciente_r))==(?);
  List_Sets(Refinement(Paciente_r))==(?);
  Set_Definition(Refinement(Paciente_r),ANSWER)==({yes,no})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Paciente_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Paciente_r))==(?);
  List_HiddenConstants(Refinement(Paciente_r))==(?);
  External_List_HiddenConstants(Refinement(Paciente_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Paciente_r))==(PACIENTES: FIN(INTEGER) & not(PACIENTES = {}));
  Context_List_Properties(Refinement(Paciente_r))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}));
  Inherited_List_Properties(Refinement(Paciente_r))==(btrue);
  List_Properties(Refinement(Paciente_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Paciente_r),Machine(Answer))==(?);
  Seen_Context_List_Enumerated(Refinement(Paciente_r))==(?);
  Seen_Context_List_Invariant(Refinement(Paciente_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(Paciente_r))==(btrue);
  Seen_Context_List_Properties(Refinement(Paciente_r))==(btrue);
  Seen_List_Constraints(Refinement(Paciente_r))==(btrue);
  Seen_List_Operations(Refinement(Paciente_r),Machine(Answer))==(?);
  Seen_Expanded_List_Invariant(Refinement(Paciente_r),Machine(Answer))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Paciente_r),addPaciente)==(?);
  List_ANY_Var(Refinement(Paciente_r),removerPaciente)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Paciente_r)) == (? | ? | pacientesr | ? | addPaciente,removerPaciente | ? | seen(Machine(Answer)) | ? | Paciente_r);
  List_Of_HiddenCst_Ids(Refinement(Paciente_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Paciente_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Paciente_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Paciente_r)) == (?: ?);
  List_Of_Ids(Machine(Answer)) == (ANSWER,yes,no | ? | ? | ? | ? | ? | ? | ? | Answer);
  List_Of_HiddenCst_Ids(Machine(Answer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Answer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Answer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Answer)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Paciente_r)) == (Type(PACIENTES) == Cst(SetOf(atype(PACIENTES,"[PACIENTES","]PACIENTES"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Paciente_r)) == (Type(pacientesr) == Mvl(SetOf(atype(PACIENTES,"[PACIENTES","]PACIENTES")*etype(ANSWER,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Paciente_r)) == (Type(removerPaciente) == Cst(No_type,atype(PACIENTES,?,?));Type(addPaciente) == Cst(No_type,atype(PACIENTES,?,?)))
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
