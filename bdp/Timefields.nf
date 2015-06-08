Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Timefields))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Timefields))==(Machine(Timefields));
  Level(Machine(Timefields))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Timefields)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Timefields))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Timefields))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Timefields))==(?);
  List_Includes(Machine(Timefields))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Timefields))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Timefields))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Timefields))==(?);
  Context_List_Variables(Machine(Timefields))==(?);
  Abstract_List_Variables(Machine(Timefields))==(?);
  Local_List_Variables(Machine(Timefields))==(?);
  List_Variables(Machine(Timefields))==(?);
  External_List_Variables(Machine(Timefields))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Timefields))==(?);
  Abstract_List_VisibleVariables(Machine(Timefields))==(?);
  External_List_VisibleVariables(Machine(Timefields))==(?);
  Expanded_List_VisibleVariables(Machine(Timefields))==(?);
  List_VisibleVariables(Machine(Timefields))==(?);
  Internal_List_VisibleVariables(Machine(Timefields))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Timefields))==(btrue);
  Gluing_List_Invariant(Machine(Timefields))==(btrue);
  Expanded_List_Invariant(Machine(Timefields))==(btrue);
  Abstract_List_Invariant(Machine(Timefields))==(btrue);
  Context_List_Invariant(Machine(Timefields))==(btrue);
  List_Invariant(Machine(Timefields))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Timefields))==(btrue);
  Abstract_List_Assertions(Machine(Timefields))==(btrue);
  Context_List_Assertions(Machine(Timefields))==(btrue);
  List_Assertions(Machine(Timefields))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Timefields))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Timefields))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Timefields))==(skip);
  Context_List_Initialisation(Machine(Timefields))==(skip);
  List_Initialisation(Machine(Timefields))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Timefields))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Timefields))==(btrue);
  List_Constraints(Machine(Timefields))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Timefields))==(?);
  List_Operations(Machine(Timefields))==(?)
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
  List_Valuable_Constants(Machine(Timefields))==(?);
  Inherited_List_Constants(Machine(Timefields))==(?);
  List_Constants(Machine(Timefields))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Timefields),HORA)==(?);
  Context_List_Enumerated(Machine(Timefields))==(?);
  Context_List_Defered(Machine(Timefields))==(?);
  Context_List_Sets(Machine(Timefields))==(?);
  List_Valuable_Sets(Machine(Timefields))==(HORA,DIA,MES,ANO);
  Inherited_List_Enumerated(Machine(Timefields))==(?);
  Inherited_List_Defered(Machine(Timefields))==(?);
  Inherited_List_Sets(Machine(Timefields))==(?);
  List_Enumerated(Machine(Timefields))==(?);
  List_Defered(Machine(Timefields))==(HORA,DIA,MES,ANO);
  List_Sets(Machine(Timefields))==(HORA,DIA,MES,ANO);
  Set_Definition(Machine(Timefields),DIA)==(?);
  Set_Definition(Machine(Timefields),MES)==(?);
  Set_Definition(Machine(Timefields),ANO)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Timefields))==(?);
  Expanded_List_HiddenConstants(Machine(Timefields))==(?);
  List_HiddenConstants(Machine(Timefields))==(?);
  External_List_HiddenConstants(Machine(Timefields))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Timefields))==(btrue);
  Context_List_Properties(Machine(Timefields))==(btrue);
  Inherited_List_Properties(Machine(Timefields))==(btrue);
  List_Properties(Machine(Timefields))==(HORA: FIN(INTEGER) & not(HORA = {}) & DIA: FIN(INTEGER) & not(DIA = {}) & MES: FIN(INTEGER) & not(MES = {}) & ANO: FIN(INTEGER) & not(ANO = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Timefields)) == (HORA,DIA,MES,ANO | ? | ? | ? | ? | ? | ? | ? | Timefields);
  List_Of_HiddenCst_Ids(Machine(Timefields)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Timefields)) == (?);
  List_Of_VisibleVar_Ids(Machine(Timefields)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Timefields)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Timefields)) == (Type(HORA) == Cst(SetOf(atype(HORA,"[HORA","]HORA")));Type(DIA) == Cst(SetOf(atype(DIA,"[DIA","]DIA")));Type(MES) == Cst(SetOf(atype(MES,"[MES","]MES")));Type(ANO) == Cst(SetOf(atype(ANO,"[ANO","]ANO"))))
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
