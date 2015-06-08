Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(TimefieldsI))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(TimefieldsI))==(Machine(Timefields));
  Level(Implementation(TimefieldsI))==(1);
  Upper_Level(Implementation(TimefieldsI))==(Machine(Timefields))
END
&
THEORY LoadedStructureX IS
  Implementation(TimefieldsI)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(TimefieldsI))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(TimefieldsI))==(?);
  Inherited_List_Includes(Implementation(TimefieldsI))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(TimefieldsI))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(TimefieldsI))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(TimefieldsI))==(?);
  Context_List_Variables(Implementation(TimefieldsI))==(?);
  Abstract_List_Variables(Implementation(TimefieldsI))==(?);
  Local_List_Variables(Implementation(TimefieldsI))==(?);
  List_Variables(Implementation(TimefieldsI))==(?);
  External_List_Variables(Implementation(TimefieldsI))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(TimefieldsI))==(?);
  Abstract_List_VisibleVariables(Implementation(TimefieldsI))==(?);
  External_List_VisibleVariables(Implementation(TimefieldsI))==(?);
  Expanded_List_VisibleVariables(Implementation(TimefieldsI))==(?);
  List_VisibleVariables(Implementation(TimefieldsI))==(?);
  Internal_List_VisibleVariables(Implementation(TimefieldsI))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(TimefieldsI))==(btrue);
  Expanded_List_Invariant(Implementation(TimefieldsI))==(btrue);
  Abstract_List_Invariant(Implementation(TimefieldsI))==(btrue);
  Context_List_Invariant(Implementation(TimefieldsI))==(btrue);
  List_Invariant(Implementation(TimefieldsI))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(TimefieldsI))==(btrue);
  Abstract_List_Assertions(Implementation(TimefieldsI))==(btrue);
  Context_List_Assertions(Implementation(TimefieldsI))==(btrue);
  List_Assertions(Implementation(TimefieldsI))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(TimefieldsI))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(TimefieldsI))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(TimefieldsI))==(skip);
  Context_List_Initialisation(Implementation(TimefieldsI))==(skip);
  List_Initialisation(Implementation(TimefieldsI))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(TimefieldsI))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(TimefieldsI))==(btrue);
  List_Context_Constraints(Implementation(TimefieldsI))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(TimefieldsI))==(?);
  List_Operations(Implementation(TimefieldsI))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(TimefieldsI))==(?);
  Inherited_List_Constants(Implementation(TimefieldsI))==(?);
  List_Constants(Implementation(TimefieldsI))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(TimefieldsI),ANO)==(?);
  Context_List_Enumerated(Implementation(TimefieldsI))==(?);
  Context_List_Defered(Implementation(TimefieldsI))==(?);
  Context_List_Sets(Implementation(TimefieldsI))==(?);
  List_Own_Enumerated(Implementation(TimefieldsI))==(?);
  List_Valuable_Sets(Implementation(TimefieldsI))==(HORA,DIA,MES,ANO);
  Inherited_List_Enumerated(Implementation(TimefieldsI))==(?);
  Inherited_List_Defered(Implementation(TimefieldsI))==(HORA,DIA,MES,ANO);
  Inherited_List_Sets(Implementation(TimefieldsI))==(HORA,DIA,MES,ANO);
  List_Enumerated(Implementation(TimefieldsI))==(?);
  List_Defered(Implementation(TimefieldsI))==(?);
  List_Sets(Implementation(TimefieldsI))==(?);
  Set_Definition(Implementation(TimefieldsI),MES)==(?);
  Set_Definition(Implementation(TimefieldsI),DIA)==(?);
  Set_Definition(Implementation(TimefieldsI),HORA)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(TimefieldsI))==(?);
  Expanded_List_HiddenConstants(Implementation(TimefieldsI))==(?);
  List_HiddenConstants(Implementation(TimefieldsI))==(?);
  External_List_HiddenConstants(Implementation(TimefieldsI))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(TimefieldsI))==(HORA: FIN(INTEGER) & not(HORA = {}) & DIA: FIN(INTEGER) & not(DIA = {}) & MES: FIN(INTEGER) & not(MES = {}) & ANO: FIN(INTEGER) & not(ANO = {}));
  Context_List_Properties(Implementation(TimefieldsI))==(btrue);
  Inherited_List_Properties(Implementation(TimefieldsI))==(btrue);
  List_Properties(Implementation(TimefieldsI))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(TimefieldsI))==(btrue);
  Values_Subs(Implementation(TimefieldsI))==(HORA,DIA,MES,ANO: {8,9,10,11,14,15,16,17},1..31,1..12,2015..2020);
  List_Values(Implementation(TimefieldsI))==(HORA = {8,9,10,11,14,15,16,17};DIA = 1..31;MES = 1..12;ANO = 2015..2020)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(TimefieldsI)) == (? | ? | ? | ? | ? | ? | ? | ? | TimefieldsI);
  List_Of_HiddenCst_Ids(Implementation(TimefieldsI)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(TimefieldsI)) == (?);
  List_Of_VisibleVar_Ids(Implementation(TimefieldsI)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(TimefieldsI)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(TimefieldsI)) == (Type(ANO) == Cst(SetOf(btype(INTEGER,"[ANO","]ANO")));Type(MES) == Cst(SetOf(btype(INTEGER,"[MES","]MES")));Type(DIA) == Cst(SetOf(btype(INTEGER,"[DIA","]DIA")));Type(HORA) == Cst(SetOf(btype(INTEGER,"[HORA","]HORA"))))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(TimefieldsI))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(TimefieldsI))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
