Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Horario))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Horario))==(Machine(Horario));
  Level(Machine(Horario))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Horario)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Horario))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Horario))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Horario))==(?);
  List_Includes(Machine(Horario))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Horario))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Horario))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Horario))==(?);
  Context_List_Variables(Machine(Horario))==(?);
  Abstract_List_Variables(Machine(Horario))==(?);
  Local_List_Variables(Machine(Horario))==(?);
  List_Variables(Machine(Horario))==(?);
  External_List_Variables(Machine(Horario))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Horario))==(?);
  Abstract_List_VisibleVariables(Machine(Horario))==(?);
  External_List_VisibleVariables(Machine(Horario))==(?);
  Expanded_List_VisibleVariables(Machine(Horario))==(?);
  List_VisibleVariables(Machine(Horario))==(?);
  Internal_List_VisibleVariables(Machine(Horario))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Horario))==(btrue);
  Gluing_List_Invariant(Machine(Horario))==(btrue);
  Expanded_List_Invariant(Machine(Horario))==(btrue);
  Abstract_List_Invariant(Machine(Horario))==(btrue);
  Context_List_Invariant(Machine(Horario))==(btrue);
  List_Invariant(Machine(Horario))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Horario))==(btrue);
  Abstract_List_Assertions(Machine(Horario))==(btrue);
  Context_List_Assertions(Machine(Horario))==(btrue);
  List_Assertions(Machine(Horario))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Horario))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Horario))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Horario))==(skip);
  Context_List_Initialisation(Machine(Horario))==(skip);
  List_Initialisation(Machine(Horario))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Horario))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Horario))==(btrue);
  List_Constraints(Machine(Horario))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Horario))==(?);
  List_Operations(Machine(Horario))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Horario))==(?);
  Inherited_List_Constants(Machine(Horario))==(?);
  List_Constants(Machine(Horario))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Horario),HORARIO)==(?);
  Context_List_Enumerated(Machine(Horario))==(?);
  Context_List_Defered(Machine(Horario))==(?);
  Context_List_Sets(Machine(Horario))==(?);
  List_Valuable_Sets(Machine(Horario))==(HORARIO);
  Inherited_List_Enumerated(Machine(Horario))==(?);
  Inherited_List_Defered(Machine(Horario))==(?);
  Inherited_List_Sets(Machine(Horario))==(?);
  List_Enumerated(Machine(Horario))==(?);
  List_Defered(Machine(Horario))==(HORARIO);
  List_Sets(Machine(Horario))==(HORARIO)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Horario))==(?);
  Expanded_List_HiddenConstants(Machine(Horario))==(?);
  List_HiddenConstants(Machine(Horario))==(?);
  External_List_HiddenConstants(Machine(Horario))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Horario))==(btrue);
  Context_List_Properties(Machine(Horario))==(btrue);
  Inherited_List_Properties(Machine(Horario))==(btrue);
  List_Properties(Machine(Horario))==(HORARIO: FIN(INTEGER) & not(HORARIO = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Horario)) == (HORARIO | ? | ? | ? | ? | ? | ? | ? | Horario);
  List_Of_HiddenCst_Ids(Machine(Horario)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Horario)) == (?);
  List_Of_VisibleVar_Ids(Machine(Horario)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Horario)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Horario)) == (Type(HORARIO) == Cst(SetOf(atype(HORARIO,"[HORARIO","]HORARIO"))))
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
