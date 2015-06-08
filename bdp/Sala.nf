Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Sala))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Sala))==(Machine(Sala));
  Level(Machine(Sala))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Sala)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Sala))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Sala))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Sala))==(?);
  List_Includes(Machine(Sala))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Sala))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Sala))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Sala))==(?);
  Context_List_Variables(Machine(Sala))==(?);
  Abstract_List_Variables(Machine(Sala))==(?);
  Local_List_Variables(Machine(Sala))==(salas);
  List_Variables(Machine(Sala))==(salas);
  External_List_Variables(Machine(Sala))==(salas)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Sala))==(?);
  Abstract_List_VisibleVariables(Machine(Sala))==(?);
  External_List_VisibleVariables(Machine(Sala))==(?);
  Expanded_List_VisibleVariables(Machine(Sala))==(?);
  List_VisibleVariables(Machine(Sala))==(?);
  Internal_List_VisibleVariables(Machine(Sala))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Sala))==(btrue);
  Gluing_List_Invariant(Machine(Sala))==(btrue);
  Expanded_List_Invariant(Machine(Sala))==(btrue);
  Abstract_List_Invariant(Machine(Sala))==(btrue);
  Context_List_Invariant(Machine(Sala))==(btrue);
  List_Invariant(Machine(Sala))==(salas <: SALAS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Sala))==(btrue);
  Abstract_List_Assertions(Machine(Sala))==(btrue);
  Context_List_Assertions(Machine(Sala))==(btrue);
  List_Assertions(Machine(Sala))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Sala))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Sala))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Sala))==(salas:={});
  Context_List_Initialisation(Machine(Sala))==(skip);
  List_Initialisation(Machine(Sala))==(salas:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Sala))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Sala))==(btrue);
  List_Constraints(Machine(Sala))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Sala))==(addSala,removerSala);
  List_Operations(Machine(Sala))==(addSala,removerSala)
END
&
THEORY ListInputX IS
  List_Input(Machine(Sala),addSala)==(ss);
  List_Input(Machine(Sala),removerSala)==(ss)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Sala),addSala)==(?);
  List_Output(Machine(Sala),removerSala)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Sala),addSala)==(addSala(ss));
  List_Header(Machine(Sala),removerSala)==(removerSala(ss))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Sala),addSala)==(ss: SALAS & ss/:salas);
  List_Precondition(Machine(Sala),removerSala)==(ss: SALAS & ss: salas)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Sala),removerSala)==(ss: SALAS & ss: salas | salas:=salas-{ss});
  Expanded_List_Substitution(Machine(Sala),addSala)==(ss: SALAS & ss/:salas | salas:=salas\/{ss});
  List_Substitution(Machine(Sala),addSala)==(salas:=salas\/{ss});
  List_Substitution(Machine(Sala),removerSala)==(salas:=salas-{ss})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Sala))==(?);
  Inherited_List_Constants(Machine(Sala))==(?);
  List_Constants(Machine(Sala))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Sala),SALAS)==(?);
  Context_List_Enumerated(Machine(Sala))==(?);
  Context_List_Defered(Machine(Sala))==(?);
  Context_List_Sets(Machine(Sala))==(?);
  List_Valuable_Sets(Machine(Sala))==(SALAS);
  Inherited_List_Enumerated(Machine(Sala))==(?);
  Inherited_List_Defered(Machine(Sala))==(?);
  Inherited_List_Sets(Machine(Sala))==(?);
  List_Enumerated(Machine(Sala))==(?);
  List_Defered(Machine(Sala))==(SALAS);
  List_Sets(Machine(Sala))==(SALAS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Sala))==(?);
  Expanded_List_HiddenConstants(Machine(Sala))==(?);
  List_HiddenConstants(Machine(Sala))==(?);
  External_List_HiddenConstants(Machine(Sala))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Sala))==(btrue);
  Context_List_Properties(Machine(Sala))==(btrue);
  Inherited_List_Properties(Machine(Sala))==(btrue);
  List_Properties(Machine(Sala))==(SALAS: FIN(INTEGER) & not(SALAS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Sala),addSala)==(?);
  List_ANY_Var(Machine(Sala),removerSala)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Sala)) == (SALAS | ? | salas | ? | addSala,removerSala | ? | ? | ? | Sala);
  List_Of_HiddenCst_Ids(Machine(Sala)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Sala)) == (?);
  List_Of_VisibleVar_Ids(Machine(Sala)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Sala)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Sala)) == (Type(SALAS) == Cst(SetOf(atype(SALAS,"[SALAS","]SALAS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Sala)) == (Type(salas) == Mvl(SetOf(atype(SALAS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Sala)) == (Type(removerSala) == Cst(No_type,atype(SALAS,?,?));Type(addSala) == Cst(No_type,atype(SALAS,?,?)))
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
