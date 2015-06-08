Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Sala_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Sala_r))==(Machine(Sala));
  Level(Refinement(Sala_r))==(1);
  Upper_Level(Refinement(Sala_r))==(Machine(Sala))
END
&
THEORY LoadedStructureX IS
  Refinement(Sala_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Sala_r))==(Answer)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Sala_r))==(?);
  List_Includes(Refinement(Sala_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Sala_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Sala_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Sala_r))==(?);
  Context_List_Variables(Refinement(Sala_r))==(?);
  Abstract_List_Variables(Refinement(Sala_r))==(salas);
  Local_List_Variables(Refinement(Sala_r))==(salasr);
  List_Variables(Refinement(Sala_r))==(salasr);
  External_List_Variables(Refinement(Sala_r))==(salasr)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Sala_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Sala_r))==(?);
  External_List_VisibleVariables(Refinement(Sala_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Sala_r))==(?);
  List_VisibleVariables(Refinement(Sala_r))==(?);
  Internal_List_VisibleVariables(Refinement(Sala_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Sala_r))==(salasr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Sala_r))==(btrue);
  Expanded_List_Invariant(Refinement(Sala_r))==(btrue);
  Abstract_List_Invariant(Refinement(Sala_r))==(salas <: SALAS);
  Context_List_Invariant(Refinement(Sala_r))==(btrue);
  List_Invariant(Refinement(Sala_r))==(salasr: SALAS --> ANSWER & salas = dom(salasr|>{yes}))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Sala_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Sala_r))==(btrue);
  Abstract_List_Assertions(Refinement(Sala_r))==(btrue);
  Context_List_Assertions(Refinement(Sala_r))==(btrue);
  List_Assertions(Refinement(Sala_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Sala_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Sala_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Sala_r))==(salasr:=SALAS*{no});
  Context_List_Initialisation(Refinement(Sala_r))==(skip);
  List_Initialisation(Refinement(Sala_r))==(salasr:=SALAS*{no})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Sala_r))==(addSala,removerSala);
  List_Operations(Refinement(Sala_r))==(addSala,removerSala)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Sala_r),addSala)==(ss);
  List_Input(Refinement(Sala_r),removerSala)==(ss)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Sala_r),addSala)==(?);
  List_Output(Refinement(Sala_r),removerSala)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Sala_r),addSala)==(addSala(ss));
  List_Header(Refinement(Sala_r),removerSala)==(removerSala(ss))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Sala_r),addSala)==(ss: SALAS & salasr(ss) = no);
  List_Precondition(Refinement(Sala_r),addSala)==(ss: SALAS & salasr(ss) = no & ss: SALAS & ss/:salas);
  Own_Precondition(Refinement(Sala_r),removerSala)==(ss: SALAS);
  List_Precondition(Refinement(Sala_r),removerSala)==(ss: SALAS & ss: SALAS & ss: salas)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Sala_r),removerSala)==(ss: SALAS & ss: SALAS & ss: salas | salasr(ss) = yes ==> salasr:=salasr<+{ss|->no} [] not(salasr(ss) = yes) ==> skip);
  Expanded_List_Substitution(Refinement(Sala_r),addSala)==(ss: SALAS & salasr(ss) = no & ss: SALAS & ss/:salas | salasr:=salasr<+{ss|->yes});
  List_Substitution(Refinement(Sala_r),addSala)==(salasr(ss):=yes);
  List_Substitution(Refinement(Sala_r),removerSala)==(IF salasr(ss) = yes THEN salasr(ss):=no END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Sala_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Sala_r),Machine(Answer))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Sala_r))==(btrue);
  List_Context_Constraints(Refinement(Sala_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Sala_r))==(?);
  Inherited_List_Constants(Refinement(Sala_r))==(?);
  List_Constants(Refinement(Sala_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Sala_r),SALAS)==(?);
  Context_List_Enumerated(Refinement(Sala_r))==(ANSWER);
  Context_List_Defered(Refinement(Sala_r))==(?);
  Context_List_Sets(Refinement(Sala_r))==(ANSWER);
  List_Valuable_Sets(Refinement(Sala_r))==(SALAS);
  Inherited_List_Enumerated(Refinement(Sala_r))==(?);
  Inherited_List_Defered(Refinement(Sala_r))==(SALAS);
  Inherited_List_Sets(Refinement(Sala_r))==(SALAS);
  List_Enumerated(Refinement(Sala_r))==(?);
  List_Defered(Refinement(Sala_r))==(?);
  List_Sets(Refinement(Sala_r))==(?);
  Set_Definition(Refinement(Sala_r),ANSWER)==({yes,no})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Sala_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Sala_r))==(?);
  List_HiddenConstants(Refinement(Sala_r))==(?);
  External_List_HiddenConstants(Refinement(Sala_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Sala_r))==(SALAS: FIN(INTEGER) & not(SALAS = {}));
  Context_List_Properties(Refinement(Sala_r))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}));
  Inherited_List_Properties(Refinement(Sala_r))==(btrue);
  List_Properties(Refinement(Sala_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Sala_r),Machine(Answer))==(?);
  Seen_Context_List_Enumerated(Refinement(Sala_r))==(?);
  Seen_Context_List_Invariant(Refinement(Sala_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(Sala_r))==(btrue);
  Seen_Context_List_Properties(Refinement(Sala_r))==(btrue);
  Seen_List_Constraints(Refinement(Sala_r))==(btrue);
  Seen_List_Operations(Refinement(Sala_r),Machine(Answer))==(?);
  Seen_Expanded_List_Invariant(Refinement(Sala_r),Machine(Answer))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Sala_r),addSala)==(?);
  List_ANY_Var(Refinement(Sala_r),removerSala)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Sala_r)) == (? | ? | salasr | ? | addSala,removerSala | ? | seen(Machine(Answer)) | ? | Sala_r);
  List_Of_HiddenCst_Ids(Refinement(Sala_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Sala_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Sala_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Sala_r)) == (?: ?);
  List_Of_Ids(Machine(Answer)) == (ANSWER,yes,no | ? | ? | ? | ? | ? | ? | ? | Answer);
  List_Of_HiddenCst_Ids(Machine(Answer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Answer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Answer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Answer)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Sala_r)) == (Type(SALAS) == Cst(SetOf(atype(SALAS,"[SALAS","]SALAS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Sala_r)) == (Type(salasr) == Mvl(SetOf(atype(SALAS,"[SALAS","]SALAS")*etype(ANSWER,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Sala_r)) == (Type(removerSala) == Cst(No_type,atype(SALAS,?,?));Type(addSala) == Cst(No_type,atype(SALAS,?,?)))
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
