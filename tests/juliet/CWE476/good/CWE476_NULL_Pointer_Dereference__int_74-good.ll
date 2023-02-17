; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::less" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { i32* }
%"struct.std::pair" = type { i32, i32* }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node" = type { %"class.std::_Rb_tree"* }
%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node" = type { %"class.std::_Rb_tree"*, %"struct.std::_Rb_tree_node"* }
%"struct.std::pair.1" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }

$_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2Ev = comdat any

$_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi = comdat any

$_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2ERKS7_ = comdat any

$_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EED2Ev = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE10deallocateEPS5_m = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE7destroyIS4_EEvRS6_PT_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE7destroyIS4_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPiEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPiEE7_M_addrEv = comdat any

$_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE9_M_mbeginEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2ERKS9_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2ERKSB_ = comdat any

$_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyERKS9_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeC2ERS9_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ERKS9_RT0_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_maximumEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv = comdat any

$_ZNSt18_Rb_tree_node_base10_S_maximumEPS_ = comdat any

$_ZNSt18_Rb_tree_node_base10_S_minimumEPS_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_M_clone_nodeILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_RT0_ = comdat any

$_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE = comdat any

$_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeclIRKS3_EEPSt13_Rb_tree_nodeIS3_EOT_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt13_Rb_tree_nodeIS3_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE9constructIS4_JRKS4_EEEvPT_DpOT0_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE8allocateERS6_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEES6_E17_S_select_on_copyERKS7_ = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEEC2ERKS5_ = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2ERKS1_ = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEEC2ERKS6_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE37select_on_container_copy_constructionERKS6_ = comdat any

$_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE11lower_boundERS4_ = comdat any

$_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE3endEv = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiPiEES6_ = comdat any

$_ZNKSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE8key_compEv = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKiPiEEdeEv = comdat any

$_ZNKSt4lessIiEclERKiS2_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKiPiEEC2ERKSt17_Rb_tree_iteratorIS3_E = comdat any

$_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_ = comdat any

$_ZSt16forward_as_tupleIJiEESt5tupleIJDpOT_EES3_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_ = comdat any

$_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEERS9_DpOT_ = comdat any

$_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_node6_M_keyEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSC_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv = comdat any

$_ZNKSt10_Select1stISt4pairIKiPiEEclERKS3_ = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPiEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPiEE7_M_addrEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKiPiEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE4sizeEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_ = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEppEv = comdat any

$_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiPiEERS1_Lb1EEEOT_OT0_ = comdat any

$_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKiPiEEEOT_RNSt16remove_referenceIS8_E4typeE = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESB_IJEEEEEvPT_DpOT0_ = comdat any

$_ZNSt5tupleIJOiEEC2EOS1_ = comdat any

$_ZNSt4pairIKiPiEC2IJOiEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE = comdat any

$_ZNSt4pairIKiPiEC2IJOiEJLm0EEJEJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE = comdat any

$_ZSt3getILm0EJOiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_ = comdat any

$_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZSt12__get_helperILm0EOiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJOiEE7_M_headERS1_ = comdat any

$_ZNSt10_Head_baseILm0EOiLb0EE7_M_headERS1_ = comdat any

$_ZNSt11_Tuple_implILm0EJOiEEC2EOS1_ = comdat any

$_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE = comdat any

$_ZNSt5tupleIJOiEEC2IJiELb1ELb1EEEDpOT_ = comdat any

$_ZNSt11_Tuple_implILm0EJOiEEC2IiEEOT_ = comdat any

$_ZNSt10_Head_baseILm0EOiLb0EEC2IiEEOT_ = comdat any

$_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8key_compEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE3endEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11lower_boundERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2Ev = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEEC2Ev = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@_ZStL19piecewise_construct = internal constant %"struct.std::less" undef, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_744goodEv() #0 {
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_74L7goodG2BEv()
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_74L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN39CWE476_NULL_Pointer_Dereference__int_74L7goodG2BEv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::map", align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::map", align 8
  store i32 5, i32* %2, align 4
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2Ev(%"class.std::map"* %3) #11
  store i32* %2, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  store i32 0, i32* %4, align 4
  %11 = invoke nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %3, i32* nonnull align 4 dereferenceable(4) %4)
          to label %12 unwind label %21

12:                                               ; preds = %0
  store i32* %10, i32** %11, align 8
  %13 = load i32*, i32** %1, align 8
  store i32 1, i32* %7, align 4
  %14 = invoke nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %3, i32* nonnull align 4 dereferenceable(4) %7)
          to label %15 unwind label %21

15:                                               ; preds = %12
  store i32* %13, i32** %14, align 8
  %16 = load i32*, i32** %1, align 8
  store i32 2, i32* %8, align 4
  %17 = invoke nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %3, i32* nonnull align 4 dereferenceable(4) %8)
          to label %18 unwind label %21

18:                                               ; preds = %15
  store i32* %16, i32** %17, align 8
  invoke void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2ERKS7_(%"class.std::map"* %9, %"class.std::map"* nonnull align 8 dereferenceable(48) %3)
          to label %19 unwind label %21

19:                                               ; preds = %18
  invoke void @_ZN39CWE476_NULL_Pointer_Dereference__int_7411goodG2BSinkESt3mapIiPiSt4lessIiESaISt4pairIKiS1_EEE(%"class.std::map"* %9)
          to label %20 unwind label %25

20:                                               ; preds = %19
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %9) #11
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %3) #11
  ret void

21:                                               ; preds = %18, %15, %12, %0
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %5, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %19
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %5, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %6, align 4
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %9) #11
  br label %29

29:                                               ; preds = %25, %21
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %3) #11
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN39CWE476_NULL_Pointer_Dereference__int_74L7goodB2GEv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::map", align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.std::map", align 8
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2Ev(%"class.std::map"* %2) #11
  store i32* null, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  store i32 0, i32* %3, align 4
  %10 = invoke nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %2, i32* nonnull align 4 dereferenceable(4) %3)
          to label %11 unwind label %20

11:                                               ; preds = %0
  store i32* %9, i32** %10, align 8
  %12 = load i32*, i32** %1, align 8
  store i32 1, i32* %6, align 4
  %13 = invoke nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %2, i32* nonnull align 4 dereferenceable(4) %6)
          to label %14 unwind label %20

14:                                               ; preds = %11
  store i32* %12, i32** %13, align 8
  %15 = load i32*, i32** %1, align 8
  store i32 2, i32* %7, align 4
  %16 = invoke nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %2, i32* nonnull align 4 dereferenceable(4) %7)
          to label %17 unwind label %20

17:                                               ; preds = %14
  store i32* %15, i32** %16, align 8
  invoke void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2ERKS7_(%"class.std::map"* %8, %"class.std::map"* nonnull align 8 dereferenceable(48) %2)
          to label %18 unwind label %20

18:                                               ; preds = %17
  invoke void @_ZN39CWE476_NULL_Pointer_Dereference__int_7411goodB2GSinkESt3mapIiPiSt4lessIiESaISt4pairIKiS1_EEE(%"class.std::map"* %8)
          to label %19 unwind label %24

19:                                               ; preds = %18
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %8) #11
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %2) #11
  ret void

20:                                               ; preds = %17, %14, %11, %0
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %4, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %18
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %4, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %5, align 4
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %8) #11
  br label %28

28:                                               ; preds = %24, %20
  call void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %2) #11
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2Ev(%"class.std::map"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %2, align 8
  %3 = load %"class.std::map"*, %"class.std::map"** %2, align 8
  %4 = getelementptr inbounds %"class.std::map", %"class.std::map"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2Ev(%"class.std::_Rb_tree"* %4) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %0, i32* nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::map"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::less", align 1
  %8 = alloca %"struct.std::less", align 1
  %9 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %11 = alloca %"class.std::tuple", align 8
  %12 = alloca %"struct.std::less", align 1
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE11lower_boundERS4_(%"class.std::map"* %13, i32* nonnull align 4 dereferenceable(4) %14)
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %16, align 8
  %17 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE3endEv(%"class.std::map"* %13) #11
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %18, align 8
  %19 = call zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiPiEES6_(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %5, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %6) #11
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  call void @_ZNKSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE8key_compEv(%"class.std::map"* %13)
  %21 = load i32*, i32** %4, align 8
  %22 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKiPiEEdeEv(%"struct.std::_Rb_tree_iterator"* %5) #11
  %23 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %22, i32 0, i32 0
  %24 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %7, i32* nonnull align 4 dereferenceable(4) %21, i32* nonnull align 4 dereferenceable(4) %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i1 [ true, %2 ], [ %24, %20 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.std::map", %"class.std::map"* %13, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKiPiEEC2ERKSt17_Rb_tree_iteratorIS3_E(%"struct.std::_Rb_tree_iterator"* %10, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %5) #11
  %29 = load i32*, i32** %4, align 8
  %30 = call nonnull align 4 dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* nonnull align 4 dereferenceable(4) %29) #11
  call void @_ZSt16forward_as_tupleIJiEESt5tupleIJDpOT_EES3_(%"class.std::tuple"* sret(%"class.std::tuple") align 8 %11, i32* nonnull align 4 dereferenceable(4) %30) #11
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(%"class.std::_Rb_tree"* %28, %"struct.std::_Rb_tree_node_base"* %32, %"struct.std::less"* nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %11, %"struct.std::less"* nonnull align 1 dereferenceable(1) %12)
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %33, %"struct.std::_Rb_tree_node_base"** %34, align 8
  %35 = bitcast %"struct.std::_Rb_tree_iterator"* %5 to i8*
  %36 = bitcast %"struct.std::_Rb_tree_iterator"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  br label %37

37:                                               ; preds = %27, %25
  %38 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKiPiEEdeEv(%"struct.std::_Rb_tree_iterator"* %5) #11
  %39 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %38, i32 0, i32 1
  ret i32** %39
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEC2ERKS7_(%"class.std::map"* %0, %"class.std::map"* nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::map"*, align 8
  %4 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  store %"class.std::map"* %1, %"class.std::map"** %4, align 8
  %5 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %6 = getelementptr inbounds %"class.std::map", %"class.std::map"* %5, i32 0, i32 0
  %7 = load %"class.std::map"*, %"class.std::map"** %4, align 8
  %8 = getelementptr inbounds %"class.std::map", %"class.std::map"* %7, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2ERKS9_(%"class.std::_Rb_tree"* %6, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEED2Ev(%"class.std::map"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %2, align 8
  %3 = load %"class.std::map"*, %"class.std::map"** %2, align 8
  %4 = getelementptr inbounds %"class.std::map", %"class.std::map"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EED2Ev(%"class.std::_Rb_tree"* %4) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EED2Ev(%"class.std::_Rb_tree"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(%"class.std::_Rb_tree"* %5) #11
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %6)
          to label %7 unwind label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EED2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %8) #11
  ret void

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EED2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %13) #11
  br label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %15) #12
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE9_M_mbeginEv(%"class.std::_Rb_tree"* %3) #11
  ret %"struct.std::_Rb_tree_node"* %4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #0 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  br label %7

7:                                                ; preds = %10, %2
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node"* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12) #11
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %13)
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %15) #11
  store %"struct.std::_Rb_tree_node"* %16, %"struct.std::_Rb_tree_node"** %5, align 8
  %17 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %17) #11
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  br label %7

19:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EED2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %3 to %"struct.std::less"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev(%"struct.std::less"* %4) #11
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #2 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #11
  call void @_ZSt9terminatev() #12
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev(%"struct.std::less"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %2, align 8
  %3 = load %"struct.std::less"*, %"struct.std::less"** %2, align 8
  %4 = bitcast %"struct.std::less"* %3 to %"struct.std::less"*
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev(%"struct.std::less"* %4) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev(%"struct.std::less"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %2, align 8
  %3 = load %"struct.std::less"*, %"struct.std::less"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 3
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #1 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %6) #11
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %7) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %5) #11
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %8 = invoke %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %7)
          to label %9 unwind label %11

9:                                                ; preds = %2
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE7destroyIS4_EEvRS6_PT_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %6, %"struct.std::pair"* %8) #11
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  ret void

11:                                               ; preds = %2
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #12
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %5) #11
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE10deallocateERS6_PS5_m(%"struct.std::less"* nonnull align 1 dereferenceable(1) %6, %"struct.std::_Rb_tree_node"* %7, i64 1)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #12
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to %"struct.std::less"*
  ret %"struct.std::less"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE10deallocateERS6_PS5_m(%"struct.std::less"* nonnull align 1 dereferenceable(1) %0, %"struct.std::_Rb_tree_node"* %1, i64 %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = bitcast %"struct.std::less"* %7 to %"struct.std::less"*
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE10deallocateEPS5_m(%"struct.std::less"* %8, %"struct.std::_Rb_tree_node"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE10deallocateEPS5_m(%"struct.std::less"* %0, %"struct.std::_Rb_tree_node"* %1, i64 %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to i8*
  call void @_ZdlPv(i8* %9) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  %5 = call %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %4) #11
  ret %"struct.std::pair"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE7destroyIS4_EEvRS6_PT_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %0, %"struct.std::pair"* %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::less"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::less"*, %"struct.std::less"** %3, align 8
  %6 = bitcast %"struct.std::less"* %5 to %"struct.std::less"*
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE7destroyIS4_EEvPT_(%"struct.std::less"* %6, %"struct.std::pair"* %7) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE7destroyIS4_EEvPT_(%"struct.std::less"* %0, %"struct.std::pair"* %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::less"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::less"*, %"struct.std::less"** %3, align 8
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #11
  %5 = bitcast i8* %4 to %"struct.std::pair"*
  ret %"struct.std::pair"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [16 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE9_M_mbeginEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node_base"* %10 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2ERKS9_(%"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"class.std::_Rb_tree"* %1, %"class.std::_Rb_tree"** %4, align 8
  %7 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %7, i32 0, i32 0
  %9 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %10 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %9, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2ERKSB_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %8, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %10)
  %11 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %12 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(%"class.std::_Rb_tree"* %11) #11
  %13 = icmp ne %"struct.std::_Rb_tree_node_base"* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %16 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyERKS9_(%"class.std::_Rb_tree"* %7, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %15)
          to label %17 unwind label %20

17:                                               ; preds = %14
  %18 = bitcast %"struct.std::_Rb_tree_node"* %16 to %"struct.std::_Rb_tree_node_base"*
  %19 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(%"class.std::_Rb_tree"* %7) #11
  store %"struct.std::_Rb_tree_node_base"* %18, %"struct.std::_Rb_tree_node_base"** %19, align 8
  br label %24

20:                                               ; preds = %14
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %5, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %6, align 4
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EED2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %8) #11
  br label %25

24:                                               ; preds = %17, %2
  ret void

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2ERKSB_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, align 8
  %4 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, align 8
  %5 = alloca %"struct.std::less", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %3, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %1, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %4, align 8
  %8 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %3, align 8
  %9 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %8 to %"struct.std::less"*
  %10 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %4, align 8
  %11 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %10 to %"struct.std::less"*
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEES6_E17_S_select_on_copyERKS7_(%"struct.std::less"* sret(%"struct.std::less") align 1 %5, %"struct.std::less"* nonnull align 1 dereferenceable(1) %11)
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEEC2ERKS5_(%"struct.std::less"* %9, %"struct.std::less"* nonnull align 1 dereferenceable(1) %5) #11
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev(%"struct.std::less"* %5) #11
  %12 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %8 to %"struct.std::_Rb_tree_key_compare"*
  %13 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %4, align 8
  %14 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %13 to %"struct.std::_Rb_tree_key_compare"*
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %14, i32 0, i32 0
  invoke void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2ERKS1_(%"struct.std::_Rb_tree_key_compare"* %12, %"struct.std::less"* nonnull align 1 dereferenceable(1) %15)
          to label %16 unwind label %20

16:                                               ; preds = %2
  %17 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %8 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = bitcast i8* %18 to %"struct.std::_Rb_tree_header"*
  call void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %19) #11
  ret void

20:                                               ; preds = %2
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %6, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %7, align 4
  %24 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %8 to %"struct.std::less"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEED2Ev(%"struct.std::less"* %24) #11
  br label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  ret %"struct.std::_Rb_tree_node_base"* %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyERKS9_(%"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node", align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"class.std::_Rb_tree"* %1, %"class.std::_Rb_tree"** %4, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeC2ERS9_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %5, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %6)
  %7 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ERKS9_RT0_(%"class.std::_Rb_tree"* %6, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %7, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %5)
  ret %"struct.std::_Rb_tree_node"* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 1
  ret %"struct.std::_Rb_tree_node_base"** %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeC2ERS9_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %0, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %3, align 8
  store %"class.std::_Rb_tree"* %1, %"class.std::_Rb_tree"** %4, align 8
  %5 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %5, i32 0, i32 0
  %7 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::_Rb_tree"* %7, %"class.std::_Rb_tree"** %6, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ERKS9_RT0_(%"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %1, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"class.std::_Rb_tree"*, align 8
  %6 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::_Rb_tree"* %1, %"class.std::_Rb_tree"** %5, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %2, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %6, align 8
  %8 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %9 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %5, align 8
  %10 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE9_M_mbeginEv(%"class.std::_Rb_tree"* %9) #11
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(%"class.std::_Rb_tree"* %8) #11
  %12 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %6, align 8
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(%"class.std::_Rb_tree"* %8, %"struct.std::_Rb_tree_node"* %10, %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %12)
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %7, align 8
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %15) #11
  %17 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %8) #11
  store %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node_base"** %17, align 8
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %19 = bitcast %"struct.std::_Rb_tree_node"* %18 to %"struct.std::_Rb_tree_node_base"*
  %20 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_maximumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %19) #11
  %21 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %8) #11
  store %"struct.std::_Rb_tree_node_base"* %20, %"struct.std::_Rb_tree_node_base"** %21, align 8
  %22 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %5, align 8
  %23 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %22, i32 0, i32 0
  %24 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = bitcast i8* %25 to %"struct.std::_Rb_tree_header"*
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %8, i32 0, i32 0
  %30 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %29 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 8
  %32 = bitcast i8* %31 to %"struct.std::_Rb_tree_header"*
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %32, i32 0, i32 1
  store i64 %28, i64* %33, align 8
  %34 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  ret %"struct.std::_Rb_tree_node"* %34
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::_Rb_tree"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %5, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %3, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %8, align 8
  %13 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %5, align 8
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %15 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %8, align 8
  %16 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_M_clone_nodeILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_RT0_(%"class.std::_Rb_tree"* %13, %"struct.std::_Rb_tree_node"* %14, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %15)
  store %"struct.std::_Rb_tree_node"* %16, %"struct.std::_Rb_tree_node"** %9, align 8
  %17 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %19 = bitcast %"struct.std::_Rb_tree_node"* %18 to %"struct.std::_Rb_tree_node_base"*
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %19, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %21 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %22 = bitcast %"struct.std::_Rb_tree_node"* %21 to %"struct.std::_Rb_tree_node_base"*
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %22, i32 0, i32 3
  %24 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %23, align 8
  %25 = icmp ne %"struct.std::_Rb_tree_node_base"* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %4
  %27 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %28 = bitcast %"struct.std::_Rb_tree_node"* %27 to %"struct.std::_Rb_tree_node_base"*
  %29 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %28) #11
  %30 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %31 = bitcast %"struct.std::_Rb_tree_node"* %30 to %"struct.std::_Rb_tree_node_base"*
  %32 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %8, align 8
  %33 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(%"class.std::_Rb_tree"* %13, %"struct.std::_Rb_tree_node"* %29, %"struct.std::_Rb_tree_node_base"* %31, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %32)
          to label %34 unwind label %39

34:                                               ; preds = %26
  %35 = bitcast %"struct.std::_Rb_tree_node"* %33 to %"struct.std::_Rb_tree_node_base"*
  %36 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %37 = bitcast %"struct.std::_Rb_tree_node"* %36 to %"struct.std::_Rb_tree_node_base"*
  %38 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %37, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %35, %"struct.std::_Rb_tree_node_base"** %38, align 8
  br label %48

39:                                               ; preds = %75, %57, %26
  %40 = landingpad { i8*, i32 }
          catch i8* null
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %10, align 8
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @__cxa_begin_catch(i8* %44) #11
  %46 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %13, %"struct.std::_Rb_tree_node"* %46)
          to label %47 unwind label %95

47:                                               ; preds = %43
  invoke void @__cxa_rethrow() #14
          to label %110 unwind label %95

48:                                               ; preds = %34, %4
  %49 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %50 = bitcast %"struct.std::_Rb_tree_node"* %49 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %50, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %51 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %52 = bitcast %"struct.std::_Rb_tree_node"* %51 to %"struct.std::_Rb_tree_node_base"*
  %53 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %52) #11
  store %"struct.std::_Rb_tree_node"* %53, %"struct.std::_Rb_tree_node"** %6, align 8
  br label %54

54:                                               ; preds = %88, %48
  %55 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %56 = icmp ne %"struct.std::_Rb_tree_node"* %55, null
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  %58 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %59 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %8, align 8
  %60 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_M_clone_nodeILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_RT0_(%"class.std::_Rb_tree"* %13, %"struct.std::_Rb_tree_node"* %58, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %59)
          to label %61 unwind label %39

61:                                               ; preds = %57
  store %"struct.std::_Rb_tree_node"* %60, %"struct.std::_Rb_tree_node"** %12, align 8
  %62 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  %63 = bitcast %"struct.std::_Rb_tree_node"* %62 to %"struct.std::_Rb_tree_node_base"*
  %64 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %65 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %64, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %63, %"struct.std::_Rb_tree_node_base"** %65, align 8
  %66 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %67 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  %68 = bitcast %"struct.std::_Rb_tree_node"* %67 to %"struct.std::_Rb_tree_node_base"*
  %69 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %68, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* %66, %"struct.std::_Rb_tree_node_base"** %69, align 8
  %70 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %71 = bitcast %"struct.std::_Rb_tree_node"* %70 to %"struct.std::_Rb_tree_node_base"*
  %72 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %71, i32 0, i32 3
  %73 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %72, align 8
  %74 = icmp ne %"struct.std::_Rb_tree_node_base"* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %61
  %76 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %77 = bitcast %"struct.std::_Rb_tree_node"* %76 to %"struct.std::_Rb_tree_node_base"*
  %78 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %77) #11
  %79 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  %80 = bitcast %"struct.std::_Rb_tree_node"* %79 to %"struct.std::_Rb_tree_node_base"*
  %81 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %8, align 8
  %82 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(%"class.std::_Rb_tree"* %13, %"struct.std::_Rb_tree_node"* %78, %"struct.std::_Rb_tree_node_base"* %80, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %81)
          to label %83 unwind label %39

83:                                               ; preds = %75
  %84 = bitcast %"struct.std::_Rb_tree_node"* %82 to %"struct.std::_Rb_tree_node_base"*
  %85 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  %86 = bitcast %"struct.std::_Rb_tree_node"* %85 to %"struct.std::_Rb_tree_node_base"*
  %87 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %86, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %84, %"struct.std::_Rb_tree_node_base"** %87, align 8
  br label %88

88:                                               ; preds = %83, %61
  %89 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  %90 = bitcast %"struct.std::_Rb_tree_node"* %89 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %90, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %91 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %92 = bitcast %"struct.std::_Rb_tree_node"* %91 to %"struct.std::_Rb_tree_node_base"*
  %93 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %92) #11
  store %"struct.std::_Rb_tree_node"* %93, %"struct.std::_Rb_tree_node"** %6, align 8
  br label %54

94:                                               ; preds = %54
  br label %100

95:                                               ; preds = %47, %43
  %96 = landingpad { i8*, i32 }
          cleanup
  %97 = extractvalue { i8*, i32 } %96, 0
  store i8* %97, i8** %10, align 8
  %98 = extractvalue { i8*, i32 } %96, 1
  store i32 %98, i32* %11, align 4
  invoke void @__cxa_end_catch()
          to label %99 unwind label %107

99:                                               ; preds = %95
  br label %102

100:                                              ; preds = %94
  %101 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  ret %"struct.std::_Rb_tree_node"* %101

102:                                              ; preds = %99
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = insertvalue { i8*, i32 } undef, i8* %103, 0
  %106 = insertvalue { i8*, i32 } %105, i32 %104, 1
  resume { i8*, i32 } %106

107:                                              ; preds = %95
  %108 = landingpad { i8*, i32 }
          catch i8* null
  %109 = extractvalue { i8*, i32 } %108, 0
  call void @__clang_call_terminate(i8* %109) #12
  unreachable

110:                                              ; preds = %47
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(%"struct.std::_Rb_tree_node_base"* %3) #11
  ret %"struct.std::_Rb_tree_node_base"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_maximumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(%"struct.std::_Rb_tree_node_base"* %3) #11
  ret %"struct.std::_Rb_tree_node_base"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 3
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = icmp ne %"struct.std::_Rb_tree_node_base"* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %9, i32 0, i32 3
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 2
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = icmp ne %"struct.std::_Rb_tree_node_base"* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %9, i32 0, i32 2
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_M_clone_nodeILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_RT0_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %2, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %6, align 8
  %8 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %9 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %6, align 8
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %11 = call %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %10)
  %12 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::pair"* nonnull align 8 dereferenceable(16) %11) #11
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeclIRKS3_EEPSt13_Rb_tree_nodeIS3_EOT_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %9, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %12)
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %7, align 8
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %19 = bitcast %"struct.std::_Rb_tree_node"* %18 to %"struct.std::_Rb_tree_node_base"*
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %22 = bitcast %"struct.std::_Rb_tree_node"* %21 to %"struct.std::_Rb_tree_node_base"*
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %22, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %23, align 8
  %24 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %25 = bitcast %"struct.std::_Rb_tree_node"* %24 to %"struct.std::_Rb_tree_node_base"*
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %25, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %26, align 8
  %27 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  ret %"struct.std::_Rb_tree_node"* %27
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::pair"* nonnull align 8 dereferenceable(16) %0) #1 comdat {
  %2 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %2, align 8
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  ret %"struct.std::pair"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeclIRKS3_EEPSt13_Rb_tree_nodeIS3_EOT_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %0, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Alloc_node"* %5, i32 0, i32 0
  %7 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %9 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::pair"* nonnull align 8 dereferenceable(16) %8) #11
  %10 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %7, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %9)
  ret %"struct.std::_Rb_tree_node"* %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %6)
  store %"struct.std::_Rb_tree_node"* %7, %"struct.std::_Rb_tree_node"** %5, align 8
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %10 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::pair"* nonnull align 8 dereferenceable(16) %9) #11
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %8, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %10)
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  ret %"struct.std::_Rb_tree_node"* %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %0) #0 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %3) #11
  %5 = call %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE8allocateERS6_m(%"struct.std::less"* nonnull align 1 dereferenceable(1) %4, i64 1)
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %6, align 8
  %9 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node"* %10 to i8*
  %12 = bitcast i8* %11 to %"struct.std::_Rb_tree_node"*
  %13 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %9) #11
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %15 = invoke %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %14)
          to label %16 unwind label %19

16:                                               ; preds = %3
  %17 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %18 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::pair"* nonnull align 8 dereferenceable(16) %17) #11
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %13, %"struct.std::pair"* %15, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %18) #11
  br label %33

19:                                               ; preds = %3
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %7, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @__cxa_begin_catch(i8* %24) #11
  %26 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %27 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %9, %"struct.std::_Rb_tree_node"* %27) #11
  invoke void @__cxa_rethrow() #14
          to label %42 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %7, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %8, align 4
  invoke void @__cxa_end_catch()
          to label %32 unwind label %39

32:                                               ; preds = %28
  br label %34

33:                                               ; preds = %16
  ret void

34:                                               ; preds = %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

39:                                               ; preds = %28
  %40 = landingpad { i8*, i32 }
          catch i8* null
  %41 = extractvalue { i8*, i32 } %40, 0
  call void @__clang_call_terminate(i8* %41) #12
  unreachable

42:                                               ; preds = %23
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %0, %"struct.std::pair"* %1, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = bitcast %"struct.std::less"* %7 to %"struct.std::less"*
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %10 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %11 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::pair"* nonnull align 8 dereferenceable(16) %10) #11
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE9constructIS4_JRKS4_EEEvPT_DpOT0_(%"struct.std::less"* %8, %"struct.std::pair"* %9, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %11) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE9constructIS4_JRKS4_EEEvPT_DpOT0_(%"struct.std::less"* %0, %"struct.std::pair"* %1, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %9 = bitcast %"struct.std::pair"* %8 to i8*
  %10 = bitcast i8* %9 to %"struct.std::pair"*
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %12 = call nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardIRKSt4pairIKiPiEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::pair"* nonnull align 8 dereferenceable(16) %11) #11
  %13 = bitcast %"struct.std::pair"* %10 to i8*
  %14 = bitcast %"struct.std::pair"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE8allocateERS6_m(%"struct.std::less"* nonnull align 1 dereferenceable(1) %0, i64 %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::less"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::less"*, %"struct.std::less"** %3, align 8
  %6 = bitcast %"struct.std::less"* %5 to %"struct.std::less"*
  %7 = load i64, i64* %4, align 8
  %8 = call %"struct.std::_Rb_tree_node"* @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE8allocateEmPKv(%"struct.std::less"* %6, i64 %7, i8* null)
  ret %"struct.std::_Rb_tree_node"* %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE8allocateEmPKv(%"struct.std::less"* %0, i64 %1, i8* %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE11_M_max_sizeEv(%"struct.std::less"* %7) #11
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 384307168202282325
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 48
  %19 = call noalias nonnull i8* @_Znwm(i64 %18) #15
  %20 = bitcast i8* %19 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE11_M_max_sizeEv(%"struct.std::less"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %2, align 8
  %3 = load %"struct.std::less"*, %"struct.std::less"** %2, align 8
  ret i64 192153584101141162
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #5

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #5

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEES6_E17_S_select_on_copyERKS7_(%"struct.std::less"* noalias sret(%"struct.std::less") align 1 %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"struct.std::less"*, align 8
  %5 = bitcast %"struct.std::less"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %4, align 8
  %6 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE37select_on_container_copy_constructionERKS6_(%"struct.std::less"* sret(%"struct.std::less") align 1 %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEEC2ERKS5_(%"struct.std::less"* %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::less"*, align 8
  %4 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %3, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %4, align 8
  %5 = load %"struct.std::less"*, %"struct.std::less"** %3, align 8
  %6 = bitcast %"struct.std::less"* %5 to %"struct.std::less"*
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = bitcast %"struct.std::less"* %7 to %"struct.std::less"*
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEEC2ERKS6_(%"struct.std::less"* %6, %"struct.std::less"* nonnull align 1 dereferenceable(1) %8) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2ERKS1_(%"struct.std::_Rb_tree_key_compare"* %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_key_compare"*, align 8
  %4 = alloca %"struct.std::less"*, align 8
  store %"struct.std::_Rb_tree_key_compare"* %0, %"struct.std::_Rb_tree_key_compare"** %3, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_key_compare"*, %"struct.std::_Rb_tree_key_compare"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %5, i32 0, i32 0
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Rb_tree_header"*, align 8
  store %"struct.std::_Rb_tree_header"* %0, %"struct.std::_Rb_tree_header"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_header"*, %"struct.std::_Rb_tree_header"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  invoke void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* %3)
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #12
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_header"*, align 8
  store %"struct.std::_Rb_tree_header"* %0, %"struct.std::_Rb_tree_header"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_header"*, %"struct.std::_Rb_tree_header"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %7, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %10, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 1
  store i64 0, i64* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEEC2ERKS6_(%"struct.std::less"* %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::less"*, align 8
  %4 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %3, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %4, align 8
  %5 = load %"struct.std::less"*, %"struct.std::less"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE37select_on_container_copy_constructionERKS6_(%"struct.std::less"* noalias sret(%"struct.std::less") align 1 %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"struct.std::less"*, align 8
  %5 = bitcast %"struct.std::less"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %4, align 8
  %6 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEEC2ERKS5_(%"struct.std::less"* %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %6) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE11lower_boundERS4_(%"class.std::map"* %0, i32* nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"class.std::map"*, align 8
  %5 = alloca i32*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %"class.std::map"*, %"class.std::map"** %4, align 8
  %7 = getelementptr inbounds %"class.std::map", %"class.std::map"* %6, i32 0, i32 0
  %8 = load i32*, i32** %5, align 8
  %9 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11lower_boundERS1_(%"class.std::_Rb_tree"* %7, i32* nonnull align 4 dereferenceable(4) %8)
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %11, align 8
  ret %"struct.std::_Rb_tree_node_base"* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE3endEv(%"class.std::map"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  %4 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %5 = getelementptr inbounds %"class.std::map", %"class.std::map"* %4, i32 0, i32 0
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE3endEv(%"class.std::_Rb_tree"* %5) #11
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiPiEES6_(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %0, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = icmp eq %"struct.std::_Rb_tree_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNKSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEE8key_compEv(%"class.std::map"* %0) #0 comdat align 2 {
  %2 = alloca %"class.std::map"*, align 8
  %3 = alloca %"struct.std::less", align 1
  store %"class.std::map"* %0, %"class.std::map"** %2, align 8
  %4 = load %"class.std::map"*, %"class.std::map"** %2, align 8
  %5 = getelementptr inbounds %"class.std::map", %"class.std::map"* %4, i32 0, i32 0
  call void @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8key_compEv(%"class.std::_Rb_tree"* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKiPiEEdeEv(%"struct.std::_Rb_tree_iterator"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  %7 = invoke %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %6)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret %"struct.std::pair"* %7

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #12
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %0, i32* nonnull align 4 dereferenceable(4) %1, i32* nonnull align 4 dereferenceable(4) %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %9, %11
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKiPiEEC2ERKSt17_Rb_tree_iteratorIS3_E(%"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %7, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* nonnull align 4 dereferenceable(4) %0) #1 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt16forward_as_tupleIJiEESt5tupleIJDpOT_EES3_(%"class.std::tuple"* noalias sret(%"class.std::tuple") align 8 %0, i32* nonnull align 4 dereferenceable(4) %1) #1 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast %"class.std::tuple"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %6) #11
  call void @_ZNSt5tupleIJOiEEC2IJiELb1ELb1EEEDpOT_(%"class.std::tuple"* %0, i32* nonnull align 4 dereferenceable(4) %7) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::less"* nonnull align 1 dereferenceable(1) %2, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %3, %"struct.std::less"* nonnull align 1 dereferenceable(1) %4) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca %"class.std::_Rb_tree"*, align 8
  %9 = alloca %"struct.std::less"*, align 8
  %10 = alloca %"class.std::tuple"*, align 8
  %11 = alloca %"struct.std::less"*, align 8
  %12 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", align 8
  %13 = alloca %"struct.std::pair.1", align 8
  %14 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %"struct.std::pair.1", align 8
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %19, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %8, align 8
  store %"struct.std::less"* %2, %"struct.std::less"** %9, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %10, align 8
  store %"struct.std::less"* %4, %"struct.std::less"** %11, align 8
  %20 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %8, align 8
  %21 = load %"struct.std::less"*, %"struct.std::less"** %9, align 8
  %22 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %21) #11
  %23 = load %"class.std::tuple"*, %"class.std::tuple"** %10, align 8
  %24 = call nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %23) #11
  %25 = load %"struct.std::less"*, %"struct.std::less"** %11, align 8
  %26 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %25) #11
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEERS9_DpOT_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %12, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %20, %"struct.std::less"* nonnull align 1 dereferenceable(1) %22, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %24, %"struct.std::less"* nonnull align 1 dereferenceable(1) %26)
  %27 = bitcast %"struct.std::_Rb_tree_iterator"* %14 to i8*
  %28 = bitcast %"struct.std::_Rb_tree_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = invoke nonnull align 4 dereferenceable(4) i32* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_node6_M_keyEv(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %12)
          to label %30 unwind label %54

30:                                               ; preds = %5
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %14, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = invoke { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS1_(%"class.std::_Rb_tree"* %20, %"struct.std::_Rb_tree_node_base"* %32, i32* nonnull align 4 dereferenceable(4) %29)
          to label %34 unwind label %54

34:                                               ; preds = %30
  %35 = bitcast %"struct.std::pair.1"* %13 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %36 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 0
  %37 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 0
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %36, align 8
  %38 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 1
  %39 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 1
  store %"struct.std::_Rb_tree_node_base"* %39, %"struct.std::_Rb_tree_node_base"** %38, align 8
  %40 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %13, i32 0, i32 1
  %41 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %40, align 8
  %42 = icmp ne %"struct.std::_Rb_tree_node_base"* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = bitcast %"struct.std::pair.1"* %17 to i8*
  %45 = bitcast %"struct.std::pair.1"* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = bitcast %"struct.std::pair.1"* %17 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %47 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %46, i32 0, i32 0
  %48 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %47, align 8
  %49 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %46, i32 0, i32 1
  %50 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %49, align 8
  %51 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSC_E(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %12, %"struct.std::_Rb_tree_node_base"* %48, %"struct.std::_Rb_tree_node_base"* %50)
          to label %52 unwind label %54

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %51, %"struct.std::_Rb_tree_node_base"** %53, align 8
  store i32 1, i32* %18, align 4
  br label %61

54:                                               ; preds = %43, %30, %5
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %15, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %16, align 4
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeD2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %12) #11
  br label %64

58:                                               ; preds = %34
  %59 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %13, i32 0, i32 0
  %60 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %59, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %6, %"struct.std::_Rb_tree_node_base"* %60) #11
  store i32 1, i32* %18, align 4
  br label %61

61:                                               ; preds = %58, %52
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeD2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %12) #11
  %62 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %63 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %62, align 8
  ret %"struct.std::_Rb_tree_node_base"* %63

64:                                               ; preds = %54
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %16, align 4
  %67 = insertvalue { i8*, i32 } undef, i8* %65, 0
  %68 = insertvalue { i8*, i32 } %67, i32 %66, 1
  resume { i8*, i32 } %68
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %0) #1 comdat {
  %2 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %2, align 8
  %3 = load %"struct.std::less"*, %"struct.std::less"** %2, align 8
  ret %"struct.std::less"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  ret %"class.std::tuple"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %0) #1 comdat {
  %2 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %2, align 8
  %3 = load %"struct.std::less"*, %"struct.std::less"** %2, align 8
  ret %"struct.std::less"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEERS9_DpOT_(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0, %"class.std::_Rb_tree"* nonnull align 8 dereferenceable(48) %1, %"struct.std::less"* nonnull align 1 dereferenceable(1) %2, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %3, %"struct.std::less"* nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 {
  %6 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, align 8
  %7 = alloca %"class.std::_Rb_tree"*, align 8
  %8 = alloca %"struct.std::less"*, align 8
  %9 = alloca %"class.std::tuple"*, align 8
  %10 = alloca %"struct.std::less"*, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %6, align 8
  store %"class.std::_Rb_tree"* %1, %"class.std::_Rb_tree"** %7, align 8
  store %"struct.std::less"* %2, %"struct.std::less"** %8, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %9, align 8
  store %"struct.std::less"* %4, %"struct.std::less"** %10, align 8
  %11 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %6, align 8
  %12 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %11, i32 0, i32 0
  %13 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %7, align 8
  store %"class.std::_Rb_tree"* %13, %"class.std::_Rb_tree"** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %11, i32 0, i32 1
  %15 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %7, align 8
  %16 = load %"struct.std::less"*, %"struct.std::less"** %8, align 8
  %17 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %16) #11
  %18 = load %"class.std::tuple"*, %"class.std::tuple"** %9, align 8
  %19 = call nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %18) #11
  %20 = load %"struct.std::less"*, %"struct.std::less"** %10, align 8
  %21 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %20) #11
  %22 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %15, %"struct.std::less"* nonnull align 1 dereferenceable(1) %17, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %19, %"struct.std::less"* nonnull align 1 dereferenceable(1) %21)
  store %"struct.std::_Rb_tree_node"* %22, %"struct.std::_Rb_tree_node"** %14, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_node6_M_keyEv(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %3, i32 0, i32 1
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %6 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(%"struct.std::_Rb_tree_node"* %5)
  ret i32* %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS1_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1, i32* nonnull align 4 dereferenceable(4) %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::pair.1", align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %12 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %13 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %14 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %15 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %16, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %18 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKiPiEE13_M_const_castEv(%"struct.std::_Rb_tree_iterator"* %5) #11
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %18, %"struct.std::_Rb_tree_node_base"** %19, align 8
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %22 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(%"class.std::_Rb_tree"* %17) #11
  %23 = icmp eq %"struct.std::_Rb_tree_node_base"* %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE4sizeEv(%"class.std::_Rb_tree"* %17) #11
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %29 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %28 to %"struct.std::_Rb_tree_key_compare"*
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %29, i32 0, i32 0
  %31 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #11
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %30, i32* nonnull align 4 dereferenceable(4) %33, i32* nonnull align 4 dereferenceable(4) %34)
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %37 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #11
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %9, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %37)
  br label %143

38:                                               ; preds = %27, %24
  %39 = load i32*, i32** %7, align 8
  %40 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %17, i32* nonnull align 4 dereferenceable(4) %39)
  %41 = bitcast %"struct.std::pair.1"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %42 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %41, i32 0, i32 0
  %43 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %40, 0
  store %"struct.std::_Rb_tree_node_base"* %43, %"struct.std::_Rb_tree_node_base"** %42, align 8
  %44 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %41, i32 0, i32 1
  %45 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %40, 1
  store %"struct.std::_Rb_tree_node_base"* %45, %"struct.std::_Rb_tree_node_base"** %44, align 8
  br label %143

46:                                               ; preds = %3
  %47 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %48 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %47 to %"struct.std::_Rb_tree_key_compare"*
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %48, i32 0, i32 0
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %52 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %51, align 8
  %53 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %52)
  %54 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %49, i32* nonnull align 4 dereferenceable(4) %50, i32* nonnull align 4 dereferenceable(4) %53)
  br i1 %54, label %55, label %94

55:                                               ; preds = %46
  %56 = bitcast %"struct.std::_Rb_tree_iterator"* %10 to i8*
  %57 = bitcast %"struct.std::_Rb_tree_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %59 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %58, align 8
  %60 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %17) #11
  %61 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %60, align 8
  %62 = icmp eq %"struct.std::_Rb_tree_node_base"* %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %17) #11
  %65 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %17) #11
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %64, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %65)
  br label %143

66:                                               ; preds = %55
  %67 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %68 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %67 to %"struct.std::_Rb_tree_key_compare"*
  %69 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %68, i32 0, i32 0
  %70 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEmmEv(%"struct.std::_Rb_tree_iterator"* %10) #11
  %71 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %70, i32 0, i32 0
  %72 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %71, align 8
  %73 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %69, i32* nonnull align 4 dereferenceable(4) %73, i32* nonnull align 4 dereferenceable(4) %74)
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  %78 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %77, align 8
  %79 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %78) #11
  %80 = icmp eq %"struct.std::_Rb_tree_node"* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %82 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %11, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %82)
  br label %143

83:                                               ; preds = %76
  %84 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %85 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %84, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %85)
  br label %143

86:                                               ; preds = %66
  %87 = load i32*, i32** %7, align 8
  %88 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %17, i32* nonnull align 4 dereferenceable(4) %87)
  %89 = bitcast %"struct.std::pair.1"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %90 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %89, i32 0, i32 0
  %91 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %88, 0
  store %"struct.std::_Rb_tree_node_base"* %91, %"struct.std::_Rb_tree_node_base"** %90, align 8
  %92 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %89, i32 0, i32 1
  %93 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %88, 1
  store %"struct.std::_Rb_tree_node_base"* %93, %"struct.std::_Rb_tree_node_base"** %92, align 8
  br label %143

94:                                               ; preds = %46
  %95 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %96 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %95 to %"struct.std::_Rb_tree_key_compare"*
  %97 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %96, i32 0, i32 0
  %98 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %99 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %98, align 8
  %100 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %97, i32* nonnull align 4 dereferenceable(4) %100, i32* nonnull align 4 dereferenceable(4) %101)
  br i1 %102, label %103, label %141

103:                                              ; preds = %94
  %104 = bitcast %"struct.std::_Rb_tree_iterator"* %12 to i8*
  %105 = bitcast %"struct.std::_Rb_tree_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 8, i1 false)
  %106 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %107 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %106, align 8
  %108 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #11
  %109 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %108, align 8
  %110 = icmp eq %"struct.std::_Rb_tree_node_base"* %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %112 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #11
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %13, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %112)
  br label %143

113:                                              ; preds = %103
  %114 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %115 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %114 to %"struct.std::_Rb_tree_key_compare"*
  %116 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %115, i32 0, i32 0
  %117 = load i32*, i32** %7, align 8
  %118 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEppEv(%"struct.std::_Rb_tree_iterator"* %12) #11
  %119 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %118, i32 0, i32 0
  %120 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %119, align 8
  %121 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %120)
  %122 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %116, i32* nonnull align 4 dereferenceable(4) %117, i32* nonnull align 4 dereferenceable(4) %121)
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %125 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %124, align 8
  %126 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %125) #11
  %127 = icmp eq %"struct.std::_Rb_tree_node"* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %14, align 8
  %129 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %14, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %129)
  br label %143

130:                                              ; preds = %123
  %131 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %12, i32 0, i32 0
  %132 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %12, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %131, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %132)
  br label %143

133:                                              ; preds = %113
  %134 = load i32*, i32** %7, align 8
  %135 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %17, i32* nonnull align 4 dereferenceable(4) %134)
  %136 = bitcast %"struct.std::pair.1"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %137 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %136, i32 0, i32 0
  %138 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %135, 0
  store %"struct.std::_Rb_tree_node_base"* %138, %"struct.std::_Rb_tree_node_base"** %137, align 8
  %139 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %136, i32 0, i32 1
  %140 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %135, 1
  store %"struct.std::_Rb_tree_node_base"* %140, %"struct.std::_Rb_tree_node_base"** %139, align 8
  br label %143

141:                                              ; preds = %94
  %142 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %15, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.1"* %4, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %142, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %15)
  br label %143

143:                                              ; preds = %141, %133, %130, %128, %111, %86, %83, %81, %63, %38, %36
  %144 = bitcast %"struct.std::pair.1"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %145 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %144, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %145
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSC_E(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"* %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::pair.1", align 8
  %6 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, align 8
  %7 = bitcast %"struct.std::pair.1"* %5 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %8 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %9 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %7, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %9, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %6, align 8
  %10 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %6, align 8
  %11 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %10, i32 0, i32 0
  %12 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %11, align 8
  %13 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %5, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %15 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %5, i32 0, i32 1
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %15, align 8
  %17 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %10, i32 0, i32 1
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %17, align 8
  %19 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %12, %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node"* %18)
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %19, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %21 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %10, i32 0, i32 1
  store %"struct.std::_Rb_tree_node"* null, %"struct.std::_Rb_tree_node"** %21, align 8
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  %23 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %22, align 8
  ret %"struct.std::_Rb_tree_node_base"* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_Auto_nodeD2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %3, i32 0, i32 1
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %6 = icmp ne %"struct.std::_Rb_tree_node"* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %3, i32 0, i32 0
  %9 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node", %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Auto_node"* %3, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %10, align 8
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %9, %"struct.std::_Rb_tree_node"* %11) #11
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_node_base"* %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node"* %3) #0 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %10 = alloca i8, align 1
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"struct.std::_Rb_tree_node"* %3, %"struct.std::_Rb_tree_node"** %9, align 8
  %11 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node_base"* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %16 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(%"class.std::_Rb_tree"* %11) #11
  %17 = icmp eq %"struct.std::_Rb_tree_node_base"* %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %11, i32 0, i32 0
  %20 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %19 to %"struct.std::_Rb_tree_key_compare"*
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %20, i32 0, i32 0
  %22 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %23 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(%"struct.std::_Rb_tree_node"* %22)
  %24 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %25 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %24)
  %26 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %21, i32* nonnull align 4 dereferenceable(4) %23, i32* nonnull align 4 dereferenceable(4) %25)
  br label %27

27:                                               ; preds = %18, %14, %4
  %28 = phi i1 [ true, %14 ], [ true, %4 ], [ %26, %18 ]
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %10, align 1
  %30 = load i8, i8* %10, align 1
  %31 = trunc i8 %30 to i1
  %32 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %33 = bitcast %"struct.std::_Rb_tree_node"* %32 to %"struct.std::_Rb_tree_node_base"*
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %35 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %11, i32 0, i32 0
  %36 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  %38 = bitcast i8* %37 to %"struct.std::_Rb_tree_header"*
  %39 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %38, i32 0, i32 0
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %31, %"struct.std::_Rb_tree_node_base"* %33, %"struct.std::_Rb_tree_node_base"* %34, %"struct.std::_Rb_tree_node_base"* nonnull align 8 dereferenceable(32) %39) #11
  %40 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %11, i32 0, i32 0
  %41 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = bitcast i8* %42 to %"struct.std::_Rb_tree_header"*
  %44 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %48 = bitcast %"struct.std::_Rb_tree_node"* %47 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %5, %"struct.std::_Rb_tree_node_base"* %48) #11
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %50 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %49, align 8
  ret %"struct.std::_Rb_tree_node_base"* %50
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(%"struct.std::_Rb_tree_node"* %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %"struct.std::less", align 1
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %5 = call %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %4)
  %6 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt10_Select1stISt4pairIKiPiEEclERKS3_(%"struct.std::less"* %3, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %5)
  ret i32* %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node_base"* %3 to %"struct.std::_Rb_tree_node"*
  %5 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(%"struct.std::_Rb_tree_node"* %4)
  ret i32* %5
}

; Function Attrs: nounwind
declare dso_local void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* nonnull align 8 dereferenceable(32)) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  %5 = call %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %4) #11
  ret %"struct.std::pair"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNKSt10_Select1stISt4pairIKiPiEEclERKS3_(%"struct.std::less"* %0, %"struct.std::pair"* nonnull align 8 dereferenceable(16) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::less"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::less"*, %"struct.std::less"** %3, align 8
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %7 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %6, i32 0, i32 0
  ret i32* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #11
  %5 = bitcast i8* %4 to %"struct.std::pair"*
  ret %"struct.std::pair"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [16 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKiPiEE13_M_const_castEv(%"struct.std::_Rb_tree_iterator"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %4 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %5, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %2, %"struct.std::_Rb_tree_node_base"* %6) #11
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE4sizeEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.1"* %0, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.1"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.1"* %0, %"struct.std::pair.1"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"** %1, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.1"*, %"struct.std::pair.1"** %4, align 8
  %8 = bitcast %"struct.std::pair.1"* %7 to %"struct.std::less"*
  %9 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %12 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %7, i32 0, i32 1
  %13 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %13, align 8
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %0, i32* nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::pair.1", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(%"class.std::_Rb_tree"* %12) #11
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %6, align 8
  %14 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(%"class.std::_Rb_tree"* %12) #11
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store i8 1, i8* %8, align 1
  br label %15

15:                                               ; preds = %39, %2
  %16 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %17 = icmp ne %"struct.std::_Rb_tree_node"* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %20, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %21 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %12, i32 0, i32 0
  %22 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %21 to %"struct.std::_Rb_tree_key_compare"*
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %22, i32 0, i32 0
  %24 = load i32*, i32** %5, align 8
  %25 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %26 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(%"struct.std::_Rb_tree_node"* %25)
  %27 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %23, i32* nonnull align 4 dereferenceable(4) %24, i32* nonnull align 4 dereferenceable(4) %26)
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = load i8, i8* %8, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %33 = bitcast %"struct.std::_Rb_tree_node"* %32 to %"struct.std::_Rb_tree_node_base"*
  %34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %33) #11
  br label %39

35:                                               ; preds = %18
  %36 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %37 = bitcast %"struct.std::_Rb_tree_node"* %36 to %"struct.std::_Rb_tree_node_base"*
  %38 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %37) #11
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi %"struct.std::_Rb_tree_node"* [ %34, %31 ], [ %38, %35 ]
  store %"struct.std::_Rb_tree_node"* %40, %"struct.std::_Rb_tree_node"** %6, align 8
  br label %15

41:                                               ; preds = %15
  %42 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %9, %"struct.std::_Rb_tree_node_base"* %42) #11
  %43 = load i8, i8* %8, align 1
  %44 = trunc i8 %43 to i1
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE5beginEv(%"class.std::_Rb_tree"* %12) #11
  %47 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %46, %"struct.std::_Rb_tree_node_base"** %47, align 8
  %48 = call zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiPiEES6_(%"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %9, %"struct.std::_Rb_tree_iterator"* nonnull align 8 dereferenceable(8) %10) #11
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiPiEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.1"* %3, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %7)
  br label %65

50:                                               ; preds = %45
  %51 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEmmEv(%"struct.std::_Rb_tree_iterator"* %9) #11
  br label %52

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %41
  %54 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %12, i32 0, i32 0
  %55 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %54 to %"struct.std::_Rb_tree_key_compare"*
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %55, i32 0, i32 0
  %57 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %9, i32 0, i32 0
  %58 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %57, align 8
  %59 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %56, i32* nonnull align 4 dereferenceable(4) %59, i32* nonnull align 4 dereferenceable(4) %60)
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiPiEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.1"* %3, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %7)
  br label %65

63:                                               ; preds = %53
  %64 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %11, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.1"* %3, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %64, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %11)
  br label %65

65:                                               ; preds = %63, %62, %49
  %66 = bitcast %"struct.std::pair.1"* %3 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %67 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %66, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %67
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.1"* %0, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.1"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.1"* %0, %"struct.std::pair.1"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"** %1, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.1"*, %"struct.std::pair.1"** %4, align 8
  %8 = bitcast %"struct.std::pair.1"* %7 to %"struct.std::less"*
  %9 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  %11 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %10) #11
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %11, align 8
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %13 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %7, i32 0, i32 1
  %14 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %15 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %14) #11
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %15, align 8
  store %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node_base"** %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEmmEv(%"struct.std::_Rb_tree_iterator"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5) #16
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_iterator"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEppEv(%"struct.std::_Rb_tree_iterator"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5) #16
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_iterator"* %3
}

; Function Attrs: nounwind readonly
declare dso_local %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #8

; Function Attrs: nounwind readonly
declare dso_local %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::_Rb_tree_node_base"** %0, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  ret %"struct.std::_Rb_tree_node_base"** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE5beginEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  %4 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %9, i32 0, i32 2
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %2, %"struct.std::_Rb_tree_node_base"* %11) #11
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiPiEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.1"* %0, %"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.1"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.1"* %0, %"struct.std::pair.1"** %4, align 8
  store %"struct.std::_Rb_tree_node"** %1, %"struct.std::_Rb_tree_node"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.1"*, %"struct.std::pair.1"** %4, align 8
  %8 = bitcast %"struct.std::pair.1"* %7 to %"struct.std::less"*
  %9 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %5, align 8
  %11 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKiPiEEEOT_RNSt16remove_referenceIS8_E4typeE(%"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %10) #11
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %11, align 8
  %13 = bitcast %"struct.std::_Rb_tree_node"* %12 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %13, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %14 = getelementptr inbounds %"struct.std::pair.1", %"struct.std::pair.1"* %7, i32 0, i32 1
  %15 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %16 = call nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** nonnull align 8 dereferenceable(8) %15) #11
  %17 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %16, align 8
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKiPiEEEOT_RNSt16remove_referenceIS8_E4typeE(%"struct.std::_Rb_tree_node"** nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::_Rb_tree_node"** %0, %"struct.std::_Rb_tree_node"*** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %2, align 8
  ret %"struct.std::_Rb_tree_node"** %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::less"* nonnull align 1 dereferenceable(1) %1, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %2, %"struct.std::less"* nonnull align 1 dereferenceable(1) %3) #0 comdat align 2 {
  %5 = alloca %"class.std::_Rb_tree"*, align 8
  %6 = alloca %"struct.std::less"*, align 8
  %7 = alloca %"class.std::tuple"*, align 8
  %8 = alloca %"struct.std::less"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %5, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %6, align 8
  store %"class.std::tuple"* %2, %"class.std::tuple"** %7, align 8
  store %"struct.std::less"* %3, %"struct.std::less"** %8, align 8
  %10 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %5, align 8
  %11 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %10)
  store %"struct.std::_Rb_tree_node"* %11, %"struct.std::_Rb_tree_node"** %9, align 8
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %13 = load %"struct.std::less"*, %"struct.std::less"** %6, align 8
  %14 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %13) #11
  %15 = load %"class.std::tuple"*, %"class.std::tuple"** %7, align 8
  %16 = call nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %15) #11
  %17 = load %"struct.std::less"*, %"struct.std::less"** %8, align 8
  %18 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %17) #11
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %10, %"struct.std::_Rb_tree_node"* %12, %"struct.std::less"* nonnull align 1 dereferenceable(1) %14, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %16, %"struct.std::less"* nonnull align 1 dereferenceable(1) %18)
  %19 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  ret %"struct.std::_Rb_tree_node"* %19
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::less"* nonnull align 1 dereferenceable(1) %2, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %3, %"struct.std::less"* nonnull align 1 dereferenceable(1) %4) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %8 = alloca %"struct.std::less"*, align 8
  %9 = alloca %"class.std::tuple"*, align 8
  %10 = alloca %"struct.std::less"*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %7, align 8
  store %"struct.std::less"* %2, %"struct.std::less"** %8, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %9, align 8
  store %"struct.std::less"* %4, %"struct.std::less"** %10, align 8
  %13 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to i8*
  %16 = bitcast i8* %15 to %"struct.std::_Rb_tree_node"*
  %17 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %13) #11
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %19 = invoke %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKiPiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %18)
          to label %20 unwind label %28

20:                                               ; preds = %5
  %21 = load %"struct.std::less"*, %"struct.std::less"** %8, align 8
  %22 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %21) #11
  %23 = load %"class.std::tuple"*, %"class.std::tuple"** %9, align 8
  %24 = call nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %23) #11
  %25 = load %"struct.std::less"*, %"struct.std::less"** %10, align 8
  %26 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %25) #11
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvRS6_PT_DpOT0_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %17, %"struct.std::pair"* %19, %"struct.std::less"* nonnull align 1 dereferenceable(1) %22, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %24, %"struct.std::less"* nonnull align 1 dereferenceable(1) %26)
          to label %27 unwind label %28

27:                                               ; preds = %20
  br label %42

28:                                               ; preds = %20, %5
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %11, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %11, align 8
  %34 = call i8* @__cxa_begin_catch(i8* %33) #11
  %35 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %36 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(%"class.std::_Rb_tree"* %13, %"struct.std::_Rb_tree_node"* %36) #11
  invoke void @__cxa_rethrow() #14
          to label %51 unwind label %37

37:                                               ; preds = %32
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %11, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %12, align 4
  invoke void @__cxa_end_catch()
          to label %41 unwind label %48

41:                                               ; preds = %37
  br label %43

42:                                               ; preds = %27
  ret void

43:                                               ; preds = %41
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = insertvalue { i8*, i32 } undef, i8* %44, 0
  %47 = insertvalue { i8*, i32 } %46, i32 %45, 1
  resume { i8*, i32 } %47

48:                                               ; preds = %37
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #12
  unreachable

51:                                               ; preds = %32
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPiEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvRS6_PT_DpOT0_(%"struct.std::less"* nonnull align 1 dereferenceable(1) %0, %"struct.std::pair"* %1, %"struct.std::less"* nonnull align 1 dereferenceable(1) %2, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %3, %"struct.std::less"* nonnull align 1 dereferenceable(1) %4) #0 comdat align 2 {
  %6 = alloca %"struct.std::less"*, align 8
  %7 = alloca %"struct.std::pair"*, align 8
  %8 = alloca %"struct.std::less"*, align 8
  %9 = alloca %"class.std::tuple"*, align 8
  %10 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %6, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %7, align 8
  store %"struct.std::less"* %2, %"struct.std::less"** %8, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %9, align 8
  store %"struct.std::less"* %4, %"struct.std::less"** %10, align 8
  %11 = load %"struct.std::less"*, %"struct.std::less"** %6, align 8
  %12 = bitcast %"struct.std::less"* %11 to %"struct.std::less"*
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %14 = load %"struct.std::less"*, %"struct.std::less"** %8, align 8
  %15 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %14) #11
  %16 = load %"class.std::tuple"*, %"class.std::tuple"** %9, align 8
  %17 = call nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %16) #11
  %18 = load %"struct.std::less"*, %"struct.std::less"** %10, align 8
  %19 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %18) #11
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESB_IJEEEEEvPT_DpOT0_(%"struct.std::less"* %12, %"struct.std::pair"* %13, %"struct.std::less"* nonnull align 1 dereferenceable(1) %15, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %17, %"struct.std::less"* nonnull align 1 dereferenceable(1) %19)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESB_IJEEEEEvPT_DpOT0_(%"struct.std::less"* %0, %"struct.std::pair"* %1, %"struct.std::less"* nonnull align 1 dereferenceable(1) %2, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %3, %"struct.std::less"* nonnull align 1 dereferenceable(1) %4) #0 comdat align 2 {
  %6 = alloca %"struct.std::less"*, align 8
  %7 = alloca %"struct.std::pair"*, align 8
  %8 = alloca %"struct.std::less"*, align 8
  %9 = alloca %"class.std::tuple"*, align 8
  %10 = alloca %"struct.std::less"*, align 8
  %11 = alloca %"struct.std::less", align 1
  %12 = alloca %"class.std::tuple", align 8
  %13 = alloca %"struct.std::less", align 1
  store %"struct.std::less"* %0, %"struct.std::less"** %6, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %7, align 8
  store %"struct.std::less"* %2, %"struct.std::less"** %8, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %9, align 8
  store %"struct.std::less"* %4, %"struct.std::less"** %10, align 8
  %14 = load %"struct.std::less"*, %"struct.std::less"** %6, align 8
  %15 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %16 = bitcast %"struct.std::pair"* %15 to i8*
  %17 = bitcast i8* %16 to %"struct.std::pair"*
  %18 = load %"struct.std::less"*, %"struct.std::less"** %8, align 8
  %19 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %18) #11
  %20 = load %"class.std::tuple"*, %"class.std::tuple"** %9, align 8
  %21 = call nonnull align 8 dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %20) #11
  call void @_ZNSt5tupleIJOiEEC2EOS1_(%"class.std::tuple"* %12, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %21) #11
  %22 = load %"struct.std::less"*, %"struct.std::less"** %10, align 8
  %23 = call nonnull align 1 dereferenceable(1) %"struct.std::less"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"struct.std::less"* nonnull align 1 dereferenceable(1) %22) #11
  call void @_ZNSt4pairIKiPiEC2IJOiEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE(%"struct.std::pair"* %17, %"class.std::tuple"* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJOiEEC2EOS1_(%"class.std::tuple"* %0, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::tuple"*, align 8
  %4 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %3, align 8
  store %"class.std::tuple"* %1, %"class.std::tuple"** %4, align 8
  %5 = load %"class.std::tuple"*, %"class.std::tuple"** %3, align 8
  %6 = bitcast %"class.std::tuple"* %5 to %"struct.std::_Tuple_impl"*
  %7 = load %"class.std::tuple"*, %"class.std::tuple"** %4, align 8
  %8 = bitcast %"class.std::tuple"* %7 to %"struct.std::_Tuple_impl"*
  call void @_ZNSt11_Tuple_implILm0EJOiEEC2EOS1_(%"struct.std::_Tuple_impl"* %6, %"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %8) #11
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKiPiEC2IJOiEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE(%"struct.std::pair"* %0, %"class.std::tuple"* %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::less", align 1
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca %"struct.std::less", align 1
  %7 = alloca %"struct.std::less", align 1
  store %"struct.std::pair"* %0, %"struct.std::pair"** %5, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  call void @_ZNSt4pairIKiPiEC2IJOiEJLm0EEJEJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE(%"struct.std::pair"* %8, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %1, %"struct.std::less"* nonnull align 1 dereferenceable(1) %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKiPiEC2IJOiEJLm0EEJEJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE(%"struct.std::pair"* %0, %"class.std::tuple"* nonnull align 8 dereferenceable(8) %1, %"struct.std::less"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca %"struct.std::less", align 1
  %6 = alloca %"struct.std::pair"*, align 8
  %7 = alloca %"class.std::tuple"*, align 8
  %8 = alloca %"struct.std::less"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %6, align 8
  store %"class.std::tuple"* %1, %"class.std::tuple"** %7, align 8
  store %"struct.std::less"* %2, %"struct.std::less"** %8, align 8
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %10 = bitcast %"struct.std::pair"* %9 to %"struct.std::less"*
  %11 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %9, i32 0, i32 0
  %12 = load %"class.std::tuple"*, %"class.std::tuple"** %7, align 8
  %13 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3getILm0EJOiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %12) #11
  %14 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE(i32* nonnull align 4 dereferenceable(4) %13) #11
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 8
  %16 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %9, i32 0, i32 1
  store i32* null, i32** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3getILm0EJOiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_(%"class.std::tuple"* nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl"*
  %5 = call nonnull align 4 dereferenceable(4) i32* @_ZSt12__get_helperILm0EOiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %4) #11
  ret i32* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE(i32* nonnull align 4 dereferenceable(4) %0) #1 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt12__get_helperILm0EOiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt11_Tuple_implILm0EJOiEE7_M_headERS1_(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %3) #11
  ret i32* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt11_Tuple_implILm0EJOiEE7_M_headERS1_(%"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Tuple_impl"* %3 to %"struct.std::_Head_base"*
  %5 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt10_Head_baseILm0EOiLb0EE7_M_headERS1_(%"struct.std::_Head_base"* nonnull align 8 dereferenceable(8) %4) #11
  ret i32* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt10_Head_baseILm0EOiLb0EE7_M_headERS1_(%"struct.std::_Head_base"* nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %0, %"struct.std::_Head_base"** %2, align 8
  %3 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  ret i32* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJOiEEC2EOS1_(%"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Tuple_impl"*, align 8
  %4 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %3, align 8
  store %"struct.std::_Tuple_impl"* %1, %"struct.std::_Tuple_impl"** %4, align 8
  %5 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %3, align 8
  %6 = bitcast %"struct.std::_Tuple_impl"* %5 to %"struct.std::_Head_base"*
  %7 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %4, align 8
  %8 = bitcast %"struct.std::_Tuple_impl"* %7 to %"struct.std::_Head_base"*
  %9 = bitcast %"struct.std::_Head_base"* %6 to i8*
  %10 = bitcast %"struct.std::_Head_base"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %0) #1 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJOiEEC2IJiELb1ELb1EEEDpOT_(%"class.std::tuple"* %0, i32* nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::tuple"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::tuple"*, %"class.std::tuple"** %3, align 8
  %6 = bitcast %"class.std::tuple"* %5 to %"struct.std::_Tuple_impl"*
  %7 = load i32*, i32** %4, align 8
  %8 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %7) #11
  invoke void @_ZNSt11_Tuple_implILm0EJOiEEC2IiEEOT_(%"struct.std::_Tuple_impl"* %6, i32* nonnull align 4 dereferenceable(4) %8)
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #12
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJOiEEC2IiEEOT_(%"struct.std::_Tuple_impl"* %0, i32* nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::_Tuple_impl"*, align 8
  %4 = alloca i32*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %3, align 8
  %6 = bitcast %"struct.std::_Tuple_impl"* %5 to %"struct.std::_Head_base"*
  %7 = load i32*, i32** %4, align 8
  %8 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %7) #11
  call void @_ZNSt10_Head_baseILm0EOiLb0EEC2IiEEOT_(%"struct.std::_Head_base"* %6, i32* nonnull align 4 dereferenceable(4) %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EOiLb0EEC2IiEEOT_(%"struct.std::_Head_base"* %0, i32* nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Head_base"*, align 8
  %4 = alloca i32*, align 8
  store %"struct.std::_Head_base"* %0, %"struct.std::_Head_base"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %5, i32 0, i32 0
  %7 = load i32*, i32** %4, align 8
  %8 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %7) #11
  store i32* %8, i32** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8key_compEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4 to %"struct.std::_Rb_tree_key_compare"*
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %5, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE3endEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  %4 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %2, %"struct.std::_Rb_tree_node_base"* %9) #11
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE11lower_boundERS1_(%"class.std::_Rb_tree"* %0, i32* nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca i32*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(%"class.std::_Rb_tree"* %6) #11
  %8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(%"class.std::_Rb_tree"* %6) #11
  %9 = load i32*, i32** %5, align 8
  %10 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS1_(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %7, %"struct.std::_Rb_tree_node_base"* %8, i32* nonnull align 4 dereferenceable(4) %9)
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS1_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node_base"* %2, i32* nonnull align 4 dereferenceable(4) %3) #0 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca i32*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  br label %11

11:                                               ; preds = %32, %4
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node"* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %16 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %15 to %"struct.std::_Rb_tree_key_compare"*
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %16, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %19 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(%"struct.std::_Rb_tree_node"* %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %17, i32* nonnull align 4 dereferenceable(4) %19, i32* nonnull align 4 dereferenceable(4) %20)
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %25 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %26 = bitcast %"struct.std::_Rb_tree_node"* %25 to %"struct.std::_Rb_tree_node_base"*
  %27 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %26) #11
  store %"struct.std::_Rb_tree_node"* %27, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %30 = bitcast %"struct.std::_Rb_tree_node"* %29 to %"struct.std::_Rb_tree_node_base"*
  %31 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %30) #11
  store %"struct.std::_Rb_tree_node"* %31, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %11

33:                                               ; preds = %11
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %5, %"struct.std::_Rb_tree_node_base"* %34) #11
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %36 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %35, align 8
  ret %"struct.std::_Rb_tree_node_base"* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2Ev(%"class.std::_Rb_tree"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %4) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPiESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(%"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %3 to %"struct.std::less"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEEC2Ev(%"struct.std::less"* %4) #11
  %5 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %3 to %"struct.std::_Rb_tree_key_compare"*
  call void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %5) #11
  %6 = bitcast %"struct.std::_Rb_tree<int, std::pair<const int, int *>, std::_Select1st<std::pair<const int, int *>>, std::less<int>, std::allocator<std::pair<const int, int *>>>::_Rb_tree_impl"* %3 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  call void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %8) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPiEEEC2Ev(%"struct.std::less"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %2, align 8
  %3 = load %"struct.std::less"*, %"struct.std::less"** %2, align 8
  %4 = bitcast %"struct.std::less"* %3 to %"struct.std::less"*
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEEC2Ev(%"struct.std::less"* %4) #11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_key_compare"*, align 8
  store %"struct.std::_Rb_tree_key_compare"* %0, %"struct.std::_Rb_tree_key_compare"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_key_compare"*, %"struct.std::_Rb_tree_key_compare"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %3, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKiPiEEEC2Ev(%"struct.std::less"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::less"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %2, align 8
  %3 = load %"struct.std::less"*, %"struct.std::less"** %2, align 8
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #9 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #11
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #11
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_744goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #7

; Function Attrs: nounwind
declare dso_local void @srand(i32) #7

declare dso_local void @printLine(i8*) #10

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_7411goodG2BSinkESt3mapIiPiSt4lessIiESaISt4pairIKiS1_EEE(%"class.std::map"* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 2, i32* %3, align 4
  %4 = call nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %0, i32* nonnull align 4 dereferenceable(4) %3)
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  ret void
}

declare dso_local void @printIntLine(i32) #10

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_7411goodB2GSinkESt3mapIiPiSt4lessIiESaISt4pairIKiS1_EEE(%"class.std::map"* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 2, i32* %3, align 4
  %4 = call nonnull align 8 dereferenceable(8) i32** @_ZNSt3mapIiPiSt4lessIiESaISt4pairIKiS0_EEEixEOi(%"class.std::map"* %0, i32* nonnull align 4 dereferenceable(4) %3)
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  call void @printIntLine(i32 %10)
  br label %12

11:                                               ; preds = %1
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
