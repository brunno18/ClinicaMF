Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Capacidade))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Capacidade))==(Machine(Capacidade));
  Level(Machine(Capacidade))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Capacidade)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Capacidade))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Capacidade))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Capacidade))==(?);
  List_Includes(Machine(Capacidade))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Capacidade))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Capacidade))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Capacidade))==(?);
  Context_List_Variables(Machine(Capacidade))==(?);
  Abstract_List_Variables(Machine(Capacidade))==(?);
  Local_List_Variables(Machine(Capacidade))==(?);
  List_Variables(Machine(Capacidade))==(?);
  External_List_Variables(Machine(Capacidade))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Capacidade))==(?);
  Abstract_List_VisibleVariables(Machine(Capacidade))==(?);
  External_List_VisibleVariables(Machine(Capacidade))==(?);
  Expanded_List_VisibleVariables(Machine(Capacidade))==(?);
  List_VisibleVariables(Machine(Capacidade))==(?);
  Internal_List_VisibleVariables(Machine(Capacidade))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Capacidade))==(btrue);
  Gluing_List_Invariant(Machine(Capacidade))==(btrue);
  Expanded_List_Invariant(Machine(Capacidade))==(btrue);
  Abstract_List_Invariant(Machine(Capacidade))==(btrue);
  Context_List_Invariant(Machine(Capacidade))==(btrue);
  List_Invariant(Machine(Capacidade))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Capacidade))==(btrue);
  Abstract_List_Assertions(Machine(Capacidade))==(btrue);
  Context_List_Assertions(Machine(Capacidade))==(btrue);
  List_Assertions(Machine(Capacidade))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Capacidade))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Capacidade))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Capacidade))==(skip);
  Context_List_Initialisation(Machine(Capacidade))==(skip);
  List_Initialisation(Machine(Capacidade))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Capacidade))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Capacidade))==(btrue);
  List_Constraints(Machine(Capacidade))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Capacidade))==(?);
  List_Operations(Machine(Capacidade))==(?)
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
  List_Valuable_Constants(Machine(Capacidade))==(capacidade);
  Inherited_List_Constants(Machine(Capacidade))==(?);
  List_Constants(Machine(Capacidade))==(capacidade)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Capacidade))==(?);
  Context_List_Defered(Machine(Capacidade))==(?);
  Context_List_Sets(Machine(Capacidade))==(?);
  List_Valuable_Sets(Machine(Capacidade))==(?);
  Inherited_List_Enumerated(Machine(Capacidade))==(?);
  Inherited_List_Defered(Machine(Capacidade))==(?);
  Inherited_List_Sets(Machine(Capacidade))==(?);
  List_Enumerated(Machine(Capacidade))==(?);
  List_Defered(Machine(Capacidade))==(?);
  List_Sets(Machine(Capacidade))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Capacidade))==(?);
  Expanded_List_HiddenConstants(Machine(Capacidade))==(?);
  List_HiddenConstants(Machine(Capacidade))==(?);
  External_List_HiddenConstants(Machine(Capacidade))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Capacidade))==(btrue);
  Context_List_Properties(Machine(Capacidade))==(btrue);
  Inherited_List_Properties(Machine(Capacidade))==(btrue);
  List_Properties(Machine(Capacidade))==(capacidade: NAT & capacidade = 5)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Capacidade)) == (capacidade | ? | ? | ? | ? | ? | ? | ? | Capacidade);
  List_Of_HiddenCst_Ids(Machine(Capacidade)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Capacidade)) == (capacidade);
  List_Of_VisibleVar_Ids(Machine(Capacidade)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Capacidade)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Capacidade)) == (Type(capacidade) == Cst(btype(INTEGER,?,?)))
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
