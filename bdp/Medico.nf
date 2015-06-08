Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Medico))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Medico))==(Machine(Medico));
  Level(Machine(Medico))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Medico)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Medico))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Medico))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Medico))==(?);
  List_Includes(Machine(Medico))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Medico))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Medico))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Medico))==(?);
  Context_List_Variables(Machine(Medico))==(?);
  Abstract_List_Variables(Machine(Medico))==(?);
  Local_List_Variables(Machine(Medico))==(medicos);
  List_Variables(Machine(Medico))==(medicos);
  External_List_Variables(Machine(Medico))==(medicos)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Medico))==(?);
  Abstract_List_VisibleVariables(Machine(Medico))==(?);
  External_List_VisibleVariables(Machine(Medico))==(?);
  Expanded_List_VisibleVariables(Machine(Medico))==(?);
  List_VisibleVariables(Machine(Medico))==(?);
  Internal_List_VisibleVariables(Machine(Medico))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Medico))==(btrue);
  Gluing_List_Invariant(Machine(Medico))==(btrue);
  Expanded_List_Invariant(Machine(Medico))==(btrue);
  Abstract_List_Invariant(Machine(Medico))==(btrue);
  Context_List_Invariant(Machine(Medico))==(btrue);
  List_Invariant(Machine(Medico))==(medicos <: MEDICOS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Medico))==(btrue);
  Abstract_List_Assertions(Machine(Medico))==(btrue);
  Context_List_Assertions(Machine(Medico))==(btrue);
  List_Assertions(Machine(Medico))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Medico))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Medico))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Medico))==(medicos:={});
  Context_List_Initialisation(Machine(Medico))==(skip);
  List_Initialisation(Machine(Medico))==(medicos:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Medico))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Medico))==(btrue);
  List_Constraints(Machine(Medico))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Medico))==(addMedico,removerMedico);
  List_Operations(Machine(Medico))==(addMedico,removerMedico)
END
&
THEORY ListInputX IS
  List_Input(Machine(Medico),addMedico)==(mm);
  List_Input(Machine(Medico),removerMedico)==(mm)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Medico),addMedico)==(?);
  List_Output(Machine(Medico),removerMedico)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Medico),addMedico)==(addMedico(mm));
  List_Header(Machine(Medico),removerMedico)==(removerMedico(mm))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Medico),addMedico)==(mm: MEDICOS & mm/:medicos);
  List_Precondition(Machine(Medico),removerMedico)==(mm: MEDICOS & mm: medicos)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Medico),removerMedico)==(mm: MEDICOS & mm: medicos | medicos:=medicos-{mm});
  Expanded_List_Substitution(Machine(Medico),addMedico)==(mm: MEDICOS & mm/:medicos | medicos:=medicos\/{mm});
  List_Substitution(Machine(Medico),addMedico)==(medicos:=medicos\/{mm});
  List_Substitution(Machine(Medico),removerMedico)==(medicos:=medicos-{mm})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Medico))==(?);
  Inherited_List_Constants(Machine(Medico))==(?);
  List_Constants(Machine(Medico))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Medico),MEDICOS)==(?);
  Context_List_Enumerated(Machine(Medico))==(?);
  Context_List_Defered(Machine(Medico))==(?);
  Context_List_Sets(Machine(Medico))==(?);
  List_Valuable_Sets(Machine(Medico))==(MEDICOS);
  Inherited_List_Enumerated(Machine(Medico))==(?);
  Inherited_List_Defered(Machine(Medico))==(?);
  Inherited_List_Sets(Machine(Medico))==(?);
  List_Enumerated(Machine(Medico))==(?);
  List_Defered(Machine(Medico))==(MEDICOS);
  List_Sets(Machine(Medico))==(MEDICOS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Medico))==(?);
  Expanded_List_HiddenConstants(Machine(Medico))==(?);
  List_HiddenConstants(Machine(Medico))==(?);
  External_List_HiddenConstants(Machine(Medico))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Medico))==(btrue);
  Context_List_Properties(Machine(Medico))==(btrue);
  Inherited_List_Properties(Machine(Medico))==(btrue);
  List_Properties(Machine(Medico))==(MEDICOS: FIN(INTEGER) & not(MEDICOS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Medico),addMedico)==(?);
  List_ANY_Var(Machine(Medico),removerMedico)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Medico)) == (MEDICOS | ? | medicos | ? | addMedico,removerMedico | ? | ? | ? | Medico);
  List_Of_HiddenCst_Ids(Machine(Medico)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Medico)) == (?);
  List_Of_VisibleVar_Ids(Machine(Medico)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Medico)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Medico)) == (Type(MEDICOS) == Cst(SetOf(atype(MEDICOS,"[MEDICOS","]MEDICOS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Medico)) == (Type(medicos) == Mvl(SetOf(atype(MEDICOS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Medico)) == (Type(removerMedico) == Cst(No_type,atype(MEDICOS,?,?));Type(addMedico) == Cst(No_type,atype(MEDICOS,?,?)))
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
