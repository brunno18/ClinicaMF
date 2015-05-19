Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Quantidade))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Quantidade))==(Machine(Quantidade));
  Level(Machine(Quantidade))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Quantidade)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Quantidade))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Quantidade))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Quantidade))==(?);
  List_Includes(Machine(Quantidade))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Quantidade))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Quantidade))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Quantidade))==(?);
  Context_List_Variables(Machine(Quantidade))==(?);
  Abstract_List_Variables(Machine(Quantidade))==(?);
  Local_List_Variables(Machine(Quantidade))==(?);
  List_Variables(Machine(Quantidade))==(?);
  External_List_Variables(Machine(Quantidade))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Quantidade))==(?);
  Abstract_List_VisibleVariables(Machine(Quantidade))==(?);
  External_List_VisibleVariables(Machine(Quantidade))==(?);
  Expanded_List_VisibleVariables(Machine(Quantidade))==(?);
  List_VisibleVariables(Machine(Quantidade))==(?);
  Internal_List_VisibleVariables(Machine(Quantidade))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Quantidade))==(btrue);
  Gluing_List_Invariant(Machine(Quantidade))==(btrue);
  Expanded_List_Invariant(Machine(Quantidade))==(btrue);
  Abstract_List_Invariant(Machine(Quantidade))==(btrue);
  Context_List_Invariant(Machine(Quantidade))==(btrue);
  List_Invariant(Machine(Quantidade))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Quantidade))==(btrue);
  Abstract_List_Assertions(Machine(Quantidade))==(btrue);
  Context_List_Assertions(Machine(Quantidade))==(btrue);
  List_Assertions(Machine(Quantidade))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Quantidade))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Quantidade))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Quantidade))==(skip);
  Context_List_Initialisation(Machine(Quantidade))==(skip);
  List_Initialisation(Machine(Quantidade))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Quantidade))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Quantidade))==(btrue);
  List_Constraints(Machine(Quantidade))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Quantidade))==(?);
  List_Operations(Machine(Quantidade))==(?)
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
  List_Valuable_Constants(Machine(Quantidade))==(quantidade);
  Inherited_List_Constants(Machine(Quantidade))==(?);
  List_Constants(Machine(Quantidade))==(quantidade)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Quantidade))==(?);
  Context_List_Defered(Machine(Quantidade))==(?);
  Context_List_Sets(Machine(Quantidade))==(?);
  List_Valuable_Sets(Machine(Quantidade))==(?);
  Inherited_List_Enumerated(Machine(Quantidade))==(?);
  Inherited_List_Defered(Machine(Quantidade))==(?);
  Inherited_List_Sets(Machine(Quantidade))==(?);
  List_Enumerated(Machine(Quantidade))==(?);
  List_Defered(Machine(Quantidade))==(?);
  List_Sets(Machine(Quantidade))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Quantidade))==(?);
  Expanded_List_HiddenConstants(Machine(Quantidade))==(?);
  List_HiddenConstants(Machine(Quantidade))==(?);
  External_List_HiddenConstants(Machine(Quantidade))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Quantidade))==(btrue);
  Context_List_Properties(Machine(Quantidade))==(btrue);
  Inherited_List_Properties(Machine(Quantidade))==(btrue);
  List_Properties(Machine(Quantidade))==(quantidade = 5)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Quantidade)) == (quantidade | ? | ? | ? | ? | ? | ? | ? | Quantidade);
  List_Of_HiddenCst_Ids(Machine(Quantidade)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Quantidade)) == (quantidade);
  List_Of_VisibleVar_Ids(Machine(Quantidade)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Quantidade)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Quantidade)) == (Type(quantidade) == Cst(btype(INTEGER,?,?)))
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
