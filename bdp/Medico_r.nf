Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Medico_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Medico_r))==(Machine(Medico));
  Level(Refinement(Medico_r))==(1);
  Upper_Level(Refinement(Medico_r))==(Machine(Medico))
END
&
THEORY LoadedStructureX IS
  Refinement(Medico_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Medico_r))==(Answer)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Medico_r))==(?);
  List_Includes(Refinement(Medico_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Medico_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Medico_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Medico_r))==(?);
  Context_List_Variables(Refinement(Medico_r))==(?);
  Abstract_List_Variables(Refinement(Medico_r))==(medicos);
  Local_List_Variables(Refinement(Medico_r))==(medicosr);
  List_Variables(Refinement(Medico_r))==(medicosr);
  External_List_Variables(Refinement(Medico_r))==(medicosr)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Medico_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Medico_r))==(?);
  External_List_VisibleVariables(Refinement(Medico_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Medico_r))==(?);
  List_VisibleVariables(Refinement(Medico_r))==(?);
  Internal_List_VisibleVariables(Refinement(Medico_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Medico_r))==(medicosr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Medico_r))==(btrue);
  Expanded_List_Invariant(Refinement(Medico_r))==(btrue);
  Abstract_List_Invariant(Refinement(Medico_r))==(medicos <: MEDICOS);
  Context_List_Invariant(Refinement(Medico_r))==(btrue);
  List_Invariant(Refinement(Medico_r))==(medicosr: MEDICOS --> ANSWER & medicos = dom(medicosr|>{yes}))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Medico_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Medico_r))==(btrue);
  Abstract_List_Assertions(Refinement(Medico_r))==(btrue);
  Context_List_Assertions(Refinement(Medico_r))==(btrue);
  List_Assertions(Refinement(Medico_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Medico_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Medico_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Medico_r))==(medicosr:=MEDICOS*{no});
  Context_List_Initialisation(Refinement(Medico_r))==(skip);
  List_Initialisation(Refinement(Medico_r))==(medicosr:=MEDICOS*{no})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Medico_r))==(addMedico,removerMedico);
  List_Operations(Refinement(Medico_r))==(addMedico,removerMedico)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Medico_r),addMedico)==(mm);
  List_Input(Refinement(Medico_r),removerMedico)==(mm)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Medico_r),addMedico)==(?);
  List_Output(Refinement(Medico_r),removerMedico)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Medico_r),addMedico)==(addMedico(mm));
  List_Header(Refinement(Medico_r),removerMedico)==(removerMedico(mm))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Medico_r),addMedico)==(mm: MEDICOS & medicosr(mm) = no);
  List_Precondition(Refinement(Medico_r),addMedico)==(mm: MEDICOS & medicosr(mm) = no & mm: MEDICOS & mm/:medicos);
  Own_Precondition(Refinement(Medico_r),removerMedico)==(mm: MEDICOS);
  List_Precondition(Refinement(Medico_r),removerMedico)==(mm: MEDICOS & mm: MEDICOS & mm: medicos)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Medico_r),removerMedico)==(mm: MEDICOS & mm: MEDICOS & mm: medicos | medicosr(mm) = yes ==> medicosr:=medicosr<+{mm|->no} [] not(medicosr(mm) = yes) ==> skip);
  Expanded_List_Substitution(Refinement(Medico_r),addMedico)==(mm: MEDICOS & medicosr(mm) = no & mm: MEDICOS & mm/:medicos | medicosr:=medicosr<+{mm|->yes});
  List_Substitution(Refinement(Medico_r),addMedico)==(medicosr(mm):=yes);
  List_Substitution(Refinement(Medico_r),removerMedico)==(IF medicosr(mm) = yes THEN medicosr(mm):=no END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Medico_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Medico_r),Machine(Answer))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Medico_r))==(btrue);
  List_Context_Constraints(Refinement(Medico_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Medico_r))==(?);
  Inherited_List_Constants(Refinement(Medico_r))==(?);
  List_Constants(Refinement(Medico_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Medico_r),MEDICOS)==(?);
  Context_List_Enumerated(Refinement(Medico_r))==(ANSWER);
  Context_List_Defered(Refinement(Medico_r))==(?);
  Context_List_Sets(Refinement(Medico_r))==(ANSWER);
  List_Valuable_Sets(Refinement(Medico_r))==(MEDICOS);
  Inherited_List_Enumerated(Refinement(Medico_r))==(?);
  Inherited_List_Defered(Refinement(Medico_r))==(MEDICOS);
  Inherited_List_Sets(Refinement(Medico_r))==(MEDICOS);
  List_Enumerated(Refinement(Medico_r))==(?);
  List_Defered(Refinement(Medico_r))==(?);
  List_Sets(Refinement(Medico_r))==(?);
  Set_Definition(Refinement(Medico_r),ANSWER)==({yes,no})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Medico_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Medico_r))==(?);
  List_HiddenConstants(Refinement(Medico_r))==(?);
  External_List_HiddenConstants(Refinement(Medico_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Medico_r))==(MEDICOS: FIN(INTEGER) & not(MEDICOS = {}));
  Context_List_Properties(Refinement(Medico_r))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}));
  Inherited_List_Properties(Refinement(Medico_r))==(btrue);
  List_Properties(Refinement(Medico_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Medico_r),Machine(Answer))==(?);
  Seen_Context_List_Enumerated(Refinement(Medico_r))==(?);
  Seen_Context_List_Invariant(Refinement(Medico_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(Medico_r))==(btrue);
  Seen_Context_List_Properties(Refinement(Medico_r))==(btrue);
  Seen_List_Constraints(Refinement(Medico_r))==(btrue);
  Seen_List_Operations(Refinement(Medico_r),Machine(Answer))==(?);
  Seen_Expanded_List_Invariant(Refinement(Medico_r),Machine(Answer))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Medico_r),addMedico)==(?);
  List_ANY_Var(Refinement(Medico_r),removerMedico)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Medico_r)) == (? | ? | medicosr | ? | addMedico,removerMedico | ? | seen(Machine(Answer)) | ? | Medico_r);
  List_Of_HiddenCst_Ids(Refinement(Medico_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Medico_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Medico_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Medico_r)) == (?: ?);
  List_Of_Ids(Machine(Answer)) == (ANSWER,yes,no | ? | ? | ? | ? | ? | ? | ? | Answer);
  List_Of_HiddenCst_Ids(Machine(Answer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Answer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Answer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Answer)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Medico_r)) == (Type(MEDICOS) == Cst(SetOf(atype(MEDICOS,"[MEDICOS","]MEDICOS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Medico_r)) == (Type(medicosr) == Mvl(SetOf(atype(MEDICOS,"[MEDICOS","]MEDICOS")*etype(ANSWER,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Medico_r)) == (Type(removerMedico) == Cst(No_type,atype(MEDICOS,?,?));Type(addMedico) == Cst(No_type,atype(MEDICOS,?,?)))
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
