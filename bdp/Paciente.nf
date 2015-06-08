Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Paciente))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Paciente))==(Machine(Paciente));
  Level(Machine(Paciente))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Paciente)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Paciente))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Paciente))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Paciente))==(?);
  List_Includes(Machine(Paciente))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Paciente))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Paciente))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Paciente))==(?);
  Context_List_Variables(Machine(Paciente))==(?);
  Abstract_List_Variables(Machine(Paciente))==(?);
  Local_List_Variables(Machine(Paciente))==(pacientes);
  List_Variables(Machine(Paciente))==(pacientes);
  External_List_Variables(Machine(Paciente))==(pacientes)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Paciente))==(?);
  Abstract_List_VisibleVariables(Machine(Paciente))==(?);
  External_List_VisibleVariables(Machine(Paciente))==(?);
  Expanded_List_VisibleVariables(Machine(Paciente))==(?);
  List_VisibleVariables(Machine(Paciente))==(?);
  Internal_List_VisibleVariables(Machine(Paciente))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Paciente))==(btrue);
  Gluing_List_Invariant(Machine(Paciente))==(btrue);
  Expanded_List_Invariant(Machine(Paciente))==(btrue);
  Abstract_List_Invariant(Machine(Paciente))==(btrue);
  Context_List_Invariant(Machine(Paciente))==(btrue);
  List_Invariant(Machine(Paciente))==(pacientes <: PACIENTES)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Paciente))==(btrue);
  Abstract_List_Assertions(Machine(Paciente))==(btrue);
  Context_List_Assertions(Machine(Paciente))==(btrue);
  List_Assertions(Machine(Paciente))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Paciente))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Paciente))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Paciente))==(pacientes:={});
  Context_List_Initialisation(Machine(Paciente))==(skip);
  List_Initialisation(Machine(Paciente))==(pacientes:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Paciente))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Paciente))==(btrue);
  List_Constraints(Machine(Paciente))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Paciente))==(addPaciente,removerPaciente);
  List_Operations(Machine(Paciente))==(addPaciente,removerPaciente)
END
&
THEORY ListInputX IS
  List_Input(Machine(Paciente),addPaciente)==(pp);
  List_Input(Machine(Paciente),removerPaciente)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Paciente),addPaciente)==(?);
  List_Output(Machine(Paciente),removerPaciente)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Paciente),addPaciente)==(addPaciente(pp));
  List_Header(Machine(Paciente),removerPaciente)==(removerPaciente(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Paciente),addPaciente)==(pp: PACIENTES & pp/:pacientes);
  List_Precondition(Machine(Paciente),removerPaciente)==(pp: PACIENTES & pp: pacientes)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Paciente),removerPaciente)==(pp: PACIENTES & pp: pacientes | pacientes:=pacientes-{pp});
  Expanded_List_Substitution(Machine(Paciente),addPaciente)==(pp: PACIENTES & pp/:pacientes | pacientes:=pacientes\/{pp});
  List_Substitution(Machine(Paciente),addPaciente)==(pacientes:=pacientes\/{pp});
  List_Substitution(Machine(Paciente),removerPaciente)==(pacientes:=pacientes-{pp})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Paciente))==(?);
  Inherited_List_Constants(Machine(Paciente))==(?);
  List_Constants(Machine(Paciente))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Paciente),PACIENTES)==(?);
  Context_List_Enumerated(Machine(Paciente))==(?);
  Context_List_Defered(Machine(Paciente))==(?);
  Context_List_Sets(Machine(Paciente))==(?);
  List_Valuable_Sets(Machine(Paciente))==(PACIENTES);
  Inherited_List_Enumerated(Machine(Paciente))==(?);
  Inherited_List_Defered(Machine(Paciente))==(?);
  Inherited_List_Sets(Machine(Paciente))==(?);
  List_Enumerated(Machine(Paciente))==(?);
  List_Defered(Machine(Paciente))==(PACIENTES);
  List_Sets(Machine(Paciente))==(PACIENTES)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Paciente))==(?);
  Expanded_List_HiddenConstants(Machine(Paciente))==(?);
  List_HiddenConstants(Machine(Paciente))==(?);
  External_List_HiddenConstants(Machine(Paciente))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Paciente))==(btrue);
  Context_List_Properties(Machine(Paciente))==(btrue);
  Inherited_List_Properties(Machine(Paciente))==(btrue);
  List_Properties(Machine(Paciente))==(PACIENTES: FIN(INTEGER) & not(PACIENTES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Paciente),addPaciente)==(?);
  List_ANY_Var(Machine(Paciente),removerPaciente)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Paciente)) == (PACIENTES | ? | pacientes | ? | addPaciente,removerPaciente | ? | ? | ? | Paciente);
  List_Of_HiddenCst_Ids(Machine(Paciente)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Paciente)) == (?);
  List_Of_VisibleVar_Ids(Machine(Paciente)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Paciente)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Paciente)) == (Type(PACIENTES) == Cst(SetOf(atype(PACIENTES,"[PACIENTES","]PACIENTES"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Paciente)) == (Type(pacientes) == Mvl(SetOf(atype(PACIENTES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Paciente)) == (Type(removerPaciente) == Cst(No_type,atype(PACIENTES,?,?));Type(addPaciente) == Cst(No_type,atype(PACIENTES,?,?)))
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
