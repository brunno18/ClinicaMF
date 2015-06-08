Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Answer))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Answer))==(Machine(Answer));
  Level(Machine(Answer))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Answer)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Answer))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Answer))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Answer))==(?);
  List_Includes(Machine(Answer))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Answer))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Answer))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Answer))==(?);
  Context_List_Variables(Machine(Answer))==(?);
  Abstract_List_Variables(Machine(Answer))==(?);
  Local_List_Variables(Machine(Answer))==(?);
  List_Variables(Machine(Answer))==(?);
  External_List_Variables(Machine(Answer))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Answer))==(?);
  Abstract_List_VisibleVariables(Machine(Answer))==(?);
  External_List_VisibleVariables(Machine(Answer))==(?);
  Expanded_List_VisibleVariables(Machine(Answer))==(?);
  List_VisibleVariables(Machine(Answer))==(?);
  Internal_List_VisibleVariables(Machine(Answer))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Answer))==(btrue);
  Gluing_List_Invariant(Machine(Answer))==(btrue);
  Expanded_List_Invariant(Machine(Answer))==(btrue);
  Abstract_List_Invariant(Machine(Answer))==(btrue);
  Context_List_Invariant(Machine(Answer))==(btrue);
  List_Invariant(Machine(Answer))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Answer))==(btrue);
  Abstract_List_Assertions(Machine(Answer))==(btrue);
  Context_List_Assertions(Machine(Answer))==(btrue);
  List_Assertions(Machine(Answer))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Answer))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Answer))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Answer))==(skip);
  Context_List_Initialisation(Machine(Answer))==(skip);
  List_Initialisation(Machine(Answer))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Answer))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Answer))==(btrue);
  List_Constraints(Machine(Answer))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Answer))==(?);
  List_Operations(Machine(Answer))==(?)
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
  List_Valuable_Constants(Machine(Answer))==(?);
  Inherited_List_Constants(Machine(Answer))==(?);
  List_Constants(Machine(Answer))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Answer),ANSWER)==({yes,no});
  Context_List_Enumerated(Machine(Answer))==(?);
  Context_List_Defered(Machine(Answer))==(?);
  Context_List_Sets(Machine(Answer))==(?);
  List_Valuable_Sets(Machine(Answer))==(?);
  Inherited_List_Enumerated(Machine(Answer))==(?);
  Inherited_List_Defered(Machine(Answer))==(?);
  Inherited_List_Sets(Machine(Answer))==(?);
  List_Enumerated(Machine(Answer))==(ANSWER);
  List_Defered(Machine(Answer))==(?);
  List_Sets(Machine(Answer))==(ANSWER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Answer))==(?);
  Expanded_List_HiddenConstants(Machine(Answer))==(?);
  List_HiddenConstants(Machine(Answer))==(?);
  External_List_HiddenConstants(Machine(Answer))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Answer))==(btrue);
  Context_List_Properties(Machine(Answer))==(btrue);
  Inherited_List_Properties(Machine(Answer))==(btrue);
  List_Properties(Machine(Answer))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Answer)) == (ANSWER,yes,no | ? | ? | ? | ? | ? | ? | ? | Answer);
  List_Of_HiddenCst_Ids(Machine(Answer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Answer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Answer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Answer)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Answer)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Answer)) == (Type(yes) == Cst(etype(ANSWER,0,1));Type(no) == Cst(etype(ANSWER,0,1)))
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
