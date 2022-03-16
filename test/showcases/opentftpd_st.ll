; ModuleID = './test/showcases/opentftpd_st.bc'
source_filename = "opentftpd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::multimap" = type { %"class.std::_Rb_tree.0" }
%"class.std::_Rb_tree.0" = type { %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.4", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.4" = type { %"struct.std::less.5" }
%"struct.std::less.5" = type { i8 }
%struct.data1 = type { [8 x %struct.tftpConnType], [8 x i32], [8 x i32], [8 x i32], [8 x i16], i8, i8, i32 }
%struct.tftpConnType = type { i32, %struct.sockaddr_in, i32, i16, i8, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.data2 = type { [32 x %struct.data12], [8 x %struct.home], %struct._IO_FILE*, [128 x i8], i32, i32, i8, i8, i8, i32, i8, i32, i32, [8 x %struct.ifreq], i8, i32, [8 x i32], i8 }
%struct.data12 = type { i32, i32 }
%struct.home = type { [64 x i8], [256 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ifreq = type { %union.anon, %union.anon.7 }
%union.anon = type { [16 x i8] }
%union.anon.7 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.ifconf = type { i32, %union.anon.8 }
%union.anon.8 = type { i8* }
%struct.packet = type { i16, i16, i8 }
%"struct.std::piecewise_construct_t" = type { i8 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.request = type { [32 x i8], i8, i8, i8, i64, [256 x i8], %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i16, i16, i32, [2 x i16], i32, %struct.sockaddr_in, i32, [2 x %struct.packet*], %union.anon.9 }
%union.anon.9 = type { %struct.message }
%struct.message = type { i16, [514 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon.13 }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon.13 = type { i64, [8 x i8] }
%"class.std::allocator.10" = type { i8 }
%"struct.std::pair" = type { i64, %struct.request* }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.acknowledgement = type { i16, i16 }
%struct.tftperror = type { i16, i16, [508 x i8] }
%"struct.std::pair.14" = type { i64, %struct.request* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%"struct.std::_Rb_tree_iterator.23" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"class.std::__cxx11::basic_string"* }
%"class.std::tuple.24" = type { i8 }
%"struct.std::pair.18" = type { %"class.std::__cxx11::basic_string", %struct.request* }
%"class.std::__pair_base" = type { i8 }
%"struct.std::_Rb_tree_node.21" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.22" }
%"struct.__gnu_cxx::__aligned_membuf.22" = type { [16 x i8] }
%struct.data15 = type { %union.anon.17 }
%union.anon.17 = type { i32 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }
%"class.std::allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.2" = type { i8 }
%"struct.std::pair.25" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::_Index_tuple" = type { i8 }
%"struct.std::_Index_tuple.28" = type { i8 }
%"class.std::__pair_base.19" = type { i8 }
%"class.std::__pair_base.26" = type { i8 }
%"struct.std::pair.29" = type { %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23" }
%"class.std::__pair_base.30" = type { i8 }
%"struct.std::_Select1st.32" = type { i8 }
%"class.std::__pair_base.15" = type { i8 }
%"struct.std::_Rb_tree_const_iterator.34" = type { %"struct.std::_Rb_tree_node_base"* }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev = comdat any

$_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEEC2Ev = comdat any

$_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseERSB_ = comdat any

$_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE6insertIS4_IlS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueESt17_Rb_tree_iteratorIS6_EE4typeEOSC_ = comdat any

$_ZNSt4pairIlP7requestEC2IRlRS1_Lb1EEEOT_OT0_ = comdat any

$_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5beginEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2Ev = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEneERKS5_ = comdat any

$_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE3endEv = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi = comdat any

$_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS6_E = comdat any

$_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE7destroyISB_EEvRSD_PT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE7destroyISC_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE10deallocateERSD_PSC_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE10deallocateEPSD_m = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEED2Ev = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EEC2Ev = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIlEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEEC2Ev = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EED2Ev = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE7destroyIS5_EEvRS7_PT_ = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE7destroyIS6_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE10deallocateERS7_PS6_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE10deallocateEPS7_m = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKlP7requestEEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEED2Ev = comdat any

$_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZSt7forwardIRP7requestEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEdeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2ERKSt17_Rb_tree_iteratorISA_E = comdat any

$_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_ = comdat any

$_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEclERKSA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_valueEPKSt13_Rb_tree_nodeISA_E = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE = comdat any

$_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE8allocateERSD_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESJ_IJEEEEEvRSD_PT_DpOT0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESJ_IJEEEEEvPT_DpOT0_ = comdat any

$_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEC2IJOS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE = comdat any

$_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_ = comdat any

$_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE = comdat any

$_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_ = comdat any

$_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_ = comdat any

$_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS7_ = comdat any

$_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEC2IJOS5_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE = comdat any

$_ZSt3getILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_ = comdat any

$_ZSt12__get_helperILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEppEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_valueEPKSt18_Rb_tree_node_base = comdat any

$_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEERS1_Lb1EEEOT_OT0_ = comdat any

$_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEOT_RNSt16remove_referenceISF_E4typeE = comdat any

$_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJS5_ELb1EEEDpOT_ = comdat any

$_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5eraseERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11equal_rangeERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEESB_EC2ISB_SB_Lb1EEEOT_OT0_ = comdat any

$_ZSt7forwardISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEOT_RNSt16remove_referenceISD_E4typeE = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEneERKSB_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEppEi = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE16_M_emplace_equalIJS0_IlS3_EEEESt17_Rb_tree_iteratorIS4_EDpOT_ = comdat any

$_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE14_M_create_nodeIJS0_IlS3_EEEEPSt13_Rb_tree_nodeIS4_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE23_M_get_insert_equal_posERS1_ = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE17_M_construct_nodeIJS0_IlS3_EEEEvPSt13_Rb_tree_nodeIS4_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE8allocateERS7_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE9constructIS5_JS1_IlS4_EEEEvRS7_PT_DpOT0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE9constructIS6_JS2_IlS5_EEEEvPT_DpOT0_ = comdat any

$_ZNSt4pairIKlP7requestEC2IlS2_Lb1EEEOS_IT_T0_E = comdat any

$_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE = comdat any

$_ZSt7forwardIP7requestEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_M_endEv = comdat any

$_ZNKSt4lessIlEclERKlS2_ = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKlP7requestEERS1_Lb1EEEOT_OT0_ = comdat any

$_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKlP7requestEEEOT_RNSt16remove_referenceIS9_E4typeE = comdat any

$_ZNKSt10_Select1stISt4pairIKlP7requestEEclERKS4_ = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE5beginEv = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE3endEv = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS4_E = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEv = comdat any

$_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS4_E = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKlP7requestEEC2ERKSt17_Rb_tree_iteratorIS4_E = comdat any

@kRunning = global i8 1, align 1
@_Z9tftpCacheB5cxx11 = global %"class.std::map" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@tftpAge = global %"class.std::multimap" zeroinitializer, align 8
@verbatim = global i8 0, align 1
@iniFile = global [256 x i8] zeroinitializer, align 16
@logFile = global [256 x i8] zeroinitializer, align 16
@fileSep = global i8 47, align 1
@notFileSep = global i8 92, align 1
@blksize = global i16 -72, align 2
@timeout = global i16 3, align 2
@network = global %struct.data1 zeroinitializer, align 4
@newNetwork = global %struct.data1 zeroinitializer, align 4
@cfig = global %struct.data2 zeroinitializer, align 8
@Ifc = global %struct.ifconf zeroinitializer, align 8
@IfcBuf = global [8 x %struct.ifreq] zeroinitializer, align 16
@tempbuff = global [256 x i8] zeroinitializer, align 16
@extbuff = global [256 x i8] zeroinitializer, align 16
@logBuff = global [512 x i8] zeroinitializer, align 16
@loggingDay = global i16 0, align 2
@sVersion = global [52 x i8] c"TFTP Server SinglePort Version 1.66 Unix Built 2003\00", align 16
@datain = global %struct.packet* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error: Invalid Argument %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"/etc/opentftp.ini\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Error: Main Thread Creation Failed with error %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Memory Error\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Error: Incoming Packet too large\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Error %i at Client, %s\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Unexpected Option Code %u\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Unknown transfer ID\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Large File, Block# Rollover not supported by Client\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"closing Network Connections...\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"TFTP Server Stopped !\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Access Denied\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Malformed Request, Invalid/Missing Filename\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Malformed Request, Invalid/Missing Mode\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Access violation\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Filename too large\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Missing directory/alias\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"No such directory/alias %s\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"GET Access Denied\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"netascii\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"No Such File/No Access\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"PUT Access Denied\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"File already exists\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Create File Access Denied\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Invalid Path or No Access\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"tsize\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"Communication Error\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Client %s %s, %i Blocks Served\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Disk full or allocation exceeded\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"Client %s %s, %u Blocks Received\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"/\\?*\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"LOGGING\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"Errors\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"Section [LOGGING], Invalid LogLevel: %s\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"%s Starting..\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"Warning: file %s not found, defaults will be used\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.61 = private unnamed_addr constant [60 x i8] c"Section [HOME], alias and bare path mixup, entry %s ignored\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"Section [HOME], invalid chars in alias %s, entry ignored\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"Section [HOME], Duplicate Entry: %s ignored\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"Section [HOME], alias name %s too large\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"Section [HOME], Duplicate Path: %s ignored\00", align 1
@.str.66 = private unnamed_addr constant [58 x i8] c"Section [HOME], missing = sign, Invalid Entry: %s ignored\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"TFTP-OPTIONS\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"/home/\00", align 1
@.str.71 = private unnamed_addr constant [55 x i8] c"Section [TFTP-OPTIONS], unknown username: %s, stopping\00", align 1
@.str.72 = private unnamed_addr constant [55 x i8] c"Section [TFTP-OPTIONS], invalid username: %s, stopping\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"Yy\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Overwrite\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"Warning: unknown option %s, ignored\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"ALLOWED-CLIENTS\00", align 1
@.str.79 = private unnamed_addr constant [64 x i8] c"Section [ALLOWED-CLIENTS] Invalid entry %s in ini file, ignored\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"username: %s\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"alias /%s is mapped to %s\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"permitted clients: \00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"%s-\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"permitted clients: all\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"max blksize: %u\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"default blksize: %u\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"default timeout: %u\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"file read allowed: %s\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"file create allowed: %s\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"file overwrite allowed: %s\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"logging: %s\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"Failed to Create Socket\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"LISTEN-ON\00", align 1
@.str.98 = private unnamed_addr constant [68 x i8] c"Warning: Section [LISTEN-ON], Invalid Interface Address %s, ignored\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"detecting Interfaces..\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"%s Port %i bind failed, %s\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"No Static Interface ready, Waiting...\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"listening on: %s:%i\00", align 1
@.str.103 = private unnamed_addr constant [53 x i8] c"Network changed, re-detecting Listening Interfaces..\00", align 1
@.str.104 = private unnamed_addr constant [39 x i8] c"Retrying failed Listening Interfaces..\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"Logging Continued on file %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"%d-%b-%y %X\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"Client %s:%u %s, %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"Client %s:%u, %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"[%s] Client %s:%u %s, %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"[%s] Client %s:%u, %s\0A\00", align 1
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" undef, align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_opentftpd.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev(%"class.std::map"* @_Z9tftpCacheB5cxx11) #2
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::map"*)* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::map", %"class.std::map"* @_Z9tftpCacheB5cxx11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev(%"class.std::map"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %2, align 8
  %3 = load %"class.std::map"*, %"class.std::map"** %2, align 8
  %4 = getelementptr inbounds %"class.std::map", %"class.std::map"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev(%"class.std::_Rb_tree"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(%"class.std::map"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %2, align 8
  %3 = load %"class.std::map"*, %"class.std::map"** %2, align 8
  %4 = getelementptr inbounds %"class.std::map", %"class.std::map"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(%"class.std::_Rb_tree"* %4) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
  call void @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEEC2Ev(%"class.std::multimap"* @tftpAge) #2
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::multimap"*)* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEED2Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::multimap", %"class.std::multimap"* @tftpAge, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEEC2Ev(%"class.std::multimap"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::multimap"*, align 8
  store %"class.std::multimap"* %0, %"class.std::multimap"** %2, align 8
  %3 = load %"class.std::multimap"*, %"class.std::multimap"** %2, align 8
  %4 = getelementptr inbounds %"class.std::multimap", %"class.std::multimap"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EEC2Ev(%"class.std::_Rb_tree.0"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEED2Ev(%"class.std::multimap"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::multimap"*, align 8
  store %"class.std::multimap"* %0, %"class.std::multimap"** %2, align 8
  %3 = load %"class.std::multimap"*, %"class.std::multimap"** %2, align 8
  %4 = getelementptr inbounds %"class.std::multimap", %"class.std::multimap"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EED2Ev(%"class.std::_Rb_tree.0"* %4) #2
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main(i32 %0, i8** %1) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %union.pthread_attr_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.fd_set, align 8
  %12 = alloca %struct.request, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.in_addr, align 4
  %19 = alloca %struct.request*, align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::allocator.10", align 1
  %22 = alloca i8*
  %23 = alloca i32
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::allocator.10", align 1
  %26 = alloca %struct.request*, align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::allocator.10", align 1
  %29 = alloca %"struct.std::pair", align 8
  %30 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %31 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %32 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.request*, align 8
  %35 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %36 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %37 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %38 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %39 = alloca %"struct.std::pair", align 8
  %40 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %41 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %42 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %43 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %44 = alloca %"class.std::__cxx11::basic_string", align 8
  %45 = alloca %"class.std::allocator.10", align 1
  %46 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %47 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i64, align 8
  %51 = alloca %union.pthread_attr_t, align 8
  %52 = alloca i32, align 4
  %53 = alloca %struct.timeval, align 8
  %54 = alloca %struct.fd_set, align 8
  %55 = alloca %struct.request, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.in_addr, align 4
  %62 = alloca %struct.request*, align 8
  %63 = alloca %"class.std::__cxx11::basic_string", align 8
  %64 = alloca %"class.std::allocator.10", align 1
  %65 = alloca %"class.std::__cxx11::basic_string", align 8
  %66 = alloca %"class.std::allocator.10", align 1
  %67 = alloca %struct.request*, align 8
  %68 = alloca %"class.std::__cxx11::basic_string", align 8
  %69 = alloca %"class.std::allocator.10", align 1
  %70 = alloca %"struct.std::pair", align 8
  %71 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %72 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %73 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %74 = alloca i64, align 8
  %75 = alloca %struct.request*, align 8
  %76 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %77 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %78 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %79 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %80 = alloca %"struct.std::pair", align 8
  %81 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %82 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %83 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %84 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %85 = alloca %"class.std::__cxx11::basic_string", align 8
  %86 = alloca %"class.std::allocator.10", align 1
  %87 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %88 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %89 = call void (i32)* @signal(i32 2, void (i32)* @_Z9catch_inti) #2
  %90 = call void (i32)* @signal(i32 6, void (i32)* @_Z9catch_inti) #2
  %91 = call void (i32)* @signal(i32 15, void (i32)* @_Z9catch_inti) #2
  %92 = call void (i32)* @signal(i32 3, void (i32)* @_Z9catch_inti) #2
  %93 = call void (i32)* @signal(i32 20, void (i32)* @_Z9catch_inti) #2
  %94 = call void (i32)* @signal(i32 1, void (i32)* @_Z9catch_inti) #2
  store i8 0, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i64 0, i64 0), align 16
  store i32 1, i32* %6, align 4
  br label %95

95:                                               ; preds = %220, %2
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %223

99:                                               ; preds = %95
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcasecmp(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #16
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  store i8 1, i8* @verbatim, align 1
  br label %219

108:                                              ; preds = %99
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #16
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %116
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 45
  br i1 %131, label %132, label %142

132:                                              ; preds = %121
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* %138)
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %218

142:                                              ; preds = %121, %116, %108
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #16
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %176, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  %154 = icmp sgt i32 %151, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %150
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 45
  br i1 %165, label %166, label %176

166:                                              ; preds = %155
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), i8* %172)
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %217

176:                                              ; preds = %155, %150, %142
  %177 = load i8**, i8*** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @strncasecmp(i8* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 2) #16
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %176
  %185 = load i8**, i8*** %5, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 2
  %191 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* %190)
  br label %216

192:                                              ; preds = %176
  %193 = load i8**, i8*** %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strncasecmp(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2) #16
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %192
  %201 = load i8**, i8*** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  %207 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), i8* %206)
  br label %215

208:                                              ; preds = %192
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %213) #2
  br label %215

215:                                              ; preds = %208, %200
  br label %216

216:                                              ; preds = %215, %184
  br label %217

217:                                              ; preds = %216, %166
  br label %218

218:                                              ; preds = %217, %132
  br label %219

219:                                              ; preds = %218, %107
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %95

223:                                              ; preds = %95
  %224 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i64 0, i64 0), align 16
  %225 = icmp ne i8 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #2
  br label %228

228:                                              ; preds = %226, %223
  %229 = load i8, i8* @verbatim, align 1
  %230 = trunc i8 %229 to i1
  br i1 %230, label %231, label %1195

231:                                              ; preds = %228
  %232 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i64 0, i64 0), align 16
  %233 = icmp ne i8 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0))
  call void @exit(i32 1) #17
  unreachable

236:                                              ; preds = %231
  %237 = call i32 @pthread_attr_init(%union.pthread_attr_t* %8) #2
  %238 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %8, i32 1) #2
  %239 = call i32 @pthread_create(i64* %7, %union.pthread_attr_t* %8, i8* (i8*)* @_Z4initPv, i8* null) #2
  store i32 %239, i32* %9, align 4
  %240 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %8) #2
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %236
  %244 = load i32, i32* %9, align 4
  %245 = call i8* @strerror(i32 %244) #2
  %246 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* %245) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #17
  unreachable

247:                                              ; preds = %236
  %248 = load i16, i16* @blksize, align 2
  %249 = zext i16 %248 to i32
  %250 = add nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = call noalias i8* @calloc(i64 1, i64 %251) #2
  %253 = bitcast i8* %252 to %struct.packet*
  store %struct.packet* %253, %struct.packet** @datain, align 8
  store i32 0, i32* %13, align 4
  %254 = load %struct.packet*, %struct.packet** @datain, align 8
  %255 = icmp ne %struct.packet* %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %247
  %257 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 0)
  call void @exit(i32 1) #17
  unreachable

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %268, %258
  %260 = load i8, i8* @kRunning, align 1
  %261 = trunc i8 %260 to i1
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %264 = trunc i8 %263 to i1
  %265 = xor i1 %264, true
  br label %266

266:                                              ; preds = %262, %259
  %267 = phi i1 [ false, %259 ], [ %265, %262 ]
  br i1 %267, label %268, label %270

268:                                              ; preds = %266
  %269 = call i32 @sleep(i32 1)
  br label %259

270:                                              ; preds = %266
  %271 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %272 = call i32 @setuid(i32 %271) #2
  %273 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 5), align 4
  %274 = call i32 @setgid(i32 %273) #2
  br label %275

275:                                              ; preds = %1181, %270
  store i8 0, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %276 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %277 = trunc i8 %276 to i1
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = call i32 @sleep(i32 1)
  br label %1181

280:                                              ; preds = %275
  br label %281

281:                                              ; preds = %280
  %282 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %283 = getelementptr inbounds [16 x i64], [16 x i64]* %282, i64 0, i64 0
  %284 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %283) #2, !srcloc !2
  %285 = extractvalue { i64, i64* } %284, 0
  %286 = extractvalue { i64, i64* } %284, 1
  %287 = trunc i64 %285 to i32
  store i32 %287, i32* %14, align 4
  %288 = ptrtoint i64* %286 to i64
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %15, align 4
  br label %290

290:                                              ; preds = %281
  %291 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 1, i64* %291, align 8
  %292 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %292, align 8
  store i32 0, i32* %16, align 4
  br label %293

293:                                              ; preds = %325, %290
  %294 = load i32, i32* %16, align 4
  %295 = icmp slt i32 %294, 8
  br i1 %295, label %296, label %303

296:                                              ; preds = %293
  %297 = load i32, i32* %16, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %298
  %300 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %299, i32 0, i32 4
  %301 = load i8, i8* %300, align 2
  %302 = trunc i8 %301 to i1
  br label %303

303:                                              ; preds = %296, %293
  %304 = phi i1 [ false, %293 ], [ %302, %296 ]
  br i1 %304, label %305, label %328

305:                                              ; preds = %303
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %307
  %309 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = srem i32 %310, 64
  %312 = zext i32 %311 to i64
  %313 = shl i64 1, %312
  %314 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %315 = load i32, i32* %16, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %316
  %318 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = sdiv i32 %319, 64
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [16 x i64], [16 x i64]* %314, i64 0, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = or i64 %323, %313
  store i64 %324, i64* %322, align 8
  br label %325

325:                                              ; preds = %305
  %326 = load i32, i32* %16, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %16, align 4
  br label %293

328:                                              ; preds = %303
  %329 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 7), align 4
  %330 = call i32 @select(i32 %329, %struct.fd_set* %11, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %10)
  store i32 %330, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %331

331:                                              ; preds = %934, %328
  %332 = load i32, i32* %13, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %344

334:                                              ; preds = %331
  %335 = load i32, i32* %17, align 4
  %336 = icmp slt i32 %335, 8
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %339
  %341 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %340, i32 0, i32 4
  %342 = load i8, i8* %341, align 2
  %343 = trunc i8 %342 to i1
  br label %344

344:                                              ; preds = %337, %334, %331
  %345 = phi i1 [ false, %334 ], [ false, %331 ], [ %343, %337 ]
  br i1 %345, label %346, label %937

346:                                              ; preds = %344
  %347 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %348 = trunc i8 %347 to i1
  br i1 %348, label %349, label %933

349:                                              ; preds = %346
  store i8 1, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %350 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %351 = load i32, i32* %17, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %352
  %354 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = sdiv i32 %355, 64
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [16 x i64], [16 x i64]* %350, i64 0, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = load i32, i32* %17, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %361
  %363 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = srem i32 %364, 64
  %366 = zext i32 %365 to i64
  %367 = shl i64 1, %366
  %368 = and i64 %359, %367
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %932

370:                                              ; preds = %349
  %371 = load i32, i32* %13, align 4
  %372 = add nsw i32 %371, -1
  store i32 %372, i32* %13, align 4
  %373 = bitcast %struct.request* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %373, i8 0, i64 920, i1 false)
  %374 = load %struct.packet*, %struct.packet** @datain, align 8
  %375 = bitcast %struct.packet* %374 to i8*
  %376 = load i16, i16* @blksize, align 2
  %377 = zext i16 %376 to i32
  %378 = add nsw i32 %377, 4
  %379 = sext i32 %378 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 %375, i8 0, i64 %379, i1 false)
  %380 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 19
  store i32 16, i32* %380, align 8
  %381 = load i32, i32* %17, align 4
  %382 = trunc i32 %381 to i8
  %383 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 3
  store i8 %382, i8* %383, align 2
  %384 = call i32* @__errno_location() #18
  store i32 0, i32* %384, align 4
  %385 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 3
  %386 = load i8, i8* %385, align 2
  %387 = zext i8 %386 to i64
  %388 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %387
  %389 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.packet*, %struct.packet** @datain, align 8
  %392 = bitcast %struct.packet* %391 to i8*
  %393 = load i16, i16* @blksize, align 2
  %394 = zext i16 %393 to i32
  %395 = add nsw i32 %394, 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 18
  %398 = bitcast %struct.sockaddr_in* %397 to %struct.sockaddr*
  %399 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 19
  %400 = call i64 @recvfrom(i32 %390, i8* %392, i64 %396, i32 0, %struct.sockaddr* %398, i32* %399)
  %401 = trunc i64 %400 to i32
  %402 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 15
  store i32 %401, i32* %402, align 4
  %403 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 15
  %404 = load i32, i32* %403, align 4
  %405 = icmp slt i32 %404, 4
  br i1 %405, label %410, label %406

406:                                              ; preds = %370
  %407 = call i32* @__errno_location() #18
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %406, %370
  br label %934

411:                                              ; preds = %406
  %412 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %413 = getelementptr inbounds [32 x i8], [32 x i8]* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 18
  %415 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %414, i32 0, i32 2
  %416 = bitcast %struct.in_addr* %18 to i8*
  %417 = bitcast %struct.in_addr* %415 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %416, i8* align 4 %417, i64 4, i1 false)
  %418 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = call i8* @inet_ntoa(i32 %419) #2
  %421 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 18
  %422 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %421, i32 0, i32 1
  %423 = load i16, i16* %422, align 2
  %424 = call zeroext i16 @ntohs(i16 zeroext %423) #18
  %425 = zext i16 %424 to i32
  %426 = call i32 (i8*, i8*, ...) @sprintf(i8* %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %420, i32 %425) #2
  %427 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %428 = getelementptr inbounds [32 x i8], [32 x i8]* %427, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %21) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %20, i8* %428, %"class.std::allocator.10"* dereferenceable(1) %21)
          to label %429 unwind label %441

429:                                              ; preds = %411
  %430 = invoke dereferenceable(8) %struct.request** @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %20)
          to label %431 unwind label %445

431:                                              ; preds = %429
  %432 = load %struct.request*, %struct.request** %430, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %20) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %21) #2
  store %struct.request* %432, %struct.request** %19, align 8
  %433 = load %struct.request*, %struct.request** %19, align 8
  %434 = icmp ne %struct.request* %433, null
  br i1 %434, label %459, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %437 = getelementptr inbounds [32 x i8], [32 x i8]* %436, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %25) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %24, i8* %437, %"class.std::allocator.10"* dereferenceable(1) %25)
          to label %438 unwind label %450

438:                                              ; preds = %435
  %439 = invoke i64 @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseERSB_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %24)
          to label %440 unwind label %454

440:                                              ; preds = %438
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %24) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %25) #2
  br label %459

441:                                              ; preds = %411
  %442 = landingpad { i8*, i32 }
          cleanup
  %443 = extractvalue { i8*, i32 } %442, 0
  store i8* %443, i8** %22, align 8
  %444 = extractvalue { i8*, i32 } %442, 1
  store i32 %444, i32* %23, align 4
  br label %449

445:                                              ; preds = %429
  %446 = landingpad { i8*, i32 }
          cleanup
  %447 = extractvalue { i8*, i32 } %446, 0
  store i8* %447, i8** %22, align 8
  %448 = extractvalue { i8*, i32 } %446, 1
  store i32 %448, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %20) #2
  br label %449

449:                                              ; preds = %445, %441
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %21) #2
  br label %2182

450:                                              ; preds = %435
  %451 = landingpad { i8*, i32 }
          cleanup
  %452 = extractvalue { i8*, i32 } %451, 0
  store i8* %452, i8** %22, align 8
  %453 = extractvalue { i8*, i32 } %451, 1
  store i32 %453, i32* %23, align 4
  br label %458

454:                                              ; preds = %438
  %455 = landingpad { i8*, i32 }
          cleanup
  %456 = extractvalue { i8*, i32 } %455, 0
  store i8* %456, i8** %22, align 8
  %457 = extractvalue { i8*, i32 } %455, 1
  store i32 %457, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %24) #2
  br label %458

458:                                              ; preds = %454, %450
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %25) #2
  br label %2182

459:                                              ; preds = %440, %431
  %460 = load %struct.request*, %struct.request** %19, align 8
  %461 = icmp ne %struct.request* %460, null
  br i1 %461, label %462, label %789

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 15
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.request*, %struct.request** %19, align 8
  %466 = getelementptr inbounds %struct.request, %struct.request* %465, i32 0, i32 15
  store i32 %464, i32* %466, align 4
  %467 = load %struct.packet*, %struct.packet** @datain, align 8
  %468 = getelementptr inbounds %struct.packet, %struct.packet* %467, i32 0, i32 0
  %469 = load i16, i16* %468, align 2
  %470 = call zeroext i16 @ntohs(i16 zeroext %469) #18
  %471 = zext i16 %470 to i32
  %472 = icmp eq i32 %471, 3
  br i1 %472, label %473, label %589

473:                                              ; preds = %462
  %474 = load %struct.request*, %struct.request** %19, align 8
  %475 = getelementptr inbounds %struct.request, %struct.request* %474, i32 0, i32 1
  %476 = load i8, i8* %475, align 8
  %477 = zext i8 %476 to i32
  %478 = icmp eq i32 %477, 2
  br i1 %478, label %479, label %589

479:                                              ; preds = %473
  %480 = load %struct.request*, %struct.request** %19, align 8
  %481 = getelementptr inbounds %struct.request, %struct.request* %480, i32 0, i32 15
  %482 = load i32, i32* %481, align 4
  %483 = trunc i32 %482 to i16
  %484 = zext i16 %483 to i32
  %485 = load %struct.request*, %struct.request** %19, align 8
  %486 = getelementptr inbounds %struct.request, %struct.request* %485, i32 0, i32 10
  %487 = load i32, i32* %486, align 4
  %488 = add i32 %487, 4
  %489 = icmp ule i32 %484, %488
  br i1 %489, label %490, label %544

490:                                              ; preds = %479
  %491 = load %struct.request*, %struct.request** %19, align 8
  %492 = getelementptr inbounds %struct.request, %struct.request* %491, i32 0, i32 2
  %493 = load i8, i8* %492, align 1
  %494 = zext i8 %493 to i32
  %495 = icmp sle i32 %494, 3
  br i1 %495, label %496, label %543

496:                                              ; preds = %490
  %497 = load %struct.request*, %struct.request** %19, align 8
  %498 = getelementptr inbounds %struct.request, %struct.request* %497, i32 0, i32 13
  %499 = load i16, i16* %498, align 8
  %500 = zext i16 %499 to i32
  %501 = add nsw i32 %500, 1
  %502 = trunc i32 %501 to i16
  %503 = load %struct.request*, %struct.request** %19, align 8
  %504 = getelementptr inbounds %struct.request, %struct.request* %503, i32 0, i32 14
  store i16 %502, i16* %504, align 2
  %505 = load %struct.packet*, %struct.packet** @datain, align 8
  %506 = getelementptr inbounds %struct.packet, %struct.packet* %505, i32 0, i32 1
  %507 = load i16, i16* %506, align 2
  %508 = call zeroext i16 @ntohs(i16 zeroext %507) #18
  %509 = zext i16 %508 to i32
  %510 = load %struct.request*, %struct.request** %19, align 8
  %511 = getelementptr inbounds %struct.request, %struct.request* %510, i32 0, i32 14
  %512 = load i16, i16* %511, align 2
  %513 = zext i16 %512 to i32
  %514 = icmp eq i32 %509, %513
  br i1 %514, label %515, label %542

515:                                              ; preds = %496
  %516 = load %struct.request*, %struct.request** %19, align 8
  %517 = getelementptr inbounds %struct.request, %struct.request* %516, i32 0, i32 14
  %518 = load i16, i16* %517, align 2
  %519 = load %struct.request*, %struct.request** %19, align 8
  %520 = getelementptr inbounds %struct.request, %struct.request* %519, i32 0, i32 13
  store i16 %518, i16* %520, align 8
  %521 = load %struct.request*, %struct.request** %19, align 8
  %522 = getelementptr inbounds %struct.request, %struct.request* %521, i32 0, i32 12
  %523 = load i32, i32* %522, align 4
  %524 = add i32 %523, 1
  store i32 %524, i32* %522, align 4
  %525 = load %struct.request*, %struct.request** %19, align 8
  %526 = getelementptr inbounds %struct.request, %struct.request* %525, i32 0, i32 2
  store i8 0, i8* %526, align 1
  %527 = call zeroext i16 @htons(i16 zeroext 4) #18
  %528 = load %struct.request*, %struct.request** %19, align 8
  %529 = getelementptr inbounds %struct.request, %struct.request* %528, i32 0, i32 21
  %530 = bitcast %union.anon.9* %529 to %struct.acknowledgement*
  %531 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %530, i32 0, i32 0
  store i16 %527, i16* %531, align 8
  %532 = load %struct.request*, %struct.request** %19, align 8
  %533 = getelementptr inbounds %struct.request, %struct.request* %532, i32 0, i32 13
  %534 = load i16, i16* %533, align 8
  %535 = call zeroext i16 @ntohs(i16 zeroext %534) #18
  %536 = load %struct.request*, %struct.request** %19, align 8
  %537 = getelementptr inbounds %struct.request, %struct.request* %536, i32 0, i32 21
  %538 = bitcast %union.anon.9* %537 to %struct.acknowledgement*
  %539 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %538, i32 0, i32 1
  store i16 %535, i16* %539, align 2
  %540 = load %struct.request*, %struct.request** %19, align 8
  %541 = call i32 @_Z11processRecvP7request(%struct.request* %540)
  br label %542

542:                                              ; preds = %515, %496
  br label %543

543:                                              ; preds = %542, %490
  br label %588

544:                                              ; preds = %479
  %545 = call zeroext i16 @htons(i16 zeroext 5) #18
  %546 = load %struct.request*, %struct.request** %19, align 8
  %547 = getelementptr inbounds %struct.request, %struct.request* %546, i32 0, i32 21
  %548 = bitcast %union.anon.9* %547 to %struct.tftperror*
  %549 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %548, i32 0, i32 0
  store i16 %545, i16* %549, align 8
  %550 = call zeroext i16 @htons(i16 zeroext 4) #18
  %551 = load %struct.request*, %struct.request** %19, align 8
  %552 = getelementptr inbounds %struct.request, %struct.request* %551, i32 0, i32 21
  %553 = bitcast %union.anon.9* %552 to %struct.tftperror*
  %554 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %553, i32 0, i32 1
  store i16 %550, i16* %554, align 2
  %555 = load %struct.request*, %struct.request** %19, align 8
  %556 = getelementptr inbounds %struct.request, %struct.request* %555, i32 0, i32 3
  %557 = load i8, i8* %556, align 2
  %558 = zext i8 %557 to i64
  %559 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %558
  %560 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.request*, %struct.request** %19, align 8
  %563 = getelementptr inbounds %struct.request, %struct.request* %562, i32 0, i32 21
  %564 = bitcast %union.anon.9* %563 to %struct.tftperror*
  %565 = bitcast %struct.tftperror* %564 to i8*
  %566 = load %struct.request*, %struct.request** %19, align 8
  %567 = getelementptr inbounds %struct.request, %struct.request* %566, i32 0, i32 21
  %568 = bitcast %union.anon.9* %567 to %struct.tftperror*
  %569 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %568, i32 0, i32 2
  %570 = getelementptr inbounds [508 x i8], [508 x i8]* %569, i32 0, i32 0
  %571 = call i64 @strlen(i8* %570) #16
  %572 = add i64 %571, 5
  %573 = load %struct.request*, %struct.request** %19, align 8
  %574 = getelementptr inbounds %struct.request, %struct.request* %573, i32 0, i32 18
  %575 = bitcast %struct.sockaddr_in* %574 to %struct.sockaddr*
  %576 = load %struct.request*, %struct.request** %19, align 8
  %577 = getelementptr inbounds %struct.request, %struct.request* %576, i32 0, i32 19
  %578 = load i32, i32* %577, align 8
  %579 = call i64 @sendto(i32 %561, i8* %565, i64 %572, i32 0, %struct.sockaddr* %575, i32 %578)
  %580 = load %struct.request*, %struct.request** %19, align 8
  %581 = getelementptr inbounds %struct.request, %struct.request* %580, i32 0, i32 21
  %582 = bitcast %union.anon.9* %581 to %struct.tftperror*
  %583 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %582, i32 0, i32 2
  %584 = getelementptr inbounds [508 x i8], [508 x i8]* %583, i32 0, i32 0
  %585 = call i32 (i8*, i8*, ...) @sprintf(i8* %584, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #2
  %586 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z7logMessP7requesth(%struct.request* %586, i8 zeroext 1)
  %587 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z8cleanReqP7request(%struct.request* %587)
  br label %588

588:                                              ; preds = %544, %543
  br label %788

589:                                              ; preds = %473, %462
  %590 = load %struct.packet*, %struct.packet** @datain, align 8
  %591 = getelementptr inbounds %struct.packet, %struct.packet* %590, i32 0, i32 0
  %592 = load i16, i16* %591, align 2
  %593 = call zeroext i16 @ntohs(i16 zeroext %592) #18
  %594 = zext i16 %593 to i32
  %595 = icmp eq i32 %594, 4
  br i1 %595, label %596, label %640

596:                                              ; preds = %589
  %597 = load %struct.request*, %struct.request** %19, align 8
  %598 = getelementptr inbounds %struct.request, %struct.request* %597, i32 0, i32 1
  %599 = load i8, i8* %598, align 8
  %600 = zext i8 %599 to i32
  %601 = icmp eq i32 %600, 1
  br i1 %601, label %602, label %640

602:                                              ; preds = %596
  %603 = load %struct.request*, %struct.request** %19, align 8
  %604 = getelementptr inbounds %struct.request, %struct.request* %603, i32 0, i32 15
  %605 = load i32, i32* %604, align 4
  %606 = icmp sge i32 %605, 4
  br i1 %606, label %607, label %639

607:                                              ; preds = %602
  %608 = load %struct.request*, %struct.request** %19, align 8
  %609 = getelementptr inbounds %struct.request, %struct.request* %608, i32 0, i32 2
  %610 = load i8, i8* %609, align 1
  %611 = zext i8 %610 to i32
  %612 = icmp sle i32 %611, 3
  br i1 %612, label %613, label %638

613:                                              ; preds = %607
  %614 = load %struct.packet*, %struct.packet** @datain, align 8
  %615 = getelementptr inbounds %struct.packet, %struct.packet* %614, i32 0, i32 1
  %616 = load i16, i16* %615, align 2
  %617 = call zeroext i16 @ntohs(i16 zeroext %616) #18
  %618 = zext i16 %617 to i32
  %619 = load %struct.request*, %struct.request** %19, align 8
  %620 = getelementptr inbounds %struct.request, %struct.request* %619, i32 0, i32 13
  %621 = load i16, i16* %620, align 8
  %622 = zext i16 %621 to i32
  %623 = icmp eq i32 %618, %622
  br i1 %623, label %624, label %637

624:                                              ; preds = %613
  %625 = load %struct.request*, %struct.request** %19, align 8
  %626 = getelementptr inbounds %struct.request, %struct.request* %625, i32 0, i32 13
  %627 = load i16, i16* %626, align 8
  %628 = add i16 %627, 1
  store i16 %628, i16* %626, align 8
  %629 = load %struct.request*, %struct.request** %19, align 8
  %630 = getelementptr inbounds %struct.request, %struct.request* %629, i32 0, i32 12
  %631 = load i32, i32* %630, align 4
  %632 = add i32 %631, 1
  store i32 %632, i32* %630, align 4
  %633 = load %struct.request*, %struct.request** %19, align 8
  %634 = getelementptr inbounds %struct.request, %struct.request* %633, i32 0, i32 2
  store i8 0, i8* %634, align 1
  %635 = load %struct.request*, %struct.request** %19, align 8
  %636 = call i32 @_Z11processSendP7request(%struct.request* %635)
  br label %637

637:                                              ; preds = %624, %613
  br label %638

638:                                              ; preds = %637, %607
  br label %639

639:                                              ; preds = %638, %602
  br label %787

640:                                              ; preds = %596, %589
  %641 = load %struct.request*, %struct.request** %19, align 8
  %642 = getelementptr inbounds %struct.request, %struct.request* %641, i32 0, i32 15
  %643 = load i32, i32* %642, align 4
  %644 = icmp sgt i32 %643, 516
  br i1 %644, label %645, label %689

645:                                              ; preds = %640
  %646 = call zeroext i16 @htons(i16 zeroext 5) #18
  %647 = load %struct.request*, %struct.request** %19, align 8
  %648 = getelementptr inbounds %struct.request, %struct.request* %647, i32 0, i32 21
  %649 = bitcast %union.anon.9* %648 to %struct.tftperror*
  %650 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %649, i32 0, i32 0
  store i16 %646, i16* %650, align 8
  %651 = call zeroext i16 @htons(i16 zeroext 4) #18
  %652 = load %struct.request*, %struct.request** %19, align 8
  %653 = getelementptr inbounds %struct.request, %struct.request* %652, i32 0, i32 21
  %654 = bitcast %union.anon.9* %653 to %struct.tftperror*
  %655 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %654, i32 0, i32 1
  store i16 %651, i16* %655, align 2
  %656 = load %struct.request*, %struct.request** %19, align 8
  %657 = getelementptr inbounds %struct.request, %struct.request* %656, i32 0, i32 3
  %658 = load i8, i8* %657, align 2
  %659 = zext i8 %658 to i64
  %660 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %659
  %661 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 4
  %663 = load %struct.request*, %struct.request** %19, align 8
  %664 = getelementptr inbounds %struct.request, %struct.request* %663, i32 0, i32 21
  %665 = bitcast %union.anon.9* %664 to %struct.tftperror*
  %666 = bitcast %struct.tftperror* %665 to i8*
  %667 = load %struct.request*, %struct.request** %19, align 8
  %668 = getelementptr inbounds %struct.request, %struct.request* %667, i32 0, i32 21
  %669 = bitcast %union.anon.9* %668 to %struct.tftperror*
  %670 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %669, i32 0, i32 2
  %671 = getelementptr inbounds [508 x i8], [508 x i8]* %670, i32 0, i32 0
  %672 = call i64 @strlen(i8* %671) #16
  %673 = add i64 %672, 5
  %674 = load %struct.request*, %struct.request** %19, align 8
  %675 = getelementptr inbounds %struct.request, %struct.request* %674, i32 0, i32 18
  %676 = bitcast %struct.sockaddr_in* %675 to %struct.sockaddr*
  %677 = load %struct.request*, %struct.request** %19, align 8
  %678 = getelementptr inbounds %struct.request, %struct.request* %677, i32 0, i32 19
  %679 = load i32, i32* %678, align 8
  %680 = call i64 @sendto(i32 %662, i8* %666, i64 %673, i32 0, %struct.sockaddr* %676, i32 %679)
  %681 = load %struct.request*, %struct.request** %19, align 8
  %682 = getelementptr inbounds %struct.request, %struct.request* %681, i32 0, i32 21
  %683 = bitcast %union.anon.9* %682 to %struct.tftperror*
  %684 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %683, i32 0, i32 2
  %685 = getelementptr inbounds [508 x i8], [508 x i8]* %684, i32 0, i32 0
  %686 = call i32 (i8*, i8*, ...) @sprintf(i8* %685, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #2
  %687 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z7logMessP7requesth(%struct.request* %687, i8 zeroext 1)
  %688 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z8cleanReqP7request(%struct.request* %688)
  br label %786

689:                                              ; preds = %640
  %690 = load %struct.packet*, %struct.packet** @datain, align 8
  %691 = getelementptr inbounds %struct.packet, %struct.packet* %690, i32 0, i32 0
  %692 = load i16, i16* %691, align 2
  %693 = call zeroext i16 @ntohs(i16 zeroext %692) #18
  %694 = zext i16 %693 to i32
  %695 = icmp eq i32 %694, 1
  br i1 %695, label %703, label %696

696:                                              ; preds = %689
  %697 = load %struct.packet*, %struct.packet** @datain, align 8
  %698 = getelementptr inbounds %struct.packet, %struct.packet* %697, i32 0, i32 0
  %699 = load i16, i16* %698, align 2
  %700 = call zeroext i16 @ntohs(i16 zeroext %699) #18
  %701 = zext i16 %700 to i32
  %702 = icmp eq i32 %701, 2
  br i1 %702, label %703, label %712

703:                                              ; preds = %696, %689
  %704 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z8cleanReqP7request(%struct.request* %704)
  %705 = call i32 @_Z10processNewP7request(%struct.request* %12)
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %711, label %707

707:                                              ; preds = %703
  %708 = load %struct.request*, %struct.request** %19, align 8
  %709 = bitcast %struct.request* %708 to i8*
  %710 = bitcast %struct.request* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %709, i8* align 8 %710, i64 920, i1 false)
  br label %711

711:                                              ; preds = %707, %703
  br label %785

712:                                              ; preds = %696
  %713 = load %struct.packet*, %struct.packet** @datain, align 8
  %714 = getelementptr inbounds %struct.packet, %struct.packet* %713, i32 0, i32 0
  %715 = load i16, i16* %714, align 2
  %716 = call zeroext i16 @ntohs(i16 zeroext %715) #18
  %717 = zext i16 %716 to i32
  %718 = icmp eq i32 %717, 5
  br i1 %718, label %719, label %735

719:                                              ; preds = %712
  %720 = load %struct.request*, %struct.request** %19, align 8
  %721 = getelementptr inbounds %struct.request, %struct.request* %720, i32 0, i32 21
  %722 = bitcast %union.anon.9* %721 to %struct.tftperror*
  %723 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %722, i32 0, i32 2
  %724 = getelementptr inbounds [508 x i8], [508 x i8]* %723, i32 0, i32 0
  %725 = load %struct.packet*, %struct.packet** @datain, align 8
  %726 = getelementptr inbounds %struct.packet, %struct.packet* %725, i32 0, i32 1
  %727 = load i16, i16* %726, align 2
  %728 = call zeroext i16 @ntohs(i16 zeroext %727) #18
  %729 = zext i16 %728 to i32
  %730 = load %struct.packet*, %struct.packet** @datain, align 8
  %731 = getelementptr inbounds %struct.packet, %struct.packet* %730, i32 0, i32 2
  %732 = call i32 (i8*, i8*, ...) @sprintf(i8* %724, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %729, i8* %731) #2
  %733 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z7logMessP7requesth(%struct.request* %733, i8 zeroext 1)
  %734 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z8cleanReqP7request(%struct.request* %734)
  br label %784

735:                                              ; preds = %712
  %736 = call zeroext i16 @htons(i16 zeroext 5) #18
  %737 = load %struct.request*, %struct.request** %19, align 8
  %738 = getelementptr inbounds %struct.request, %struct.request* %737, i32 0, i32 21
  %739 = bitcast %union.anon.9* %738 to %struct.tftperror*
  %740 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %739, i32 0, i32 0
  store i16 %736, i16* %740, align 8
  %741 = call zeroext i16 @htons(i16 zeroext 4) #18
  %742 = load %struct.request*, %struct.request** %19, align 8
  %743 = getelementptr inbounds %struct.request, %struct.request* %742, i32 0, i32 21
  %744 = bitcast %union.anon.9* %743 to %struct.tftperror*
  %745 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %744, i32 0, i32 1
  store i16 %741, i16* %745, align 2
  %746 = load %struct.request*, %struct.request** %19, align 8
  %747 = getelementptr inbounds %struct.request, %struct.request* %746, i32 0, i32 21
  %748 = bitcast %union.anon.9* %747 to %struct.tftperror*
  %749 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %748, i32 0, i32 2
  %750 = getelementptr inbounds [508 x i8], [508 x i8]* %749, i32 0, i32 0
  %751 = load %struct.packet*, %struct.packet** @datain, align 8
  %752 = getelementptr inbounds %struct.packet, %struct.packet* %751, i32 0, i32 0
  %753 = load i16, i16* %752, align 2
  %754 = call zeroext i16 @ntohs(i16 zeroext %753) #18
  %755 = zext i16 %754 to i32
  %756 = call i32 (i8*, i8*, ...) @sprintf(i8* %750, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %755) #2
  %757 = load %struct.request*, %struct.request** %19, align 8
  %758 = getelementptr inbounds %struct.request, %struct.request* %757, i32 0, i32 3
  %759 = load i8, i8* %758, align 2
  %760 = zext i8 %759 to i64
  %761 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %760
  %762 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %761, i32 0, i32 0
  %763 = load i32, i32* %762, align 4
  %764 = load %struct.request*, %struct.request** %19, align 8
  %765 = getelementptr inbounds %struct.request, %struct.request* %764, i32 0, i32 21
  %766 = bitcast %union.anon.9* %765 to %struct.tftperror*
  %767 = bitcast %struct.tftperror* %766 to i8*
  %768 = load %struct.request*, %struct.request** %19, align 8
  %769 = getelementptr inbounds %struct.request, %struct.request* %768, i32 0, i32 21
  %770 = bitcast %union.anon.9* %769 to %struct.tftperror*
  %771 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %770, i32 0, i32 2
  %772 = getelementptr inbounds [508 x i8], [508 x i8]* %771, i32 0, i32 0
  %773 = call i64 @strlen(i8* %772) #16
  %774 = add i64 %773, 5
  %775 = load %struct.request*, %struct.request** %19, align 8
  %776 = getelementptr inbounds %struct.request, %struct.request* %775, i32 0, i32 18
  %777 = bitcast %struct.sockaddr_in* %776 to %struct.sockaddr*
  %778 = load %struct.request*, %struct.request** %19, align 8
  %779 = getelementptr inbounds %struct.request, %struct.request* %778, i32 0, i32 19
  %780 = load i32, i32* %779, align 8
  %781 = call i64 @sendto(i32 %763, i8* %767, i64 %774, i32 0, %struct.sockaddr* %777, i32 %780)
  %782 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z7logMessP7requesth(%struct.request* %782, i8 zeroext 1)
  %783 = load %struct.request*, %struct.request** %19, align 8
  call void @_Z8cleanReqP7request(%struct.request* %783)
  br label %784

784:                                              ; preds = %735, %719
  br label %785

785:                                              ; preds = %784, %711
  br label %786

786:                                              ; preds = %785, %645
  br label %787

787:                                              ; preds = %786, %639
  br label %788

788:                                              ; preds = %787, %588
  br label %931

789:                                              ; preds = %459
  %790 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 15
  %791 = load i32, i32* %790, align 4
  %792 = icmp sgt i32 %791, 516
  br i1 %792, label %793, label %826

793:                                              ; preds = %789
  %794 = call zeroext i16 @htons(i16 zeroext 5) #18
  %795 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %796 = bitcast %union.anon.9* %795 to %struct.tftperror*
  %797 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %796, i32 0, i32 0
  store i16 %794, i16* %797, align 8
  %798 = call zeroext i16 @htons(i16 zeroext 4) #18
  %799 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %800 = bitcast %union.anon.9* %799 to %struct.tftperror*
  %801 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %800, i32 0, i32 1
  store i16 %798, i16* %801, align 2
  %802 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %803 = bitcast %union.anon.9* %802 to %struct.tftperror*
  %804 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %803, i32 0, i32 2
  %805 = getelementptr inbounds [508 x i8], [508 x i8]* %804, i32 0, i32 0
  %806 = call i32 (i8*, i8*, ...) @sprintf(i8* %805, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #2
  %807 = load i32, i32* %17, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %808
  %810 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %809, i32 0, i32 0
  %811 = load i32, i32* %810, align 4
  %812 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %813 = bitcast %union.anon.9* %812 to %struct.tftperror*
  %814 = bitcast %struct.tftperror* %813 to i8*
  %815 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %816 = bitcast %union.anon.9* %815 to %struct.tftperror*
  %817 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %816, i32 0, i32 2
  %818 = getelementptr inbounds [508 x i8], [508 x i8]* %817, i32 0, i32 0
  %819 = call i64 @strlen(i8* %818) #16
  %820 = add i64 %819, 5
  %821 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 18
  %822 = bitcast %struct.sockaddr_in* %821 to %struct.sockaddr*
  %823 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 19
  %824 = load i32, i32* %823, align 8
  %825 = call i64 @sendto(i32 %811, i8* %814, i64 %820, i32 0, %struct.sockaddr* %822, i32 %824)
  call void @_Z7logMessP7requesth(%struct.request* %12, i8 zeroext 1)
  br label %930

826:                                              ; preds = %789
  %827 = load %struct.packet*, %struct.packet** @datain, align 8
  %828 = getelementptr inbounds %struct.packet, %struct.packet* %827, i32 0, i32 0
  %829 = load i16, i16* %828, align 2
  %830 = call zeroext i16 @ntohs(i16 zeroext %829) #18
  %831 = zext i16 %830 to i32
  %832 = icmp eq i32 %831, 5
  br i1 %832, label %833, label %846

833:                                              ; preds = %826
  %834 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %835 = bitcast %union.anon.9* %834 to %struct.tftperror*
  %836 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %835, i32 0, i32 2
  %837 = getelementptr inbounds [508 x i8], [508 x i8]* %836, i32 0, i32 0
  %838 = load %struct.packet*, %struct.packet** @datain, align 8
  %839 = getelementptr inbounds %struct.packet, %struct.packet* %838, i32 0, i32 1
  %840 = load i16, i16* %839, align 2
  %841 = call zeroext i16 @ntohs(i16 zeroext %840) #18
  %842 = zext i16 %841 to i32
  %843 = load %struct.packet*, %struct.packet** @datain, align 8
  %844 = getelementptr inbounds %struct.packet, %struct.packet* %843, i32 0, i32 2
  %845 = call i32 (i8*, i8*, ...) @sprintf(i8* %837, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %842, i8* %844) #2
  call void @_Z7logMessP7requesth(%struct.request* %12, i8 zeroext 1)
  br label %929

846:                                              ; preds = %826
  %847 = load %struct.packet*, %struct.packet** @datain, align 8
  %848 = getelementptr inbounds %struct.packet, %struct.packet* %847, i32 0, i32 0
  %849 = load i16, i16* %848, align 2
  %850 = call zeroext i16 @ntohs(i16 zeroext %849) #18
  %851 = zext i16 %850 to i32
  %852 = icmp ne i32 %851, 1
  br i1 %852, label %853, label %893

853:                                              ; preds = %846
  %854 = load %struct.packet*, %struct.packet** @datain, align 8
  %855 = getelementptr inbounds %struct.packet, %struct.packet* %854, i32 0, i32 0
  %856 = load i16, i16* %855, align 2
  %857 = call zeroext i16 @ntohs(i16 zeroext %856) #18
  %858 = zext i16 %857 to i32
  %859 = icmp ne i32 %858, 2
  br i1 %859, label %860, label %893

860:                                              ; preds = %853
  %861 = call zeroext i16 @htons(i16 zeroext 5) #18
  %862 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %863 = bitcast %union.anon.9* %862 to %struct.tftperror*
  %864 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %863, i32 0, i32 0
  store i16 %861, i16* %864, align 8
  %865 = call zeroext i16 @htons(i16 zeroext 5) #18
  %866 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %867 = bitcast %union.anon.9* %866 to %struct.tftperror*
  %868 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %867, i32 0, i32 1
  store i16 %865, i16* %868, align 2
  %869 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %870 = bitcast %union.anon.9* %869 to %struct.tftperror*
  %871 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %870, i32 0, i32 2
  %872 = getelementptr inbounds [508 x i8], [508 x i8]* %871, i32 0, i32 0
  %873 = call i32 (i8*, i8*, ...) @sprintf(i8* %872, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0)) #2
  %874 = load i32, i32* %17, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %875
  %877 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %876, i32 0, i32 0
  %878 = load i32, i32* %877, align 4
  %879 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %880 = bitcast %union.anon.9* %879 to %struct.tftperror*
  %881 = bitcast %struct.tftperror* %880 to i8*
  %882 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 21
  %883 = bitcast %union.anon.9* %882 to %struct.tftperror*
  %884 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %883, i32 0, i32 2
  %885 = getelementptr inbounds [508 x i8], [508 x i8]* %884, i32 0, i32 0
  %886 = call i64 @strlen(i8* %885) #16
  %887 = add i64 %886, 5
  %888 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 18
  %889 = bitcast %struct.sockaddr_in* %888 to %struct.sockaddr*
  %890 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 19
  %891 = load i32, i32* %890, align 8
  %892 = call i64 @sendto(i32 %878, i8* %881, i64 %887, i32 0, %struct.sockaddr* %889, i32 %891)
  call void @_Z7logMessP7requesth(%struct.request* %12, i8 zeroext 1)
  br label %928

893:                                              ; preds = %853, %846
  %894 = call i32 @_Z10processNewP7request(%struct.request* %12)
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %927, label %896

896:                                              ; preds = %893
  %897 = call noalias i8* @calloc(i64 1, i64 920) #2
  %898 = bitcast i8* %897 to %struct.request*
  store %struct.request* %898, %struct.request** %26, align 8
  %899 = load %struct.request*, %struct.request** %26, align 8
  %900 = icmp ne %struct.request* %899, null
  br i1 %900, label %903, label %901

901:                                              ; preds = %896
  %902 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %934

903:                                              ; preds = %896
  %904 = load %struct.request*, %struct.request** %26, align 8
  %905 = bitcast %struct.request* %904 to i8*
  %906 = bitcast %struct.request* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %905, i8* align 8 %906, i64 920, i1 false)
  %907 = load %struct.request*, %struct.request** %26, align 8
  %908 = load %struct.request*, %struct.request** %26, align 8
  %909 = getelementptr inbounds %struct.request, %struct.request* %908, i32 0, i32 0
  %910 = getelementptr inbounds [32 x i8], [32 x i8]* %909, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %28) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %27, i8* %910, %"class.std::allocator.10"* dereferenceable(1) %28)
          to label %911 unwind label %918

911:                                              ; preds = %903
  %912 = invoke dereferenceable(8) %struct.request** @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %27)
          to label %913 unwind label %922

913:                                              ; preds = %911
  store %struct.request* %907, %struct.request** %912, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %27) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %28) #2
  %914 = load %struct.request*, %struct.request** %26, align 8
  %915 = getelementptr inbounds %struct.request, %struct.request* %914, i32 0, i32 4
  call void @_ZNSt4pairIlP7requestEC2IRlRS1_Lb1EEEOT_OT0_(%"struct.std::pair"* %29, i64* dereferenceable(8) %915, %struct.request** dereferenceable(8) %26)
  %916 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE6insertIS4_IlS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueESt17_Rb_tree_iteratorIS6_EE4typeEOSC_(%"class.std::multimap"* @tftpAge, %"struct.std::pair"* dereferenceable(16) %29)
  %917 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %30, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %916, %"struct.std::_Rb_tree_node_base"** %917, align 8
  br label %927

918:                                              ; preds = %903
  %919 = landingpad { i8*, i32 }
          cleanup
  %920 = extractvalue { i8*, i32 } %919, 0
  store i8* %920, i8** %22, align 8
  %921 = extractvalue { i8*, i32 } %919, 1
  store i32 %921, i32* %23, align 4
  br label %926

922:                                              ; preds = %911
  %923 = landingpad { i8*, i32 }
          cleanup
  %924 = extractvalue { i8*, i32 } %923, 0
  store i8* %924, i8** %22, align 8
  %925 = extractvalue { i8*, i32 } %923, 1
  store i32 %925, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %27) #2
  br label %926

926:                                              ; preds = %922, %918
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %28) #2
  br label %2182

927:                                              ; preds = %913, %893
  br label %928

928:                                              ; preds = %927, %860
  br label %929

929:                                              ; preds = %928, %833
  br label %930

930:                                              ; preds = %929, %793
  br label %931

931:                                              ; preds = %930, %788
  br label %932

932:                                              ; preds = %931, %349
  br label %933

933:                                              ; preds = %932, %346
  br label %934

934:                                              ; preds = %933, %901, %410
  %935 = load i32, i32* %17, align 4
  %936 = add nsw i32 %935, 1
  store i32 %936, i32* %17, align 4
  br label %331

937:                                              ; preds = %344
  %938 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5beginEv(%"class.std::multimap"* @tftpAge) #2
  %939 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %31, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %938, %"struct.std::_Rb_tree_node_base"** %939, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2Ev(%"struct.std::_Rb_tree_iterator"* %32) #2
  %940 = call i64 @time(i64* null) #2
  store i64 %940, i64* %33, align 8
  br label %941

941:                                              ; preds = %1179, %937
  %942 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE3endEv(%"class.std::multimap"* @tftpAge) #2
  %943 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %35, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %942, %"struct.std::_Rb_tree_node_base"** %943, align 8
  %944 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEneERKS5_(%"struct.std::_Rb_tree_iterator"* %31, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %35) #2
  br i1 %944, label %945, label %1180

945:                                              ; preds = %941
  %946 = call %"struct.std::pair.14"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv(%"struct.std::_Rb_tree_iterator"* %31) #2
  %947 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %946, i32 0, i32 1
  %948 = load %struct.request*, %struct.request** %947, align 8
  store %struct.request* %948, %struct.request** %34, align 8
  %949 = call %"struct.std::pair.14"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv(%"struct.std::_Rb_tree_iterator"* %31) #2
  %950 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %949, i32 0, i32 0
  %951 = load i64, i64* %950, align 8
  %952 = load i64, i64* %33, align 8
  %953 = icmp sgt i64 %951, %952
  br i1 %953, label %954, label %955

954:                                              ; preds = %945
  br label %1180

955:                                              ; preds = %945
  %956 = call %"struct.std::pair.14"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv(%"struct.std::_Rb_tree_iterator"* %31) #2
  %957 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %956, i32 0, i32 0
  %958 = load i64, i64* %957, align 8
  %959 = load %struct.request*, %struct.request** %34, align 8
  %960 = getelementptr inbounds %struct.request, %struct.request* %959, i32 0, i32 4
  %961 = load i64, i64* %960, align 8
  %962 = icmp slt i64 %958, %961
  br i1 %962, label %963, label %984

963:                                              ; preds = %955
  %964 = load %struct.request*, %struct.request** %34, align 8
  %965 = getelementptr inbounds %struct.request, %struct.request* %964, i32 0, i32 4
  %966 = load i64, i64* %965, align 8
  %967 = load i64, i64* %33, align 8
  %968 = icmp sgt i64 %966, %967
  br i1 %968, label %969, label %984

969:                                              ; preds = %963
  %970 = bitcast %"struct.std::_Rb_tree_iterator"* %32 to i8*
  %971 = bitcast %"struct.std::_Rb_tree_iterator"* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %970, i8* align 8 %971, i64 8, i1 false)
  %972 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %31, i32 0) #2
  %973 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %36, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %972, %"struct.std::_Rb_tree_node_base"** %973, align 8
  %974 = bitcast %"struct.std::_Rb_tree_iterator"* %37 to i8*
  %975 = bitcast %"struct.std::_Rb_tree_iterator"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %974, i8* align 8 %975, i64 8, i1 false)
  %976 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %37, i32 0, i32 0
  %977 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %976, align 8
  %978 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS6_E(%"class.std::multimap"* @tftpAge, %"struct.std::_Rb_tree_node_base"* %977)
  %979 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %38, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %978, %"struct.std::_Rb_tree_node_base"** %979, align 8
  %980 = load %struct.request*, %struct.request** %34, align 8
  %981 = getelementptr inbounds %struct.request, %struct.request* %980, i32 0, i32 4
  call void @_ZNSt4pairIlP7requestEC2IRlRS1_Lb1EEEOT_OT0_(%"struct.std::pair"* %39, i64* dereferenceable(8) %981, %struct.request** dereferenceable(8) %34)
  %982 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE6insertIS4_IlS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueESt17_Rb_tree_iteratorIS6_EE4typeEOSC_(%"class.std::multimap"* @tftpAge, %"struct.std::pair"* dereferenceable(16) %39)
  %983 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %40, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %982, %"struct.std::_Rb_tree_node_base"** %983, align 8
  br label %1178

984:                                              ; preds = %963, %955
  %985 = load %struct.request*, %struct.request** %34, align 8
  %986 = getelementptr inbounds %struct.request, %struct.request* %985, i32 0, i32 4
  %987 = load i64, i64* %986, align 8
  %988 = load i64, i64* %33, align 8
  %989 = icmp sle i64 %987, %988
  br i1 %989, label %990, label %1092

990:                                              ; preds = %984
  %991 = load %struct.request*, %struct.request** %34, align 8
  %992 = getelementptr inbounds %struct.request, %struct.request* %991, i32 0, i32 2
  %993 = load i8, i8* %992, align 1
  %994 = zext i8 %993 to i32
  %995 = icmp sge i32 %994, 3
  br i1 %995, label %996, label %1092

996:                                              ; preds = %990
  %997 = load %struct.request*, %struct.request** %34, align 8
  %998 = getelementptr inbounds %struct.request, %struct.request* %997, i32 0, i32 2
  %999 = load i8, i8* %998, align 1
  %1000 = zext i8 %999 to i32
  %1001 = icmp slt i32 %1000, 255
  br i1 %1001, label %1002, label %1063

1002:                                             ; preds = %996
  %1003 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1004 = load %struct.request*, %struct.request** %34, align 8
  %1005 = getelementptr inbounds %struct.request, %struct.request* %1004, i32 0, i32 21
  %1006 = bitcast %union.anon.9* %1005 to %struct.tftperror*
  %1007 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1006, i32 0, i32 0
  store i16 %1003, i16* %1007, align 8
  %1008 = call zeroext i16 @htons(i16 zeroext 0) #18
  %1009 = load %struct.request*, %struct.request** %34, align 8
  %1010 = getelementptr inbounds %struct.request, %struct.request* %1009, i32 0, i32 21
  %1011 = bitcast %union.anon.9* %1010 to %struct.tftperror*
  %1012 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1011, i32 0, i32 1
  store i16 %1008, i16* %1012, align 2
  %1013 = load %struct.request*, %struct.request** %34, align 8
  %1014 = getelementptr inbounds %struct.request, %struct.request* %1013, i32 0, i32 12
  %1015 = load i32, i32* %1014, align 4
  %1016 = icmp ne i32 %1015, 0
  br i1 %1016, label %1017, label %1029

1017:                                             ; preds = %1002
  %1018 = load %struct.request*, %struct.request** %34, align 8
  %1019 = getelementptr inbounds %struct.request, %struct.request* %1018, i32 0, i32 13
  %1020 = load i16, i16* %1019, align 8
  %1021 = icmp ne i16 %1020, 0
  br i1 %1021, label %1029, label %1022

1022:                                             ; preds = %1017
  %1023 = load %struct.request*, %struct.request** %34, align 8
  %1024 = getelementptr inbounds %struct.request, %struct.request* %1023, i32 0, i32 21
  %1025 = bitcast %union.anon.9* %1024 to %struct.tftperror*
  %1026 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1025, i32 0, i32 2
  %1027 = getelementptr inbounds [508 x i8], [508 x i8]* %1026, i32 0, i32 0
  %1028 = call i8* @strcpy(i8* %1027, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0)) #2
  br label %1036

1029:                                             ; preds = %1017, %1002
  %1030 = load %struct.request*, %struct.request** %34, align 8
  %1031 = getelementptr inbounds %struct.request, %struct.request* %1030, i32 0, i32 21
  %1032 = bitcast %union.anon.9* %1031 to %struct.tftperror*
  %1033 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1032, i32 0, i32 2
  %1034 = getelementptr inbounds [508 x i8], [508 x i8]* %1033, i32 0, i32 0
  %1035 = call i8* @strcpy(i8* %1034, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #2
  br label %1036

1036:                                             ; preds = %1029, %1022
  %1037 = load %struct.request*, %struct.request** %34, align 8
  %1038 = getelementptr inbounds %struct.request, %struct.request* %1037, i32 0, i32 3
  %1039 = load i8, i8* %1038, align 2
  %1040 = zext i8 %1039 to i64
  %1041 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1040
  %1042 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1041, i32 0, i32 0
  %1043 = load i32, i32* %1042, align 4
  %1044 = load %struct.request*, %struct.request** %34, align 8
  %1045 = getelementptr inbounds %struct.request, %struct.request* %1044, i32 0, i32 21
  %1046 = bitcast %union.anon.9* %1045 to %struct.tftperror*
  %1047 = bitcast %struct.tftperror* %1046 to i8*
  %1048 = load %struct.request*, %struct.request** %34, align 8
  %1049 = getelementptr inbounds %struct.request, %struct.request* %1048, i32 0, i32 21
  %1050 = bitcast %union.anon.9* %1049 to %struct.tftperror*
  %1051 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1050, i32 0, i32 2
  %1052 = getelementptr inbounds [508 x i8], [508 x i8]* %1051, i32 0, i32 0
  %1053 = call i64 @strlen(i8* %1052) #16
  %1054 = add i64 %1053, 5
  %1055 = load %struct.request*, %struct.request** %34, align 8
  %1056 = getelementptr inbounds %struct.request, %struct.request* %1055, i32 0, i32 18
  %1057 = bitcast %struct.sockaddr_in* %1056 to %struct.sockaddr*
  %1058 = load %struct.request*, %struct.request** %34, align 8
  %1059 = getelementptr inbounds %struct.request, %struct.request* %1058, i32 0, i32 19
  %1060 = load i32, i32* %1059, align 8
  %1061 = call i64 @sendto(i32 %1043, i8* %1047, i64 %1054, i32 0, %struct.sockaddr* %1057, i32 %1060)
  %1062 = load %struct.request*, %struct.request** %34, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1062, i8 zeroext 1)
  br label %1063

1063:                                             ; preds = %1036, %996
  %1064 = bitcast %"struct.std::_Rb_tree_iterator"* %32 to i8*
  %1065 = bitcast %"struct.std::_Rb_tree_iterator"* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1064, i8* align 8 %1065, i64 8, i1 false)
  %1066 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %31, i32 0) #2
  %1067 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %41, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1066, %"struct.std::_Rb_tree_node_base"** %1067, align 8
  %1068 = bitcast %"struct.std::_Rb_tree_iterator"* %42 to i8*
  %1069 = bitcast %"struct.std::_Rb_tree_iterator"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1068, i8* align 8 %1069, i64 8, i1 false)
  %1070 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %42, i32 0, i32 0
  %1071 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %1070, align 8
  %1072 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS6_E(%"class.std::multimap"* @tftpAge, %"struct.std::_Rb_tree_node_base"* %1071)
  %1073 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %43, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1072, %"struct.std::_Rb_tree_node_base"** %1073, align 8
  %1074 = load %struct.request*, %struct.request** %34, align 8
  %1075 = getelementptr inbounds %struct.request, %struct.request* %1074, i32 0, i32 0
  %1076 = getelementptr inbounds [32 x i8], [32 x i8]* %1075, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %45) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %44, i8* %1076, %"class.std::allocator.10"* dereferenceable(1) %45)
          to label %1077 unwind label %1083

1077:                                             ; preds = %1063
  %1078 = invoke i64 @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseERSB_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %44)
          to label %1079 unwind label %1087

1079:                                             ; preds = %1077
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %44) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %45) #2
  %1080 = load %struct.request*, %struct.request** %34, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1080)
  %1081 = load %struct.request*, %struct.request** %34, align 8
  %1082 = bitcast %struct.request* %1081 to i8*
  call void @free(i8* %1082) #2
  br label %1177

1083:                                             ; preds = %1063
  %1084 = landingpad { i8*, i32 }
          cleanup
  %1085 = extractvalue { i8*, i32 } %1084, 0
  store i8* %1085, i8** %22, align 8
  %1086 = extractvalue { i8*, i32 } %1084, 1
  store i32 %1086, i32* %23, align 4
  br label %1091

1087:                                             ; preds = %1077
  %1088 = landingpad { i8*, i32 }
          cleanup
  %1089 = extractvalue { i8*, i32 } %1088, 0
  store i8* %1089, i8** %22, align 8
  %1090 = extractvalue { i8*, i32 } %1088, 1
  store i32 %1090, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %44) #2
  br label %1091

1091:                                             ; preds = %1087, %1083
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %45) #2
  br label %2182

1092:                                             ; preds = %990, %984
  %1093 = load %struct.request*, %struct.request** %34, align 8
  %1094 = getelementptr inbounds %struct.request, %struct.request* %1093, i32 0, i32 4
  %1095 = load i64, i64* %1094, align 8
  %1096 = load i64, i64* %33, align 8
  %1097 = icmp sle i64 %1095, %1096
  br i1 %1097, label %1098, label %1173

1098:                                             ; preds = %1092
  %1099 = load %struct.request*, %struct.request** %34, align 8
  %1100 = getelementptr inbounds %struct.request, %struct.request* %1099, i32 0, i32 21
  %1101 = bitcast %union.anon.9* %1100 to %struct.acknowledgement*
  %1102 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1101, i32 0, i32 0
  %1103 = load i16, i16* %1102, align 8
  %1104 = call zeroext i16 @ntohs(i16 zeroext %1103) #18
  %1105 = zext i16 %1104 to i32
  %1106 = icmp eq i32 %1105, 3
  br i1 %1106, label %1107, label %1127

1107:                                             ; preds = %1098
  %1108 = load %struct.request*, %struct.request** %34, align 8
  %1109 = call i32 @_Z11processSendP7request(%struct.request* %1108)
  %1110 = icmp ne i32 %1109, 0
  br i1 %1110, label %1111, label %1113

1111:                                             ; preds = %1107
  %1112 = load %struct.request*, %struct.request** %34, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1112)
  br label %1126

1113:                                             ; preds = %1107
  %1114 = load %struct.request*, %struct.request** %34, align 8
  %1115 = getelementptr inbounds %struct.request, %struct.request* %1114, i32 0, i32 2
  %1116 = load i8, i8* %1115, align 1
  %1117 = add i8 %1116, 1
  store i8 %1117, i8* %1115, align 1
  %1118 = load i64, i64* %33, align 8
  %1119 = load %struct.request*, %struct.request** %34, align 8
  %1120 = getelementptr inbounds %struct.request, %struct.request* %1119, i32 0, i32 11
  %1121 = load i32, i32* %1120, align 8
  %1122 = zext i32 %1121 to i64
  %1123 = add nsw i64 %1118, %1122
  %1124 = load %struct.request*, %struct.request** %34, align 8
  %1125 = getelementptr inbounds %struct.request, %struct.request* %1124, i32 0, i32 4
  store i64 %1123, i64* %1125, align 8
  br label %1126

1126:                                             ; preds = %1113, %1111
  br label %1170

1127:                                             ; preds = %1098
  %1128 = call i32* @__errno_location() #18
  store i32 0, i32* %1128, align 4
  %1129 = load %struct.request*, %struct.request** %34, align 8
  %1130 = getelementptr inbounds %struct.request, %struct.request* %1129, i32 0, i32 3
  %1131 = load i8, i8* %1130, align 2
  %1132 = zext i8 %1131 to i64
  %1133 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1132
  %1134 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1133, i32 0, i32 0
  %1135 = load i32, i32* %1134, align 4
  %1136 = load %struct.request*, %struct.request** %34, align 8
  %1137 = getelementptr inbounds %struct.request, %struct.request* %1136, i32 0, i32 21
  %1138 = bitcast %union.anon.9* %1137 to %struct.acknowledgement*
  %1139 = bitcast %struct.acknowledgement* %1138 to i8*
  %1140 = load %struct.request*, %struct.request** %34, align 8
  %1141 = getelementptr inbounds %struct.request, %struct.request* %1140, i32 0, i32 17
  %1142 = load i32, i32* %1141, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = load %struct.request*, %struct.request** %34, align 8
  %1145 = getelementptr inbounds %struct.request, %struct.request* %1144, i32 0, i32 18
  %1146 = bitcast %struct.sockaddr_in* %1145 to %struct.sockaddr*
  %1147 = load %struct.request*, %struct.request** %34, align 8
  %1148 = getelementptr inbounds %struct.request, %struct.request* %1147, i32 0, i32 19
  %1149 = load i32, i32* %1148, align 8
  %1150 = call i64 @sendto(i32 %1135, i8* %1139, i64 %1143, i32 0, %struct.sockaddr* %1146, i32 %1149)
  %1151 = call i32* @__errno_location() #18
  %1152 = load i32, i32* %1151, align 4
  %1153 = icmp ne i32 %1152, 0
  br i1 %1153, label %1154, label %1156

1154:                                             ; preds = %1127
  %1155 = load %struct.request*, %struct.request** %34, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1155)
  br label %1169

1156:                                             ; preds = %1127
  %1157 = load %struct.request*, %struct.request** %34, align 8
  %1158 = getelementptr inbounds %struct.request, %struct.request* %1157, i32 0, i32 2
  %1159 = load i8, i8* %1158, align 1
  %1160 = add i8 %1159, 1
  store i8 %1160, i8* %1158, align 1
  %1161 = load i64, i64* %33, align 8
  %1162 = load %struct.request*, %struct.request** %34, align 8
  %1163 = getelementptr inbounds %struct.request, %struct.request* %1162, i32 0, i32 11
  %1164 = load i32, i32* %1163, align 8
  %1165 = zext i32 %1164 to i64
  %1166 = add nsw i64 %1161, %1165
  %1167 = load %struct.request*, %struct.request** %34, align 8
  %1168 = getelementptr inbounds %struct.request, %struct.request* %1167, i32 0, i32 4
  store i64 %1166, i64* %1168, align 8
  br label %1169

1169:                                             ; preds = %1156, %1154
  br label %1170

1170:                                             ; preds = %1169, %1126
  %1171 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %31, i32 0) #2
  %1172 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %46, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1171, %"struct.std::_Rb_tree_node_base"** %1172, align 8
  br label %1176

1173:                                             ; preds = %1092
  %1174 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %31, i32 0) #2
  %1175 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %47, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1174, %"struct.std::_Rb_tree_node_base"** %1175, align 8
  br label %1176

1176:                                             ; preds = %1173, %1170
  br label %1177

1177:                                             ; preds = %1176, %1079
  br label %1178

1178:                                             ; preds = %1177, %969
  br label %1179

1179:                                             ; preds = %1178
  br label %941

1180:                                             ; preds = %954, %941
  br label %1181

1181:                                             ; preds = %1180, %278
  %1182 = load i8, i8* @kRunning, align 1
  %1183 = trunc i8 %1182 to i1
  br i1 %1183, label %275, label %1184

1184:                                             ; preds = %1181
  %1185 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @_Z9closeConnv()
  %1186 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %1187 = call i32 @close(i32 %1186)
  %1188 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %1189 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %1190 = icmp ne %struct._IO_FILE* %1189, null
  br i1 %1190, label %1191, label %1194

1191:                                             ; preds = %1184
  %1192 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %1193 = call i32 @fclose(%struct._IO_FILE* %1192)
  br label %1194

1194:                                             ; preds = %1191, %1184
  call void @exit(i32 0) #17
  unreachable

1195:                                             ; preds = %228
  %1196 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i64 0, i64 0), align 16
  %1197 = icmp ne i8 %1196, 0
  br i1 %1197, label %1198, label %1199

1198:                                             ; preds = %1195
  call void (i32, i8*, ...) @syslog(i32 138, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0))
  call void @exit(i32 1) #17
  unreachable

1199:                                             ; preds = %1195
  %1200 = call i32 @fork() #2
  store i32 %1200, i32* %48, align 4
  %1201 = load i32, i32* %48, align 4
  %1202 = icmp slt i32 %1201, 0
  br i1 %1202, label %1203, label %1204

1203:                                             ; preds = %1199
  call void @exit(i32 1) #17
  unreachable

1204:                                             ; preds = %1199
  %1205 = load i32, i32* %48, align 4
  %1206 = icmp sgt i32 %1205, 0
  br i1 %1206, label %1207, label %1208

1207:                                             ; preds = %1204
  call void @exit(i32 0) #17
  unreachable

1208:                                             ; preds = %1204
  %1209 = call i32 @umask(i32 0) #2
  %1210 = call i32 @setsid() #2
  store i32 %1210, i32* %49, align 4
  %1211 = load i32, i32* %49, align 4
  %1212 = icmp slt i32 %1211, 0
  br i1 %1212, label %1213, label %1214

1213:                                             ; preds = %1208
  call void @exit(i32 1) #17
  unreachable

1214:                                             ; preds = %1208
  %1215 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #2
  %1216 = icmp slt i32 %1215, 0
  br i1 %1216, label %1217, label %1218

1217:                                             ; preds = %1214
  call void @exit(i32 1) #17
  unreachable

1218:                                             ; preds = %1214
  %1219 = call i32 @close(i32 0)
  %1220 = call i32 @close(i32 1)
  %1221 = call i32 @close(i32 2)
  %1222 = call i32 @pthread_attr_init(%union.pthread_attr_t* %51) #2
  %1223 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %51, i32 1) #2
  %1224 = call i32 @pthread_create(i64* %50, %union.pthread_attr_t* %51, i8* (i8*)* @_Z4initPv, i8* null) #2
  store i32 %1224, i32* %52, align 4
  %1225 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %51) #2
  %1226 = load i32, i32* %52, align 4
  %1227 = icmp ne i32 %1226, 0
  br i1 %1227, label %1228, label %1232

1228:                                             ; preds = %1218
  %1229 = load i32, i32* %52, align 4
  %1230 = call i8* @strerror(i32 %1229) #2
  %1231 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* %1230) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #17
  unreachable

1232:                                             ; preds = %1218
  %1233 = load i16, i16* @blksize, align 2
  %1234 = zext i16 %1233 to i32
  %1235 = add nsw i32 %1234, 4
  %1236 = sext i32 %1235 to i64
  %1237 = call noalias i8* @calloc(i64 1, i64 %1236) #2
  %1238 = bitcast i8* %1237 to %struct.packet*
  store %struct.packet* %1238, %struct.packet** @datain, align 8
  store i32 0, i32* %56, align 4
  %1239 = load %struct.packet*, %struct.packet** @datain, align 8
  %1240 = icmp ne %struct.packet* %1239, null
  br i1 %1240, label %1243, label %1241

1241:                                             ; preds = %1232
  %1242 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 0)
  call void @exit(i32 1) #17
  unreachable

1243:                                             ; preds = %1232
  br label %1244

1244:                                             ; preds = %1253, %1243
  %1245 = load i8, i8* @kRunning, align 1
  %1246 = trunc i8 %1245 to i1
  br i1 %1246, label %1247, label %1251

1247:                                             ; preds = %1244
  %1248 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %1249 = trunc i8 %1248 to i1
  %1250 = xor i1 %1249, true
  br label %1251

1251:                                             ; preds = %1247, %1244
  %1252 = phi i1 [ false, %1244 ], [ %1250, %1247 ]
  br i1 %1252, label %1253, label %1255

1253:                                             ; preds = %1251
  %1254 = call i32 @sleep(i32 1)
  br label %1244

1255:                                             ; preds = %1251
  %1256 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %1257 = call i32 @setuid(i32 %1256) #2
  %1258 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 5), align 4
  %1259 = call i32 @setgid(i32 %1258) #2
  br label %1260

1260:                                             ; preds = %2166, %1255
  store i8 0, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %1261 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %1262 = trunc i8 %1261 to i1
  br i1 %1262, label %1265, label %1263

1263:                                             ; preds = %1260
  %1264 = call i32 @sleep(i32 1)
  br label %2166

1265:                                             ; preds = %1260
  br label %1266

1266:                                             ; preds = %1265
  %1267 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %54, i32 0, i32 0
  %1268 = getelementptr inbounds [16 x i64], [16 x i64]* %1267, i64 0, i64 0
  %1269 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %1268) #2, !srcloc !3
  %1270 = extractvalue { i64, i64* } %1269, 0
  %1271 = extractvalue { i64, i64* } %1269, 1
  %1272 = trunc i64 %1270 to i32
  store i32 %1272, i32* %57, align 4
  %1273 = ptrtoint i64* %1271 to i64
  %1274 = trunc i64 %1273 to i32
  store i32 %1274, i32* %58, align 4
  br label %1275

1275:                                             ; preds = %1266
  %1276 = getelementptr inbounds %struct.timeval, %struct.timeval* %53, i32 0, i32 0
  store i64 1, i64* %1276, align 8
  %1277 = getelementptr inbounds %struct.timeval, %struct.timeval* %53, i32 0, i32 1
  store i64 0, i64* %1277, align 8
  store i32 0, i32* %59, align 4
  br label %1278

1278:                                             ; preds = %1310, %1275
  %1279 = load i32, i32* %59, align 4
  %1280 = icmp slt i32 %1279, 8
  br i1 %1280, label %1281, label %1288

1281:                                             ; preds = %1278
  %1282 = load i32, i32* %59, align 4
  %1283 = sext i32 %1282 to i64
  %1284 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1283
  %1285 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1284, i32 0, i32 4
  %1286 = load i8, i8* %1285, align 2
  %1287 = trunc i8 %1286 to i1
  br label %1288

1288:                                             ; preds = %1281, %1278
  %1289 = phi i1 [ false, %1278 ], [ %1287, %1281 ]
  br i1 %1289, label %1290, label %1313

1290:                                             ; preds = %1288
  %1291 = load i32, i32* %59, align 4
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1292
  %1294 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1293, i32 0, i32 0
  %1295 = load i32, i32* %1294, align 4
  %1296 = srem i32 %1295, 64
  %1297 = zext i32 %1296 to i64
  %1298 = shl i64 1, %1297
  %1299 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %54, i32 0, i32 0
  %1300 = load i32, i32* %59, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1301
  %1303 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1302, i32 0, i32 0
  %1304 = load i32, i32* %1303, align 4
  %1305 = sdiv i32 %1304, 64
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds [16 x i64], [16 x i64]* %1299, i64 0, i64 %1306
  %1308 = load i64, i64* %1307, align 8
  %1309 = or i64 %1308, %1298
  store i64 %1309, i64* %1307, align 8
  br label %1310

1310:                                             ; preds = %1290
  %1311 = load i32, i32* %59, align 4
  %1312 = add nsw i32 %1311, 1
  store i32 %1312, i32* %59, align 4
  br label %1278

1313:                                             ; preds = %1288
  %1314 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 7), align 4
  %1315 = call i32 @select(i32 %1314, %struct.fd_set* %54, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %53)
  store i32 %1315, i32* %56, align 4
  store i32 0, i32* %60, align 4
  br label %1316

1316:                                             ; preds = %1919, %1313
  %1317 = load i32, i32* %56, align 4
  %1318 = icmp sgt i32 %1317, 0
  br i1 %1318, label %1319, label %1329

1319:                                             ; preds = %1316
  %1320 = load i32, i32* %60, align 4
  %1321 = icmp slt i32 %1320, 8
  br i1 %1321, label %1322, label %1329

1322:                                             ; preds = %1319
  %1323 = load i32, i32* %60, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1324
  %1326 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1325, i32 0, i32 4
  %1327 = load i8, i8* %1326, align 2
  %1328 = trunc i8 %1327 to i1
  br label %1329

1329:                                             ; preds = %1322, %1319, %1316
  %1330 = phi i1 [ false, %1319 ], [ false, %1316 ], [ %1328, %1322 ]
  br i1 %1330, label %1331, label %1922

1331:                                             ; preds = %1329
  %1332 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %1333 = trunc i8 %1332 to i1
  br i1 %1333, label %1334, label %1918

1334:                                             ; preds = %1331
  store i8 1, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %1335 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %54, i32 0, i32 0
  %1336 = load i32, i32* %60, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1337
  %1339 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1338, i32 0, i32 0
  %1340 = load i32, i32* %1339, align 4
  %1341 = sdiv i32 %1340, 64
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds [16 x i64], [16 x i64]* %1335, i64 0, i64 %1342
  %1344 = load i64, i64* %1343, align 8
  %1345 = load i32, i32* %60, align 4
  %1346 = sext i32 %1345 to i64
  %1347 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1346
  %1348 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1347, i32 0, i32 0
  %1349 = load i32, i32* %1348, align 4
  %1350 = srem i32 %1349, 64
  %1351 = zext i32 %1350 to i64
  %1352 = shl i64 1, %1351
  %1353 = and i64 %1344, %1352
  %1354 = icmp ne i64 %1353, 0
  br i1 %1354, label %1355, label %1917

1355:                                             ; preds = %1334
  %1356 = load i32, i32* %56, align 4
  %1357 = add nsw i32 %1356, -1
  store i32 %1357, i32* %56, align 4
  %1358 = bitcast %struct.request* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1358, i8 0, i64 920, i1 false)
  %1359 = load %struct.packet*, %struct.packet** @datain, align 8
  %1360 = bitcast %struct.packet* %1359 to i8*
  %1361 = load i16, i16* @blksize, align 2
  %1362 = zext i16 %1361 to i32
  %1363 = add nsw i32 %1362, 4
  %1364 = sext i32 %1363 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 %1360, i8 0, i64 %1364, i1 false)
  %1365 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 19
  store i32 16, i32* %1365, align 8
  %1366 = load i32, i32* %60, align 4
  %1367 = trunc i32 %1366 to i8
  %1368 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 3
  store i8 %1367, i8* %1368, align 2
  %1369 = call i32* @__errno_location() #18
  store i32 0, i32* %1369, align 4
  %1370 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 3
  %1371 = load i8, i8* %1370, align 2
  %1372 = zext i8 %1371 to i64
  %1373 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1372
  %1374 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1373, i32 0, i32 0
  %1375 = load i32, i32* %1374, align 4
  %1376 = load %struct.packet*, %struct.packet** @datain, align 8
  %1377 = bitcast %struct.packet* %1376 to i8*
  %1378 = load i16, i16* @blksize, align 2
  %1379 = zext i16 %1378 to i32
  %1380 = add nsw i32 %1379, 4
  %1381 = sext i32 %1380 to i64
  %1382 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 18
  %1383 = bitcast %struct.sockaddr_in* %1382 to %struct.sockaddr*
  %1384 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 19
  %1385 = call i64 @recvfrom(i32 %1375, i8* %1377, i64 %1381, i32 0, %struct.sockaddr* %1383, i32* %1384)
  %1386 = trunc i64 %1385 to i32
  %1387 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 15
  store i32 %1386, i32* %1387, align 4
  %1388 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 15
  %1389 = load i32, i32* %1388, align 4
  %1390 = icmp slt i32 %1389, 4
  br i1 %1390, label %1395, label %1391

1391:                                             ; preds = %1355
  %1392 = call i32* @__errno_location() #18
  %1393 = load i32, i32* %1392, align 4
  %1394 = icmp ne i32 %1393, 0
  br i1 %1394, label %1395, label %1396

1395:                                             ; preds = %1391, %1355
  br label %1919

1396:                                             ; preds = %1391
  %1397 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 0
  %1398 = getelementptr inbounds [32 x i8], [32 x i8]* %1397, i32 0, i32 0
  %1399 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 18
  %1400 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1399, i32 0, i32 2
  %1401 = bitcast %struct.in_addr* %61 to i8*
  %1402 = bitcast %struct.in_addr* %1400 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1401, i8* align 4 %1402, i64 4, i1 false)
  %1403 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0
  %1404 = load i32, i32* %1403, align 4
  %1405 = call i8* @inet_ntoa(i32 %1404) #2
  %1406 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 18
  %1407 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1406, i32 0, i32 1
  %1408 = load i16, i16* %1407, align 2
  %1409 = call zeroext i16 @ntohs(i16 zeroext %1408) #18
  %1410 = zext i16 %1409 to i32
  %1411 = call i32 (i8*, i8*, ...) @sprintf(i8* %1398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %1405, i32 %1410) #2
  %1412 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 0
  %1413 = getelementptr inbounds [32 x i8], [32 x i8]* %1412, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %64) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %63, i8* %1413, %"class.std::allocator.10"* dereferenceable(1) %64)
          to label %1414 unwind label %1426

1414:                                             ; preds = %1396
  %1415 = invoke dereferenceable(8) %struct.request** @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %63)
          to label %1416 unwind label %1430

1416:                                             ; preds = %1414
  %1417 = load %struct.request*, %struct.request** %1415, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %63) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %64) #2
  store %struct.request* %1417, %struct.request** %62, align 8
  %1418 = load %struct.request*, %struct.request** %62, align 8
  %1419 = icmp ne %struct.request* %1418, null
  br i1 %1419, label %1444, label %1420

1420:                                             ; preds = %1416
  %1421 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 0
  %1422 = getelementptr inbounds [32 x i8], [32 x i8]* %1421, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %66) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %65, i8* %1422, %"class.std::allocator.10"* dereferenceable(1) %66)
          to label %1423 unwind label %1435

1423:                                             ; preds = %1420
  %1424 = invoke i64 @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseERSB_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %65)
          to label %1425 unwind label %1439

1425:                                             ; preds = %1423
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %65) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %66) #2
  br label %1444

1426:                                             ; preds = %1396
  %1427 = landingpad { i8*, i32 }
          cleanup
  %1428 = extractvalue { i8*, i32 } %1427, 0
  store i8* %1428, i8** %22, align 8
  %1429 = extractvalue { i8*, i32 } %1427, 1
  store i32 %1429, i32* %23, align 4
  br label %1434

1430:                                             ; preds = %1414
  %1431 = landingpad { i8*, i32 }
          cleanup
  %1432 = extractvalue { i8*, i32 } %1431, 0
  store i8* %1432, i8** %22, align 8
  %1433 = extractvalue { i8*, i32 } %1431, 1
  store i32 %1433, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %63) #2
  br label %1434

1434:                                             ; preds = %1430, %1426
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %64) #2
  br label %2182

1435:                                             ; preds = %1420
  %1436 = landingpad { i8*, i32 }
          cleanup
  %1437 = extractvalue { i8*, i32 } %1436, 0
  store i8* %1437, i8** %22, align 8
  %1438 = extractvalue { i8*, i32 } %1436, 1
  store i32 %1438, i32* %23, align 4
  br label %1443

1439:                                             ; preds = %1423
  %1440 = landingpad { i8*, i32 }
          cleanup
  %1441 = extractvalue { i8*, i32 } %1440, 0
  store i8* %1441, i8** %22, align 8
  %1442 = extractvalue { i8*, i32 } %1440, 1
  store i32 %1442, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %65) #2
  br label %1443

1443:                                             ; preds = %1439, %1435
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %66) #2
  br label %2182

1444:                                             ; preds = %1425, %1416
  %1445 = load %struct.request*, %struct.request** %62, align 8
  %1446 = icmp ne %struct.request* %1445, null
  br i1 %1446, label %1447, label %1774

1447:                                             ; preds = %1444
  %1448 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 15
  %1449 = load i32, i32* %1448, align 4
  %1450 = load %struct.request*, %struct.request** %62, align 8
  %1451 = getelementptr inbounds %struct.request, %struct.request* %1450, i32 0, i32 15
  store i32 %1449, i32* %1451, align 4
  %1452 = load %struct.packet*, %struct.packet** @datain, align 8
  %1453 = getelementptr inbounds %struct.packet, %struct.packet* %1452, i32 0, i32 0
  %1454 = load i16, i16* %1453, align 2
  %1455 = call zeroext i16 @ntohs(i16 zeroext %1454) #18
  %1456 = zext i16 %1455 to i32
  %1457 = icmp eq i32 %1456, 3
  br i1 %1457, label %1458, label %1574

1458:                                             ; preds = %1447
  %1459 = load %struct.request*, %struct.request** %62, align 8
  %1460 = getelementptr inbounds %struct.request, %struct.request* %1459, i32 0, i32 1
  %1461 = load i8, i8* %1460, align 8
  %1462 = zext i8 %1461 to i32
  %1463 = icmp eq i32 %1462, 2
  br i1 %1463, label %1464, label %1574

1464:                                             ; preds = %1458
  %1465 = load %struct.request*, %struct.request** %62, align 8
  %1466 = getelementptr inbounds %struct.request, %struct.request* %1465, i32 0, i32 15
  %1467 = load i32, i32* %1466, align 4
  %1468 = trunc i32 %1467 to i16
  %1469 = zext i16 %1468 to i32
  %1470 = load %struct.request*, %struct.request** %62, align 8
  %1471 = getelementptr inbounds %struct.request, %struct.request* %1470, i32 0, i32 10
  %1472 = load i32, i32* %1471, align 4
  %1473 = add i32 %1472, 4
  %1474 = icmp ule i32 %1469, %1473
  br i1 %1474, label %1475, label %1529

1475:                                             ; preds = %1464
  %1476 = load %struct.request*, %struct.request** %62, align 8
  %1477 = getelementptr inbounds %struct.request, %struct.request* %1476, i32 0, i32 2
  %1478 = load i8, i8* %1477, align 1
  %1479 = zext i8 %1478 to i32
  %1480 = icmp sle i32 %1479, 3
  br i1 %1480, label %1481, label %1528

1481:                                             ; preds = %1475
  %1482 = load %struct.request*, %struct.request** %62, align 8
  %1483 = getelementptr inbounds %struct.request, %struct.request* %1482, i32 0, i32 13
  %1484 = load i16, i16* %1483, align 8
  %1485 = zext i16 %1484 to i32
  %1486 = add nsw i32 %1485, 1
  %1487 = trunc i32 %1486 to i16
  %1488 = load %struct.request*, %struct.request** %62, align 8
  %1489 = getelementptr inbounds %struct.request, %struct.request* %1488, i32 0, i32 14
  store i16 %1487, i16* %1489, align 2
  %1490 = load %struct.packet*, %struct.packet** @datain, align 8
  %1491 = getelementptr inbounds %struct.packet, %struct.packet* %1490, i32 0, i32 1
  %1492 = load i16, i16* %1491, align 2
  %1493 = call zeroext i16 @ntohs(i16 zeroext %1492) #18
  %1494 = zext i16 %1493 to i32
  %1495 = load %struct.request*, %struct.request** %62, align 8
  %1496 = getelementptr inbounds %struct.request, %struct.request* %1495, i32 0, i32 14
  %1497 = load i16, i16* %1496, align 2
  %1498 = zext i16 %1497 to i32
  %1499 = icmp eq i32 %1494, %1498
  br i1 %1499, label %1500, label %1527

1500:                                             ; preds = %1481
  %1501 = load %struct.request*, %struct.request** %62, align 8
  %1502 = getelementptr inbounds %struct.request, %struct.request* %1501, i32 0, i32 14
  %1503 = load i16, i16* %1502, align 2
  %1504 = load %struct.request*, %struct.request** %62, align 8
  %1505 = getelementptr inbounds %struct.request, %struct.request* %1504, i32 0, i32 13
  store i16 %1503, i16* %1505, align 8
  %1506 = load %struct.request*, %struct.request** %62, align 8
  %1507 = getelementptr inbounds %struct.request, %struct.request* %1506, i32 0, i32 12
  %1508 = load i32, i32* %1507, align 4
  %1509 = add i32 %1508, 1
  store i32 %1509, i32* %1507, align 4
  %1510 = load %struct.request*, %struct.request** %62, align 8
  %1511 = getelementptr inbounds %struct.request, %struct.request* %1510, i32 0, i32 2
  store i8 0, i8* %1511, align 1
  %1512 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1513 = load %struct.request*, %struct.request** %62, align 8
  %1514 = getelementptr inbounds %struct.request, %struct.request* %1513, i32 0, i32 21
  %1515 = bitcast %union.anon.9* %1514 to %struct.acknowledgement*
  %1516 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1515, i32 0, i32 0
  store i16 %1512, i16* %1516, align 8
  %1517 = load %struct.request*, %struct.request** %62, align 8
  %1518 = getelementptr inbounds %struct.request, %struct.request* %1517, i32 0, i32 13
  %1519 = load i16, i16* %1518, align 8
  %1520 = call zeroext i16 @ntohs(i16 zeroext %1519) #18
  %1521 = load %struct.request*, %struct.request** %62, align 8
  %1522 = getelementptr inbounds %struct.request, %struct.request* %1521, i32 0, i32 21
  %1523 = bitcast %union.anon.9* %1522 to %struct.acknowledgement*
  %1524 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1523, i32 0, i32 1
  store i16 %1520, i16* %1524, align 2
  %1525 = load %struct.request*, %struct.request** %62, align 8
  %1526 = call i32 @_Z11processRecvP7request(%struct.request* %1525)
  br label %1527

1527:                                             ; preds = %1500, %1481
  br label %1528

1528:                                             ; preds = %1527, %1475
  br label %1573

1529:                                             ; preds = %1464
  %1530 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1531 = load %struct.request*, %struct.request** %62, align 8
  %1532 = getelementptr inbounds %struct.request, %struct.request* %1531, i32 0, i32 21
  %1533 = bitcast %union.anon.9* %1532 to %struct.tftperror*
  %1534 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1533, i32 0, i32 0
  store i16 %1530, i16* %1534, align 8
  %1535 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1536 = load %struct.request*, %struct.request** %62, align 8
  %1537 = getelementptr inbounds %struct.request, %struct.request* %1536, i32 0, i32 21
  %1538 = bitcast %union.anon.9* %1537 to %struct.tftperror*
  %1539 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1538, i32 0, i32 1
  store i16 %1535, i16* %1539, align 2
  %1540 = load %struct.request*, %struct.request** %62, align 8
  %1541 = getelementptr inbounds %struct.request, %struct.request* %1540, i32 0, i32 3
  %1542 = load i8, i8* %1541, align 2
  %1543 = zext i8 %1542 to i64
  %1544 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1543
  %1545 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1544, i32 0, i32 0
  %1546 = load i32, i32* %1545, align 4
  %1547 = load %struct.request*, %struct.request** %62, align 8
  %1548 = getelementptr inbounds %struct.request, %struct.request* %1547, i32 0, i32 21
  %1549 = bitcast %union.anon.9* %1548 to %struct.tftperror*
  %1550 = bitcast %struct.tftperror* %1549 to i8*
  %1551 = load %struct.request*, %struct.request** %62, align 8
  %1552 = getelementptr inbounds %struct.request, %struct.request* %1551, i32 0, i32 21
  %1553 = bitcast %union.anon.9* %1552 to %struct.tftperror*
  %1554 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1553, i32 0, i32 2
  %1555 = getelementptr inbounds [508 x i8], [508 x i8]* %1554, i32 0, i32 0
  %1556 = call i64 @strlen(i8* %1555) #16
  %1557 = add i64 %1556, 5
  %1558 = load %struct.request*, %struct.request** %62, align 8
  %1559 = getelementptr inbounds %struct.request, %struct.request* %1558, i32 0, i32 18
  %1560 = bitcast %struct.sockaddr_in* %1559 to %struct.sockaddr*
  %1561 = load %struct.request*, %struct.request** %62, align 8
  %1562 = getelementptr inbounds %struct.request, %struct.request* %1561, i32 0, i32 19
  %1563 = load i32, i32* %1562, align 8
  %1564 = call i64 @sendto(i32 %1546, i8* %1550, i64 %1557, i32 0, %struct.sockaddr* %1560, i32 %1563)
  %1565 = load %struct.request*, %struct.request** %62, align 8
  %1566 = getelementptr inbounds %struct.request, %struct.request* %1565, i32 0, i32 21
  %1567 = bitcast %union.anon.9* %1566 to %struct.tftperror*
  %1568 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1567, i32 0, i32 2
  %1569 = getelementptr inbounds [508 x i8], [508 x i8]* %1568, i32 0, i32 0
  %1570 = call i32 (i8*, i8*, ...) @sprintf(i8* %1569, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #2
  %1571 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1571, i8 zeroext 1)
  %1572 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1572)
  br label %1573

1573:                                             ; preds = %1529, %1528
  br label %1773

1574:                                             ; preds = %1458, %1447
  %1575 = load %struct.packet*, %struct.packet** @datain, align 8
  %1576 = getelementptr inbounds %struct.packet, %struct.packet* %1575, i32 0, i32 0
  %1577 = load i16, i16* %1576, align 2
  %1578 = call zeroext i16 @ntohs(i16 zeroext %1577) #18
  %1579 = zext i16 %1578 to i32
  %1580 = icmp eq i32 %1579, 4
  br i1 %1580, label %1581, label %1625

1581:                                             ; preds = %1574
  %1582 = load %struct.request*, %struct.request** %62, align 8
  %1583 = getelementptr inbounds %struct.request, %struct.request* %1582, i32 0, i32 1
  %1584 = load i8, i8* %1583, align 8
  %1585 = zext i8 %1584 to i32
  %1586 = icmp eq i32 %1585, 1
  br i1 %1586, label %1587, label %1625

1587:                                             ; preds = %1581
  %1588 = load %struct.request*, %struct.request** %62, align 8
  %1589 = getelementptr inbounds %struct.request, %struct.request* %1588, i32 0, i32 15
  %1590 = load i32, i32* %1589, align 4
  %1591 = icmp sge i32 %1590, 4
  br i1 %1591, label %1592, label %1624

1592:                                             ; preds = %1587
  %1593 = load %struct.request*, %struct.request** %62, align 8
  %1594 = getelementptr inbounds %struct.request, %struct.request* %1593, i32 0, i32 2
  %1595 = load i8, i8* %1594, align 1
  %1596 = zext i8 %1595 to i32
  %1597 = icmp sle i32 %1596, 3
  br i1 %1597, label %1598, label %1623

1598:                                             ; preds = %1592
  %1599 = load %struct.packet*, %struct.packet** @datain, align 8
  %1600 = getelementptr inbounds %struct.packet, %struct.packet* %1599, i32 0, i32 1
  %1601 = load i16, i16* %1600, align 2
  %1602 = call zeroext i16 @ntohs(i16 zeroext %1601) #18
  %1603 = zext i16 %1602 to i32
  %1604 = load %struct.request*, %struct.request** %62, align 8
  %1605 = getelementptr inbounds %struct.request, %struct.request* %1604, i32 0, i32 13
  %1606 = load i16, i16* %1605, align 8
  %1607 = zext i16 %1606 to i32
  %1608 = icmp eq i32 %1603, %1607
  br i1 %1608, label %1609, label %1622

1609:                                             ; preds = %1598
  %1610 = load %struct.request*, %struct.request** %62, align 8
  %1611 = getelementptr inbounds %struct.request, %struct.request* %1610, i32 0, i32 13
  %1612 = load i16, i16* %1611, align 8
  %1613 = add i16 %1612, 1
  store i16 %1613, i16* %1611, align 8
  %1614 = load %struct.request*, %struct.request** %62, align 8
  %1615 = getelementptr inbounds %struct.request, %struct.request* %1614, i32 0, i32 12
  %1616 = load i32, i32* %1615, align 4
  %1617 = add i32 %1616, 1
  store i32 %1617, i32* %1615, align 4
  %1618 = load %struct.request*, %struct.request** %62, align 8
  %1619 = getelementptr inbounds %struct.request, %struct.request* %1618, i32 0, i32 2
  store i8 0, i8* %1619, align 1
  %1620 = load %struct.request*, %struct.request** %62, align 8
  %1621 = call i32 @_Z11processSendP7request(%struct.request* %1620)
  br label %1622

1622:                                             ; preds = %1609, %1598
  br label %1623

1623:                                             ; preds = %1622, %1592
  br label %1624

1624:                                             ; preds = %1623, %1587
  br label %1772

1625:                                             ; preds = %1581, %1574
  %1626 = load %struct.request*, %struct.request** %62, align 8
  %1627 = getelementptr inbounds %struct.request, %struct.request* %1626, i32 0, i32 15
  %1628 = load i32, i32* %1627, align 4
  %1629 = icmp sgt i32 %1628, 516
  br i1 %1629, label %1630, label %1674

1630:                                             ; preds = %1625
  %1631 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1632 = load %struct.request*, %struct.request** %62, align 8
  %1633 = getelementptr inbounds %struct.request, %struct.request* %1632, i32 0, i32 21
  %1634 = bitcast %union.anon.9* %1633 to %struct.tftperror*
  %1635 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1634, i32 0, i32 0
  store i16 %1631, i16* %1635, align 8
  %1636 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1637 = load %struct.request*, %struct.request** %62, align 8
  %1638 = getelementptr inbounds %struct.request, %struct.request* %1637, i32 0, i32 21
  %1639 = bitcast %union.anon.9* %1638 to %struct.tftperror*
  %1640 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1639, i32 0, i32 1
  store i16 %1636, i16* %1640, align 2
  %1641 = load %struct.request*, %struct.request** %62, align 8
  %1642 = getelementptr inbounds %struct.request, %struct.request* %1641, i32 0, i32 3
  %1643 = load i8, i8* %1642, align 2
  %1644 = zext i8 %1643 to i64
  %1645 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1644
  %1646 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1645, i32 0, i32 0
  %1647 = load i32, i32* %1646, align 4
  %1648 = load %struct.request*, %struct.request** %62, align 8
  %1649 = getelementptr inbounds %struct.request, %struct.request* %1648, i32 0, i32 21
  %1650 = bitcast %union.anon.9* %1649 to %struct.tftperror*
  %1651 = bitcast %struct.tftperror* %1650 to i8*
  %1652 = load %struct.request*, %struct.request** %62, align 8
  %1653 = getelementptr inbounds %struct.request, %struct.request* %1652, i32 0, i32 21
  %1654 = bitcast %union.anon.9* %1653 to %struct.tftperror*
  %1655 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1654, i32 0, i32 2
  %1656 = getelementptr inbounds [508 x i8], [508 x i8]* %1655, i32 0, i32 0
  %1657 = call i64 @strlen(i8* %1656) #16
  %1658 = add i64 %1657, 5
  %1659 = load %struct.request*, %struct.request** %62, align 8
  %1660 = getelementptr inbounds %struct.request, %struct.request* %1659, i32 0, i32 18
  %1661 = bitcast %struct.sockaddr_in* %1660 to %struct.sockaddr*
  %1662 = load %struct.request*, %struct.request** %62, align 8
  %1663 = getelementptr inbounds %struct.request, %struct.request* %1662, i32 0, i32 19
  %1664 = load i32, i32* %1663, align 8
  %1665 = call i64 @sendto(i32 %1647, i8* %1651, i64 %1658, i32 0, %struct.sockaddr* %1661, i32 %1664)
  %1666 = load %struct.request*, %struct.request** %62, align 8
  %1667 = getelementptr inbounds %struct.request, %struct.request* %1666, i32 0, i32 21
  %1668 = bitcast %union.anon.9* %1667 to %struct.tftperror*
  %1669 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1668, i32 0, i32 2
  %1670 = getelementptr inbounds [508 x i8], [508 x i8]* %1669, i32 0, i32 0
  %1671 = call i32 (i8*, i8*, ...) @sprintf(i8* %1670, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #2
  %1672 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1672, i8 zeroext 1)
  %1673 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1673)
  br label %1771

1674:                                             ; preds = %1625
  %1675 = load %struct.packet*, %struct.packet** @datain, align 8
  %1676 = getelementptr inbounds %struct.packet, %struct.packet* %1675, i32 0, i32 0
  %1677 = load i16, i16* %1676, align 2
  %1678 = call zeroext i16 @ntohs(i16 zeroext %1677) #18
  %1679 = zext i16 %1678 to i32
  %1680 = icmp eq i32 %1679, 1
  br i1 %1680, label %1688, label %1681

1681:                                             ; preds = %1674
  %1682 = load %struct.packet*, %struct.packet** @datain, align 8
  %1683 = getelementptr inbounds %struct.packet, %struct.packet* %1682, i32 0, i32 0
  %1684 = load i16, i16* %1683, align 2
  %1685 = call zeroext i16 @ntohs(i16 zeroext %1684) #18
  %1686 = zext i16 %1685 to i32
  %1687 = icmp eq i32 %1686, 2
  br i1 %1687, label %1688, label %1697

1688:                                             ; preds = %1681, %1674
  %1689 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1689)
  %1690 = call i32 @_Z10processNewP7request(%struct.request* %55)
  %1691 = icmp ne i32 %1690, 0
  br i1 %1691, label %1696, label %1692

1692:                                             ; preds = %1688
  %1693 = load %struct.request*, %struct.request** %62, align 8
  %1694 = bitcast %struct.request* %1693 to i8*
  %1695 = bitcast %struct.request* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1694, i8* align 8 %1695, i64 920, i1 false)
  br label %1696

1696:                                             ; preds = %1692, %1688
  br label %1770

1697:                                             ; preds = %1681
  %1698 = load %struct.packet*, %struct.packet** @datain, align 8
  %1699 = getelementptr inbounds %struct.packet, %struct.packet* %1698, i32 0, i32 0
  %1700 = load i16, i16* %1699, align 2
  %1701 = call zeroext i16 @ntohs(i16 zeroext %1700) #18
  %1702 = zext i16 %1701 to i32
  %1703 = icmp eq i32 %1702, 5
  br i1 %1703, label %1704, label %1720

1704:                                             ; preds = %1697
  %1705 = load %struct.request*, %struct.request** %62, align 8
  %1706 = getelementptr inbounds %struct.request, %struct.request* %1705, i32 0, i32 21
  %1707 = bitcast %union.anon.9* %1706 to %struct.tftperror*
  %1708 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1707, i32 0, i32 2
  %1709 = getelementptr inbounds [508 x i8], [508 x i8]* %1708, i32 0, i32 0
  %1710 = load %struct.packet*, %struct.packet** @datain, align 8
  %1711 = getelementptr inbounds %struct.packet, %struct.packet* %1710, i32 0, i32 1
  %1712 = load i16, i16* %1711, align 2
  %1713 = call zeroext i16 @ntohs(i16 zeroext %1712) #18
  %1714 = zext i16 %1713 to i32
  %1715 = load %struct.packet*, %struct.packet** @datain, align 8
  %1716 = getelementptr inbounds %struct.packet, %struct.packet* %1715, i32 0, i32 2
  %1717 = call i32 (i8*, i8*, ...) @sprintf(i8* %1709, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %1714, i8* %1716) #2
  %1718 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1718, i8 zeroext 1)
  %1719 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1719)
  br label %1769

1720:                                             ; preds = %1697
  %1721 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1722 = load %struct.request*, %struct.request** %62, align 8
  %1723 = getelementptr inbounds %struct.request, %struct.request* %1722, i32 0, i32 21
  %1724 = bitcast %union.anon.9* %1723 to %struct.tftperror*
  %1725 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1724, i32 0, i32 0
  store i16 %1721, i16* %1725, align 8
  %1726 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1727 = load %struct.request*, %struct.request** %62, align 8
  %1728 = getelementptr inbounds %struct.request, %struct.request* %1727, i32 0, i32 21
  %1729 = bitcast %union.anon.9* %1728 to %struct.tftperror*
  %1730 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1729, i32 0, i32 1
  store i16 %1726, i16* %1730, align 2
  %1731 = load %struct.request*, %struct.request** %62, align 8
  %1732 = getelementptr inbounds %struct.request, %struct.request* %1731, i32 0, i32 21
  %1733 = bitcast %union.anon.9* %1732 to %struct.tftperror*
  %1734 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1733, i32 0, i32 2
  %1735 = getelementptr inbounds [508 x i8], [508 x i8]* %1734, i32 0, i32 0
  %1736 = load %struct.packet*, %struct.packet** @datain, align 8
  %1737 = getelementptr inbounds %struct.packet, %struct.packet* %1736, i32 0, i32 0
  %1738 = load i16, i16* %1737, align 2
  %1739 = call zeroext i16 @ntohs(i16 zeroext %1738) #18
  %1740 = zext i16 %1739 to i32
  %1741 = call i32 (i8*, i8*, ...) @sprintf(i8* %1735, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %1740) #2
  %1742 = load %struct.request*, %struct.request** %62, align 8
  %1743 = getelementptr inbounds %struct.request, %struct.request* %1742, i32 0, i32 3
  %1744 = load i8, i8* %1743, align 2
  %1745 = zext i8 %1744 to i64
  %1746 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1745
  %1747 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1746, i32 0, i32 0
  %1748 = load i32, i32* %1747, align 4
  %1749 = load %struct.request*, %struct.request** %62, align 8
  %1750 = getelementptr inbounds %struct.request, %struct.request* %1749, i32 0, i32 21
  %1751 = bitcast %union.anon.9* %1750 to %struct.tftperror*
  %1752 = bitcast %struct.tftperror* %1751 to i8*
  %1753 = load %struct.request*, %struct.request** %62, align 8
  %1754 = getelementptr inbounds %struct.request, %struct.request* %1753, i32 0, i32 21
  %1755 = bitcast %union.anon.9* %1754 to %struct.tftperror*
  %1756 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1755, i32 0, i32 2
  %1757 = getelementptr inbounds [508 x i8], [508 x i8]* %1756, i32 0, i32 0
  %1758 = call i64 @strlen(i8* %1757) #16
  %1759 = add i64 %1758, 5
  %1760 = load %struct.request*, %struct.request** %62, align 8
  %1761 = getelementptr inbounds %struct.request, %struct.request* %1760, i32 0, i32 18
  %1762 = bitcast %struct.sockaddr_in* %1761 to %struct.sockaddr*
  %1763 = load %struct.request*, %struct.request** %62, align 8
  %1764 = getelementptr inbounds %struct.request, %struct.request* %1763, i32 0, i32 19
  %1765 = load i32, i32* %1764, align 8
  %1766 = call i64 @sendto(i32 %1748, i8* %1752, i64 %1759, i32 0, %struct.sockaddr* %1762, i32 %1765)
  %1767 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1767, i8 zeroext 1)
  %1768 = load %struct.request*, %struct.request** %62, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1768)
  br label %1769

1769:                                             ; preds = %1720, %1704
  br label %1770

1770:                                             ; preds = %1769, %1696
  br label %1771

1771:                                             ; preds = %1770, %1630
  br label %1772

1772:                                             ; preds = %1771, %1624
  br label %1773

1773:                                             ; preds = %1772, %1573
  br label %1916

1774:                                             ; preds = %1444
  %1775 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 15
  %1776 = load i32, i32* %1775, align 4
  %1777 = icmp sgt i32 %1776, 516
  br i1 %1777, label %1778, label %1811

1778:                                             ; preds = %1774
  %1779 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1780 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1781 = bitcast %union.anon.9* %1780 to %struct.tftperror*
  %1782 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1781, i32 0, i32 0
  store i16 %1779, i16* %1782, align 8
  %1783 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1784 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1785 = bitcast %union.anon.9* %1784 to %struct.tftperror*
  %1786 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1785, i32 0, i32 1
  store i16 %1783, i16* %1786, align 2
  %1787 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1788 = bitcast %union.anon.9* %1787 to %struct.tftperror*
  %1789 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1788, i32 0, i32 2
  %1790 = getelementptr inbounds [508 x i8], [508 x i8]* %1789, i32 0, i32 0
  %1791 = call i32 (i8*, i8*, ...) @sprintf(i8* %1790, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #2
  %1792 = load i32, i32* %60, align 4
  %1793 = sext i32 %1792 to i64
  %1794 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1793
  %1795 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1794, i32 0, i32 0
  %1796 = load i32, i32* %1795, align 4
  %1797 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1798 = bitcast %union.anon.9* %1797 to %struct.tftperror*
  %1799 = bitcast %struct.tftperror* %1798 to i8*
  %1800 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1801 = bitcast %union.anon.9* %1800 to %struct.tftperror*
  %1802 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1801, i32 0, i32 2
  %1803 = getelementptr inbounds [508 x i8], [508 x i8]* %1802, i32 0, i32 0
  %1804 = call i64 @strlen(i8* %1803) #16
  %1805 = add i64 %1804, 5
  %1806 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 18
  %1807 = bitcast %struct.sockaddr_in* %1806 to %struct.sockaddr*
  %1808 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 19
  %1809 = load i32, i32* %1808, align 8
  %1810 = call i64 @sendto(i32 %1796, i8* %1799, i64 %1805, i32 0, %struct.sockaddr* %1807, i32 %1809)
  call void @_Z7logMessP7requesth(%struct.request* %55, i8 zeroext 1)
  br label %1915

1811:                                             ; preds = %1774
  %1812 = load %struct.packet*, %struct.packet** @datain, align 8
  %1813 = getelementptr inbounds %struct.packet, %struct.packet* %1812, i32 0, i32 0
  %1814 = load i16, i16* %1813, align 2
  %1815 = call zeroext i16 @ntohs(i16 zeroext %1814) #18
  %1816 = zext i16 %1815 to i32
  %1817 = icmp eq i32 %1816, 5
  br i1 %1817, label %1818, label %1831

1818:                                             ; preds = %1811
  %1819 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1820 = bitcast %union.anon.9* %1819 to %struct.tftperror*
  %1821 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1820, i32 0, i32 2
  %1822 = getelementptr inbounds [508 x i8], [508 x i8]* %1821, i32 0, i32 0
  %1823 = load %struct.packet*, %struct.packet** @datain, align 8
  %1824 = getelementptr inbounds %struct.packet, %struct.packet* %1823, i32 0, i32 1
  %1825 = load i16, i16* %1824, align 2
  %1826 = call zeroext i16 @ntohs(i16 zeroext %1825) #18
  %1827 = zext i16 %1826 to i32
  %1828 = load %struct.packet*, %struct.packet** @datain, align 8
  %1829 = getelementptr inbounds %struct.packet, %struct.packet* %1828, i32 0, i32 2
  %1830 = call i32 (i8*, i8*, ...) @sprintf(i8* %1822, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %1827, i8* %1829) #2
  call void @_Z7logMessP7requesth(%struct.request* %55, i8 zeroext 1)
  br label %1914

1831:                                             ; preds = %1811
  %1832 = load %struct.packet*, %struct.packet** @datain, align 8
  %1833 = getelementptr inbounds %struct.packet, %struct.packet* %1832, i32 0, i32 0
  %1834 = load i16, i16* %1833, align 2
  %1835 = call zeroext i16 @ntohs(i16 zeroext %1834) #18
  %1836 = zext i16 %1835 to i32
  %1837 = icmp ne i32 %1836, 1
  br i1 %1837, label %1838, label %1878

1838:                                             ; preds = %1831
  %1839 = load %struct.packet*, %struct.packet** @datain, align 8
  %1840 = getelementptr inbounds %struct.packet, %struct.packet* %1839, i32 0, i32 0
  %1841 = load i16, i16* %1840, align 2
  %1842 = call zeroext i16 @ntohs(i16 zeroext %1841) #18
  %1843 = zext i16 %1842 to i32
  %1844 = icmp ne i32 %1843, 2
  br i1 %1844, label %1845, label %1878

1845:                                             ; preds = %1838
  %1846 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1847 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1848 = bitcast %union.anon.9* %1847 to %struct.tftperror*
  %1849 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1848, i32 0, i32 0
  store i16 %1846, i16* %1849, align 8
  %1850 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1851 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1852 = bitcast %union.anon.9* %1851 to %struct.tftperror*
  %1853 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1852, i32 0, i32 1
  store i16 %1850, i16* %1853, align 2
  %1854 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1855 = bitcast %union.anon.9* %1854 to %struct.tftperror*
  %1856 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1855, i32 0, i32 2
  %1857 = getelementptr inbounds [508 x i8], [508 x i8]* %1856, i32 0, i32 0
  %1858 = call i32 (i8*, i8*, ...) @sprintf(i8* %1857, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0)) #2
  %1859 = load i32, i32* %60, align 4
  %1860 = sext i32 %1859 to i64
  %1861 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1860
  %1862 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1861, i32 0, i32 0
  %1863 = load i32, i32* %1862, align 4
  %1864 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1865 = bitcast %union.anon.9* %1864 to %struct.tftperror*
  %1866 = bitcast %struct.tftperror* %1865 to i8*
  %1867 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 21
  %1868 = bitcast %union.anon.9* %1867 to %struct.tftperror*
  %1869 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1868, i32 0, i32 2
  %1870 = getelementptr inbounds [508 x i8], [508 x i8]* %1869, i32 0, i32 0
  %1871 = call i64 @strlen(i8* %1870) #16
  %1872 = add i64 %1871, 5
  %1873 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 18
  %1874 = bitcast %struct.sockaddr_in* %1873 to %struct.sockaddr*
  %1875 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 19
  %1876 = load i32, i32* %1875, align 8
  %1877 = call i64 @sendto(i32 %1863, i8* %1866, i64 %1872, i32 0, %struct.sockaddr* %1874, i32 %1876)
  call void @_Z7logMessP7requesth(%struct.request* %55, i8 zeroext 1)
  br label %1913

1878:                                             ; preds = %1838, %1831
  %1879 = call i32 @_Z10processNewP7request(%struct.request* %55)
  %1880 = icmp ne i32 %1879, 0
  br i1 %1880, label %1912, label %1881

1881:                                             ; preds = %1878
  %1882 = call noalias i8* @calloc(i64 1, i64 920) #2
  %1883 = bitcast i8* %1882 to %struct.request*
  store %struct.request* %1883, %struct.request** %67, align 8
  %1884 = load %struct.request*, %struct.request** %67, align 8
  %1885 = icmp ne %struct.request* %1884, null
  br i1 %1885, label %1888, label %1886

1886:                                             ; preds = %1881
  %1887 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %1919

1888:                                             ; preds = %1881
  %1889 = load %struct.request*, %struct.request** %67, align 8
  %1890 = bitcast %struct.request* %1889 to i8*
  %1891 = bitcast %struct.request* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1890, i8* align 8 %1891, i64 920, i1 false)
  %1892 = load %struct.request*, %struct.request** %67, align 8
  %1893 = load %struct.request*, %struct.request** %67, align 8
  %1894 = getelementptr inbounds %struct.request, %struct.request* %1893, i32 0, i32 0
  %1895 = getelementptr inbounds [32 x i8], [32 x i8]* %1894, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %69) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %68, i8* %1895, %"class.std::allocator.10"* dereferenceable(1) %69)
          to label %1896 unwind label %1903

1896:                                             ; preds = %1888
  %1897 = invoke dereferenceable(8) %struct.request** @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %68)
          to label %1898 unwind label %1907

1898:                                             ; preds = %1896
  store %struct.request* %1892, %struct.request** %1897, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %68) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %69) #2
  %1899 = load %struct.request*, %struct.request** %67, align 8
  %1900 = getelementptr inbounds %struct.request, %struct.request* %1899, i32 0, i32 4
  call void @_ZNSt4pairIlP7requestEC2IRlRS1_Lb1EEEOT_OT0_(%"struct.std::pair"* %70, i64* dereferenceable(8) %1900, %struct.request** dereferenceable(8) %67)
  %1901 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE6insertIS4_IlS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueESt17_Rb_tree_iteratorIS6_EE4typeEOSC_(%"class.std::multimap"* @tftpAge, %"struct.std::pair"* dereferenceable(16) %70)
  %1902 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %71, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1901, %"struct.std::_Rb_tree_node_base"** %1902, align 8
  br label %1912

1903:                                             ; preds = %1888
  %1904 = landingpad { i8*, i32 }
          cleanup
  %1905 = extractvalue { i8*, i32 } %1904, 0
  store i8* %1905, i8** %22, align 8
  %1906 = extractvalue { i8*, i32 } %1904, 1
  store i32 %1906, i32* %23, align 4
  br label %1911

1907:                                             ; preds = %1896
  %1908 = landingpad { i8*, i32 }
          cleanup
  %1909 = extractvalue { i8*, i32 } %1908, 0
  store i8* %1909, i8** %22, align 8
  %1910 = extractvalue { i8*, i32 } %1908, 1
  store i32 %1910, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %68) #2
  br label %1911

1911:                                             ; preds = %1907, %1903
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %69) #2
  br label %2182

1912:                                             ; preds = %1898, %1878
  br label %1913

1913:                                             ; preds = %1912, %1845
  br label %1914

1914:                                             ; preds = %1913, %1818
  br label %1915

1915:                                             ; preds = %1914, %1778
  br label %1916

1916:                                             ; preds = %1915, %1773
  br label %1917

1917:                                             ; preds = %1916, %1334
  br label %1918

1918:                                             ; preds = %1917, %1331
  br label %1919

1919:                                             ; preds = %1918, %1886, %1395
  %1920 = load i32, i32* %60, align 4
  %1921 = add nsw i32 %1920, 1
  store i32 %1921, i32* %60, align 4
  br label %1316

1922:                                             ; preds = %1329
  %1923 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5beginEv(%"class.std::multimap"* @tftpAge) #2
  %1924 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %72, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1923, %"struct.std::_Rb_tree_node_base"** %1924, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2Ev(%"struct.std::_Rb_tree_iterator"* %73) #2
  %1925 = call i64 @time(i64* null) #2
  store i64 %1925, i64* %74, align 8
  br label %1926

1926:                                             ; preds = %2164, %1922
  %1927 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE3endEv(%"class.std::multimap"* @tftpAge) #2
  %1928 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %76, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1927, %"struct.std::_Rb_tree_node_base"** %1928, align 8
  %1929 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEneERKS5_(%"struct.std::_Rb_tree_iterator"* %72, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %76) #2
  br i1 %1929, label %1930, label %2165

1930:                                             ; preds = %1926
  %1931 = call %"struct.std::pair.14"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv(%"struct.std::_Rb_tree_iterator"* %72) #2
  %1932 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %1931, i32 0, i32 1
  %1933 = load %struct.request*, %struct.request** %1932, align 8
  store %struct.request* %1933, %struct.request** %75, align 8
  %1934 = call %"struct.std::pair.14"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv(%"struct.std::_Rb_tree_iterator"* %72) #2
  %1935 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %1934, i32 0, i32 0
  %1936 = load i64, i64* %1935, align 8
  %1937 = load i64, i64* %74, align 8
  %1938 = icmp sgt i64 %1936, %1937
  br i1 %1938, label %1939, label %1940

1939:                                             ; preds = %1930
  br label %2165

1940:                                             ; preds = %1930
  %1941 = call %"struct.std::pair.14"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv(%"struct.std::_Rb_tree_iterator"* %72) #2
  %1942 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %1941, i32 0, i32 0
  %1943 = load i64, i64* %1942, align 8
  %1944 = load %struct.request*, %struct.request** %75, align 8
  %1945 = getelementptr inbounds %struct.request, %struct.request* %1944, i32 0, i32 4
  %1946 = load i64, i64* %1945, align 8
  %1947 = icmp slt i64 %1943, %1946
  br i1 %1947, label %1948, label %1969

1948:                                             ; preds = %1940
  %1949 = load %struct.request*, %struct.request** %75, align 8
  %1950 = getelementptr inbounds %struct.request, %struct.request* %1949, i32 0, i32 4
  %1951 = load i64, i64* %1950, align 8
  %1952 = load i64, i64* %74, align 8
  %1953 = icmp sgt i64 %1951, %1952
  br i1 %1953, label %1954, label %1969

1954:                                             ; preds = %1948
  %1955 = bitcast %"struct.std::_Rb_tree_iterator"* %73 to i8*
  %1956 = bitcast %"struct.std::_Rb_tree_iterator"* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1955, i8* align 8 %1956, i64 8, i1 false)
  %1957 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %72, i32 0) #2
  %1958 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %77, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1957, %"struct.std::_Rb_tree_node_base"** %1958, align 8
  %1959 = bitcast %"struct.std::_Rb_tree_iterator"* %78 to i8*
  %1960 = bitcast %"struct.std::_Rb_tree_iterator"* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1959, i8* align 8 %1960, i64 8, i1 false)
  %1961 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %78, i32 0, i32 0
  %1962 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %1961, align 8
  %1963 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS6_E(%"class.std::multimap"* @tftpAge, %"struct.std::_Rb_tree_node_base"* %1962)
  %1964 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %79, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1963, %"struct.std::_Rb_tree_node_base"** %1964, align 8
  %1965 = load %struct.request*, %struct.request** %75, align 8
  %1966 = getelementptr inbounds %struct.request, %struct.request* %1965, i32 0, i32 4
  call void @_ZNSt4pairIlP7requestEC2IRlRS1_Lb1EEEOT_OT0_(%"struct.std::pair"* %80, i64* dereferenceable(8) %1966, %struct.request** dereferenceable(8) %75)
  %1967 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE6insertIS4_IlS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueESt17_Rb_tree_iteratorIS6_EE4typeEOSC_(%"class.std::multimap"* @tftpAge, %"struct.std::pair"* dereferenceable(16) %80)
  %1968 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %81, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1967, %"struct.std::_Rb_tree_node_base"** %1968, align 8
  br label %2163

1969:                                             ; preds = %1948, %1940
  %1970 = load %struct.request*, %struct.request** %75, align 8
  %1971 = getelementptr inbounds %struct.request, %struct.request* %1970, i32 0, i32 4
  %1972 = load i64, i64* %1971, align 8
  %1973 = load i64, i64* %74, align 8
  %1974 = icmp sle i64 %1972, %1973
  br i1 %1974, label %1975, label %2077

1975:                                             ; preds = %1969
  %1976 = load %struct.request*, %struct.request** %75, align 8
  %1977 = getelementptr inbounds %struct.request, %struct.request* %1976, i32 0, i32 2
  %1978 = load i8, i8* %1977, align 1
  %1979 = zext i8 %1978 to i32
  %1980 = icmp sge i32 %1979, 3
  br i1 %1980, label %1981, label %2077

1981:                                             ; preds = %1975
  %1982 = load %struct.request*, %struct.request** %75, align 8
  %1983 = getelementptr inbounds %struct.request, %struct.request* %1982, i32 0, i32 2
  %1984 = load i8, i8* %1983, align 1
  %1985 = zext i8 %1984 to i32
  %1986 = icmp slt i32 %1985, 255
  br i1 %1986, label %1987, label %2048

1987:                                             ; preds = %1981
  %1988 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1989 = load %struct.request*, %struct.request** %75, align 8
  %1990 = getelementptr inbounds %struct.request, %struct.request* %1989, i32 0, i32 21
  %1991 = bitcast %union.anon.9* %1990 to %struct.tftperror*
  %1992 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1991, i32 0, i32 0
  store i16 %1988, i16* %1992, align 8
  %1993 = call zeroext i16 @htons(i16 zeroext 0) #18
  %1994 = load %struct.request*, %struct.request** %75, align 8
  %1995 = getelementptr inbounds %struct.request, %struct.request* %1994, i32 0, i32 21
  %1996 = bitcast %union.anon.9* %1995 to %struct.tftperror*
  %1997 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1996, i32 0, i32 1
  store i16 %1993, i16* %1997, align 2
  %1998 = load %struct.request*, %struct.request** %75, align 8
  %1999 = getelementptr inbounds %struct.request, %struct.request* %1998, i32 0, i32 12
  %2000 = load i32, i32* %1999, align 4
  %2001 = icmp ne i32 %2000, 0
  br i1 %2001, label %2002, label %2014

2002:                                             ; preds = %1987
  %2003 = load %struct.request*, %struct.request** %75, align 8
  %2004 = getelementptr inbounds %struct.request, %struct.request* %2003, i32 0, i32 13
  %2005 = load i16, i16* %2004, align 8
  %2006 = icmp ne i16 %2005, 0
  br i1 %2006, label %2014, label %2007

2007:                                             ; preds = %2002
  %2008 = load %struct.request*, %struct.request** %75, align 8
  %2009 = getelementptr inbounds %struct.request, %struct.request* %2008, i32 0, i32 21
  %2010 = bitcast %union.anon.9* %2009 to %struct.tftperror*
  %2011 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2010, i32 0, i32 2
  %2012 = getelementptr inbounds [508 x i8], [508 x i8]* %2011, i32 0, i32 0
  %2013 = call i8* @strcpy(i8* %2012, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0)) #2
  br label %2021

2014:                                             ; preds = %2002, %1987
  %2015 = load %struct.request*, %struct.request** %75, align 8
  %2016 = getelementptr inbounds %struct.request, %struct.request* %2015, i32 0, i32 21
  %2017 = bitcast %union.anon.9* %2016 to %struct.tftperror*
  %2018 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2017, i32 0, i32 2
  %2019 = getelementptr inbounds [508 x i8], [508 x i8]* %2018, i32 0, i32 0
  %2020 = call i8* @strcpy(i8* %2019, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #2
  br label %2021

2021:                                             ; preds = %2014, %2007
  %2022 = load %struct.request*, %struct.request** %75, align 8
  %2023 = getelementptr inbounds %struct.request, %struct.request* %2022, i32 0, i32 3
  %2024 = load i8, i8* %2023, align 2
  %2025 = zext i8 %2024 to i64
  %2026 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %2025
  %2027 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %2026, i32 0, i32 0
  %2028 = load i32, i32* %2027, align 4
  %2029 = load %struct.request*, %struct.request** %75, align 8
  %2030 = getelementptr inbounds %struct.request, %struct.request* %2029, i32 0, i32 21
  %2031 = bitcast %union.anon.9* %2030 to %struct.tftperror*
  %2032 = bitcast %struct.tftperror* %2031 to i8*
  %2033 = load %struct.request*, %struct.request** %75, align 8
  %2034 = getelementptr inbounds %struct.request, %struct.request* %2033, i32 0, i32 21
  %2035 = bitcast %union.anon.9* %2034 to %struct.tftperror*
  %2036 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2035, i32 0, i32 2
  %2037 = getelementptr inbounds [508 x i8], [508 x i8]* %2036, i32 0, i32 0
  %2038 = call i64 @strlen(i8* %2037) #16
  %2039 = add i64 %2038, 5
  %2040 = load %struct.request*, %struct.request** %75, align 8
  %2041 = getelementptr inbounds %struct.request, %struct.request* %2040, i32 0, i32 18
  %2042 = bitcast %struct.sockaddr_in* %2041 to %struct.sockaddr*
  %2043 = load %struct.request*, %struct.request** %75, align 8
  %2044 = getelementptr inbounds %struct.request, %struct.request* %2043, i32 0, i32 19
  %2045 = load i32, i32* %2044, align 8
  %2046 = call i64 @sendto(i32 %2028, i8* %2032, i64 %2039, i32 0, %struct.sockaddr* %2042, i32 %2045)
  %2047 = load %struct.request*, %struct.request** %75, align 8
  call void @_Z7logMessP7requesth(%struct.request* %2047, i8 zeroext 1)
  br label %2048

2048:                                             ; preds = %2021, %1981
  %2049 = bitcast %"struct.std::_Rb_tree_iterator"* %73 to i8*
  %2050 = bitcast %"struct.std::_Rb_tree_iterator"* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2049, i8* align 8 %2050, i64 8, i1 false)
  %2051 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %72, i32 0) #2
  %2052 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %82, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %2051, %"struct.std::_Rb_tree_node_base"** %2052, align 8
  %2053 = bitcast %"struct.std::_Rb_tree_iterator"* %83 to i8*
  %2054 = bitcast %"struct.std::_Rb_tree_iterator"* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2053, i8* align 8 %2054, i64 8, i1 false)
  %2055 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %83, i32 0, i32 0
  %2056 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2055, align 8
  %2057 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS6_E(%"class.std::multimap"* @tftpAge, %"struct.std::_Rb_tree_node_base"* %2056)
  %2058 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %84, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %2057, %"struct.std::_Rb_tree_node_base"** %2058, align 8
  %2059 = load %struct.request*, %struct.request** %75, align 8
  %2060 = getelementptr inbounds %struct.request, %struct.request* %2059, i32 0, i32 0
  %2061 = getelementptr inbounds [32 x i8], [32 x i8]* %2060, i32 0, i32 0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %86) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %85, i8* %2061, %"class.std::allocator.10"* dereferenceable(1) %86)
          to label %2062 unwind label %2068

2062:                                             ; preds = %2048
  %2063 = invoke i64 @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseERSB_(%"class.std::map"* @_Z9tftpCacheB5cxx11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %85)
          to label %2064 unwind label %2072

2064:                                             ; preds = %2062
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %85) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %86) #2
  %2065 = load %struct.request*, %struct.request** %75, align 8
  call void @_Z8cleanReqP7request(%struct.request* %2065)
  %2066 = load %struct.request*, %struct.request** %75, align 8
  %2067 = bitcast %struct.request* %2066 to i8*
  call void @free(i8* %2067) #2
  br label %2162

2068:                                             ; preds = %2048
  %2069 = landingpad { i8*, i32 }
          cleanup
  %2070 = extractvalue { i8*, i32 } %2069, 0
  store i8* %2070, i8** %22, align 8
  %2071 = extractvalue { i8*, i32 } %2069, 1
  store i32 %2071, i32* %23, align 4
  br label %2076

2072:                                             ; preds = %2062
  %2073 = landingpad { i8*, i32 }
          cleanup
  %2074 = extractvalue { i8*, i32 } %2073, 0
  store i8* %2074, i8** %22, align 8
  %2075 = extractvalue { i8*, i32 } %2073, 1
  store i32 %2075, i32* %23, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %85) #2
  br label %2076

2076:                                             ; preds = %2072, %2068
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %86) #2
  br label %2182

2077:                                             ; preds = %1975, %1969
  %2078 = load %struct.request*, %struct.request** %75, align 8
  %2079 = getelementptr inbounds %struct.request, %struct.request* %2078, i32 0, i32 4
  %2080 = load i64, i64* %2079, align 8
  %2081 = load i64, i64* %74, align 8
  %2082 = icmp sle i64 %2080, %2081
  br i1 %2082, label %2083, label %2158

2083:                                             ; preds = %2077
  %2084 = load %struct.request*, %struct.request** %75, align 8
  %2085 = getelementptr inbounds %struct.request, %struct.request* %2084, i32 0, i32 21
  %2086 = bitcast %union.anon.9* %2085 to %struct.acknowledgement*
  %2087 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %2086, i32 0, i32 0
  %2088 = load i16, i16* %2087, align 8
  %2089 = call zeroext i16 @ntohs(i16 zeroext %2088) #18
  %2090 = zext i16 %2089 to i32
  %2091 = icmp eq i32 %2090, 3
  br i1 %2091, label %2092, label %2112

2092:                                             ; preds = %2083
  %2093 = load %struct.request*, %struct.request** %75, align 8
  %2094 = call i32 @_Z11processSendP7request(%struct.request* %2093)
  %2095 = icmp ne i32 %2094, 0
  br i1 %2095, label %2096, label %2098

2096:                                             ; preds = %2092
  %2097 = load %struct.request*, %struct.request** %75, align 8
  call void @_Z8cleanReqP7request(%struct.request* %2097)
  br label %2111

2098:                                             ; preds = %2092
  %2099 = load %struct.request*, %struct.request** %75, align 8
  %2100 = getelementptr inbounds %struct.request, %struct.request* %2099, i32 0, i32 2
  %2101 = load i8, i8* %2100, align 1
  %2102 = add i8 %2101, 1
  store i8 %2102, i8* %2100, align 1
  %2103 = load i64, i64* %74, align 8
  %2104 = load %struct.request*, %struct.request** %75, align 8
  %2105 = getelementptr inbounds %struct.request, %struct.request* %2104, i32 0, i32 11
  %2106 = load i32, i32* %2105, align 8
  %2107 = zext i32 %2106 to i64
  %2108 = add nsw i64 %2103, %2107
  %2109 = load %struct.request*, %struct.request** %75, align 8
  %2110 = getelementptr inbounds %struct.request, %struct.request* %2109, i32 0, i32 4
  store i64 %2108, i64* %2110, align 8
  br label %2111

2111:                                             ; preds = %2098, %2096
  br label %2155

2112:                                             ; preds = %2083
  %2113 = call i32* @__errno_location() #18
  store i32 0, i32* %2113, align 4
  %2114 = load %struct.request*, %struct.request** %75, align 8
  %2115 = getelementptr inbounds %struct.request, %struct.request* %2114, i32 0, i32 3
  %2116 = load i8, i8* %2115, align 2
  %2117 = zext i8 %2116 to i64
  %2118 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %2117
  %2119 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %2118, i32 0, i32 0
  %2120 = load i32, i32* %2119, align 4
  %2121 = load %struct.request*, %struct.request** %75, align 8
  %2122 = getelementptr inbounds %struct.request, %struct.request* %2121, i32 0, i32 21
  %2123 = bitcast %union.anon.9* %2122 to %struct.acknowledgement*
  %2124 = bitcast %struct.acknowledgement* %2123 to i8*
  %2125 = load %struct.request*, %struct.request** %75, align 8
  %2126 = getelementptr inbounds %struct.request, %struct.request* %2125, i32 0, i32 17
  %2127 = load i32, i32* %2126, align 4
  %2128 = sext i32 %2127 to i64
  %2129 = load %struct.request*, %struct.request** %75, align 8
  %2130 = getelementptr inbounds %struct.request, %struct.request* %2129, i32 0, i32 18
  %2131 = bitcast %struct.sockaddr_in* %2130 to %struct.sockaddr*
  %2132 = load %struct.request*, %struct.request** %75, align 8
  %2133 = getelementptr inbounds %struct.request, %struct.request* %2132, i32 0, i32 19
  %2134 = load i32, i32* %2133, align 8
  %2135 = call i64 @sendto(i32 %2120, i8* %2124, i64 %2128, i32 0, %struct.sockaddr* %2131, i32 %2134)
  %2136 = call i32* @__errno_location() #18
  %2137 = load i32, i32* %2136, align 4
  %2138 = icmp ne i32 %2137, 0
  br i1 %2138, label %2139, label %2141

2139:                                             ; preds = %2112
  %2140 = load %struct.request*, %struct.request** %75, align 8
  call void @_Z8cleanReqP7request(%struct.request* %2140)
  br label %2154

2141:                                             ; preds = %2112
  %2142 = load %struct.request*, %struct.request** %75, align 8
  %2143 = getelementptr inbounds %struct.request, %struct.request* %2142, i32 0, i32 2
  %2144 = load i8, i8* %2143, align 1
  %2145 = add i8 %2144, 1
  store i8 %2145, i8* %2143, align 1
  %2146 = load i64, i64* %74, align 8
  %2147 = load %struct.request*, %struct.request** %75, align 8
  %2148 = getelementptr inbounds %struct.request, %struct.request* %2147, i32 0, i32 11
  %2149 = load i32, i32* %2148, align 8
  %2150 = zext i32 %2149 to i64
  %2151 = add nsw i64 %2146, %2150
  %2152 = load %struct.request*, %struct.request** %75, align 8
  %2153 = getelementptr inbounds %struct.request, %struct.request* %2152, i32 0, i32 4
  store i64 %2151, i64* %2153, align 8
  br label %2154

2154:                                             ; preds = %2141, %2139
  br label %2155

2155:                                             ; preds = %2154, %2111
  %2156 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %72, i32 0) #2
  %2157 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %87, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %2156, %"struct.std::_Rb_tree_node_base"** %2157, align 8
  br label %2161

2158:                                             ; preds = %2077
  %2159 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %72, i32 0) #2
  %2160 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %88, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %2159, %"struct.std::_Rb_tree_node_base"** %2160, align 8
  br label %2161

2161:                                             ; preds = %2158, %2155
  br label %2162

2162:                                             ; preds = %2161, %2064
  br label %2163

2163:                                             ; preds = %2162, %1954
  br label %2164

2164:                                             ; preds = %2163
  br label %1926

2165:                                             ; preds = %1939, %1926
  br label %2166

2166:                                             ; preds = %2165, %1263
  %2167 = load i8, i8* @kRunning, align 1
  %2168 = trunc i8 %2167 to i1
  br i1 %2168, label %1260, label %2169

2169:                                             ; preds = %2166
  %2170 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @_Z9closeConnv()
  %2171 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %2172 = call i32 @close(i32 %2171)
  %2173 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %2174 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %2175 = icmp ne %struct._IO_FILE* %2174, null
  br i1 %2175, label %2176, label %2179

2176:                                             ; preds = %2169
  %2177 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %2178 = call i32 @fclose(%struct._IO_FILE* %2177)
  br label %2179

2179:                                             ; preds = %2176, %2169
  call void @exit(i32 0) #17
  unreachable

2180:                                             ; No predecessors!
  %2181 = load i32, i32* %3, align 4
  ret i32 %2181

2182:                                             ; preds = %2076, %1911, %1443, %1434, %1091, %926, %458, %449
  %2183 = load i8*, i8** %22, align 8
  %2184 = load i32, i32* %23, align 4
  %2185 = insertvalue { i8*, i32 } undef, i8* %2183, 0
  %2186 = insertvalue { i8*, i32 } %2185, i32 %2184, 1
  resume { i8*, i32 } %2186
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z9catch_inti(i32 %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %4 = call i32 @getpid() #2
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8 0, i8* @kRunning, align 1
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z6myTrimPcS_(i8* %0, i8* %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp sle i32 %13, 32
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i1 [ false, %6 ], [ %14, %10 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %6

20:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 511
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %21

46:                                               ; preds = %31
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %76, %46
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sle i32 %67, 32
  br label %69

69:                                               ; preds = %61, %58
  %70 = phi i1 [ false, %58 ], [ %68, %61 ]
  br i1 %70, label %71, label %79

71:                                               ; preds = %69
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %58

79:                                               ; preds = %69
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @printf(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #4

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #4

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: noinline optnone uwtable
define i8* @_Z4initPv(i8* %0) #8 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.passwd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.passwd*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [128 x i8], align 16
  %19 = alloca i16, align 2
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.data2* @cfig to i8*), i8 0, i64 3352, i1 false)
  %30 = call i32 @getpid() #2
  store i32 %30, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %31 = load i8, i8* @verbatim, align 1
  %32 = trunc i8 %31 to i1
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  store i8 2, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @sVersion, i32 0, i32 0))
  br label %67

35:                                               ; preds = %1
  %36 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %36, %struct._IO_FILE** %7, align 8
  %37 = icmp ne %struct._IO_FILE* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  br label %39

39:                                               ; preds = %64, %38
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %42 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %40, %struct._IO_FILE* %41)
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0)) #16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  br label %64

49:                                               ; preds = %44
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %51 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)) #16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  br label %63

54:                                               ; preds = %49
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %56 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0)) #16
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i8 2, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  br label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0), i8* %60) #2
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %48
  br label %39

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65, %35
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i8, i8* @verbatim, align 1
  %69 = trunc i8 %68 to i1
  br i1 %69, label %95, label %70

70:                                               ; preds = %67
  %71 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i64 0, i64 0), align 16
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = call i64 @time(i64* null) #2
  store i64 %77, i64* %8, align 8
  %78 = call %struct.tm* @localtime(i64* %8) #2
  store %struct.tm* %78, %struct.tm** %9, align 8
  %79 = load %struct.tm*, %struct.tm** %9, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* @loggingDay, align 2
  %83 = load %struct.tm*, %struct.tm** %9, align 8
  %84 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), %struct.tm* %83) #2
  %85 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  store %struct._IO_FILE* %85, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %87 = icmp ne %struct._IO_FILE* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @sVersion, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %90 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i8 zeroext 0)
  br label %93

93:                                               ; preds = %92, %88
  br label %94

94:                                               ; preds = %93, %76
  br label %95

95:                                               ; preds = %94, %73, %70, %67
  %96 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %96, %struct._IO_FILE** %7, align 8
  %97 = icmp ne %struct._IO_FILE* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %100 = call i32 @fclose(%struct._IO_FILE* %99)
  br label %103

101:                                              ; preds = %95
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %103

103:                                              ; preds = %101, %98
  %104 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %104, %struct._IO_FILE** %7, align 8
  %105 = icmp ne %struct._IO_FILE* %104, null
  br i1 %105, label %106, label %293

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %291, %106
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %110 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %108, %struct._IO_FILE* %109)
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %292

112:                                              ; preds = %107
  %113 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %114 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %113, i8* %114, i8* %115, i8 signext 61)
  %116 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %117 = call i64 @strlen(i8* %116) #16
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %252

119:                                              ; preds = %112
  %120 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.61, i32 0, i32 0), i8* %126) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %251

128:                                              ; preds = %122, %119
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %130 = load i8, i8* @notFileSep, align 1
  %131 = sext i8 %130 to i32
  %132 = call i8* @strchr(i8* %129, i32 %131) #16
  %133 = icmp ne i8* %132, null
  br i1 %133, label %152, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %136 = load i8, i8* @fileSep, align 1
  %137 = sext i8 %136 to i32
  %138 = call i8* @strchr(i8* %135, i32 %137) #16
  %139 = icmp ne i8* %138, null
  br i1 %139, label %152, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %142 = call i8* @strchr(i8* %141, i32 62) #16
  %143 = icmp ne i8* %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %146 = call i8* @strchr(i8* %145, i32 60) #16
  %147 = icmp ne i8* %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %150 = call i8* @strchr(i8* %149, i32 46) #16
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %148, %144, %140, %134, %128
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.62, i32 0, i32 0), i8* %153) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %250

155:                                              ; preds = %148
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %157 = load i8, i8* %156, align 16
  %158 = icmp ne i8 %157, 0
  br i1 %158, label %159, label %246

159:                                              ; preds = %155
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %161 = call i64 @strlen(i8* %160) #16
  %162 = icmp ult i64 %161, 64
  br i1 %162, label %163, label %246

163:                                              ; preds = %159
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %165 = load i8, i8* %164, align 16
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %167, label %246

167:                                              ; preds = %163
  store i32 0, i32* %10, align 4
  br label %168

168:                                              ; preds = %242, %167
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 8
  br i1 %170, label %171, label %245

171:                                              ; preds = %168
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %173
  %175 = getelementptr inbounds %struct.home, %struct.home* %174, i32 0, i32 0
  %176 = getelementptr inbounds [64 x i8], [64 x i8]* %175, i64 0, i64 0
  %177 = load i8, i8* %176, align 8
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %171
  %180 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %182
  %184 = getelementptr inbounds %struct.home, %struct.home* %183, i32 0, i32 0
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %184, i32 0, i32 0
  %186 = call i32 @strcasecmp(i8* %180, i8* %185) #16
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %179
  %189 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.63, i32 0, i32 0), i8* %189) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %245

191:                                              ; preds = %179, %171
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %193
  %195 = getelementptr inbounds %struct.home, %struct.home* %194, i32 0, i32 0
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %195, i64 0, i64 0
  %197 = load i8, i8* %196, align 8
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %240, label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %201
  %203 = getelementptr inbounds %struct.home, %struct.home* %202, i32 0, i32 0
  %204 = getelementptr inbounds [64 x i8], [64 x i8]* %203, i32 0, i32 0
  %205 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %206 = call i8* @strcpy(i8* %204, i8* %205) #2
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %208
  %210 = getelementptr inbounds %struct.home, %struct.home* %209, i32 0, i32 1
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %210, i32 0, i32 0
  %212 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %213 = call i8* @strcpy(i8* %211, i8* %212) #2
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %215
  %217 = getelementptr inbounds %struct.home, %struct.home* %216, i32 0, i32 1
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %219
  %221 = getelementptr inbounds %struct.home, %struct.home* %220, i32 0, i32 1
  %222 = getelementptr inbounds [256 x i8], [256 x i8]* %221, i32 0, i32 0
  %223 = call i64 @strlen(i8* %222) #16
  %224 = sub i64 %223, 1
  %225 = getelementptr inbounds [256 x i8], [256 x i8]* %217, i64 0, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = load i8, i8* @fileSep, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %227, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %199
  %232 = load i8, i8* @fileSep, align 1
  store i8 %232, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 1), align 1
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %234
  %236 = getelementptr inbounds %struct.home, %struct.home* %235, i32 0, i32 1
  %237 = getelementptr inbounds [256 x i8], [256 x i8]* %236, i32 0, i32 0
  %238 = call i8* @strcat(i8* %237, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0)) #2
  br label %239

239:                                              ; preds = %231, %199
  br label %245

240:                                              ; preds = %191
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %168

245:                                              ; preds = %239, %188, %168
  br label %249

246:                                              ; preds = %163, %159, %155
  %247 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %248 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %247) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %249

249:                                              ; preds = %246, %245
  br label %250

250:                                              ; preds = %249, %152
  br label %251

251:                                              ; preds = %250, %125
  br label %291

252:                                              ; preds = %112
  %253 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %254 = icmp ne i8 %253, 0
  br i1 %254, label %273, label %255

255:                                              ; preds = %252
  %256 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %257 = icmp ne i8 %256, 0
  br i1 %257, label %273, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %260 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* %259) #2
  %261 = call i64 @strlen(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0)) #16
  %262 = sub i64 %261, 1
  %263 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1), i64 0, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = load i8, i8* @fileSep, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp ne i32 %265, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %258
  %270 = load i8, i8* @fileSep, align 1
  store i8 %270, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 1), align 1
  %271 = call i8* @strcat(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0)) #2
  br label %272

272:                                              ; preds = %269, %258
  br label %290

273:                                              ; preds = %255, %252
  %274 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %278 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.61, i32 0, i32 0), i8* %277) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %289

279:                                              ; preds = %273
  %280 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %281 = icmp ne i8 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %284 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.65, i32 0, i32 0), i8* %283) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %288

285:                                              ; preds = %279
  %286 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %287 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.66, i32 0, i32 0), i8* %286) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %288

288:                                              ; preds = %285, %282
  br label %289

289:                                              ; preds = %288, %276
  br label %290

290:                                              ; preds = %289, %272
  br label %291

291:                                              ; preds = %290, %251
  br label %107

292:                                              ; preds = %107
  br label %293

293:                                              ; preds = %292, %103
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  %294 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %294, %struct._IO_FILE** %7, align 8
  %295 = icmp ne %struct._IO_FILE* %294, null
  br i1 %295, label %296, label %442

296:                                              ; preds = %293
  br label %297

297:                                              ; preds = %440, %296
  %298 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %300 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %298, %struct._IO_FILE* %299)
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %441

302:                                              ; preds = %297
  %303 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %304 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %305 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %303, i8* %304, i8* %305, i8 signext 61)
  %306 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %307 = call i64 @strlen(i8* %306) #16
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %440

309:                                              ; preds = %302
  %310 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %311 = call i32 @strcasecmp(i8* %310, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0)) #16
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %353, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %315 = call i64 @strlen(i8* %314) #16
  %316 = icmp ult i64 %315, 128
  br i1 %316, label %317, label %349

317:                                              ; preds = %313
  %318 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %319 = call %struct.passwd* @getpwnam(i8* %318)
  store %struct.passwd* %319, %struct.passwd** %11, align 8
  %320 = load %struct.passwd*, %struct.passwd** %11, align 8
  %321 = icmp ne %struct.passwd* %320, null
  br i1 %321, label %322, label %345

322:                                              ; preds = %317
  %323 = load %struct.passwd*, %struct.passwd** %11, align 8
  %324 = getelementptr inbounds %struct.passwd, %struct.passwd* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  store i32 %325, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %326 = load %struct.passwd*, %struct.passwd** %11, align 8
  %327 = getelementptr inbounds %struct.passwd, %struct.passwd* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 5), align 4
  %329 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %330 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i32 0), i8* %329) #2
  %331 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %332 = icmp ne i8 %331, 0
  br i1 %332, label %344, label %333

333:                                              ; preds = %322
  %334 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load %struct.passwd*, %struct.passwd** %11, align 8
  %338 = getelementptr inbounds %struct.passwd, %struct.passwd* %337, i32 0, i32 5
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* %339) #2
  br label %343

341:                                              ; preds = %333
  %342 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0)) #2
  br label %343

343:                                              ; preds = %341, %336
  br label %344

344:                                              ; preds = %343, %322
  br label %348

345:                                              ; preds = %317
  %346 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %347 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.71, i32 0, i32 0), i8* %346) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #17
  unreachable

348:                                              ; preds = %344
  br label %352

349:                                              ; preds = %313
  %350 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %351 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.72, i32 0, i32 0), i8* %350) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #17
  unreachable

352:                                              ; preds = %348
  br label %439

353:                                              ; preds = %309
  %354 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %355 = call i32 @strcasecmp(i8* %354, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)) #16
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %373, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %359 = call i64 @atol(i8* %358) #16
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %12, align 4
  %361 = load i32, i32* %12, align 4
  %362 = icmp ult i32 %361, 512
  br i1 %362, label %363, label %364

363:                                              ; preds = %357
  store i16 512, i16* @blksize, align 2
  br label %372

364:                                              ; preds = %357
  %365 = load i32, i32* %12, align 4
  %366 = icmp ugt i32 %365, 65464
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  store i16 -72, i16* @blksize, align 2
  br label %371

368:                                              ; preds = %364
  %369 = load i32, i32* %12, align 4
  %370 = trunc i32 %369 to i16
  store i16 %370, i16* @blksize, align 2
  br label %371

371:                                              ; preds = %368, %367
  br label %372

372:                                              ; preds = %371, %363
  br label %438

373:                                              ; preds = %353
  %374 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %375 = call i32 @strcasecmp(i8* %374, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #16
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %392, label %377

377:                                              ; preds = %373
  %378 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %379 = call i64 @atol(i8* %378) #16
  %380 = trunc i64 %379 to i16
  store i16 %380, i16* @timeout, align 2
  %381 = load i16, i16* @timeout, align 2
  %382 = zext i16 %381 to i32
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %384, label %385

384:                                              ; preds = %377
  store i16 1, i16* @timeout, align 2
  br label %391

385:                                              ; preds = %377
  %386 = load i16, i16* @timeout, align 2
  %387 = zext i16 %386 to i32
  %388 = icmp sgt i32 %387, 255
  br i1 %388, label %389, label %390

389:                                              ; preds = %385
  store i16 255, i16* @timeout, align 2
  br label %390

390:                                              ; preds = %389, %385
  br label %391

391:                                              ; preds = %390, %384
  br label %437

392:                                              ; preds = %373
  %393 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %394 = call i32 @strcasecmp(i8* %393, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0)) #16
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %405, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %398 = load i8, i8* %397, align 16
  %399 = sext i8 %398 to i32
  %400 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32 %399) #16
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %403

402:                                              ; preds = %396
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  br label %404

403:                                              ; preds = %396
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  br label %404

404:                                              ; preds = %403, %402
  br label %436

405:                                              ; preds = %392
  %406 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %407 = call i32 @strcasecmp(i8* %406, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #16
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %418, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %411 = load i8, i8* %410, align 16
  %412 = sext i8 %411 to i32
  %413 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32 %412) #16
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %416

415:                                              ; preds = %409
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  br label %417

416:                                              ; preds = %409
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  br label %417

417:                                              ; preds = %416, %415
  br label %435

418:                                              ; preds = %405
  %419 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %420 = call i32 @strcasecmp(i8* %419, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0)) #16
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %424 = load i8, i8* %423, align 16
  %425 = sext i8 %424 to i32
  %426 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32 %425) #16
  %427 = icmp ne i8* %426, null
  br i1 %427, label %428, label %429

428:                                              ; preds = %422
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  br label %430

429:                                              ; preds = %422
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  br label %430

430:                                              ; preds = %429, %428
  br label %434

431:                                              ; preds = %418
  %432 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %433 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i32 0, i32 0), i8* %432) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %434

434:                                              ; preds = %431, %430
  br label %435

435:                                              ; preds = %434, %417
  br label %436

436:                                              ; preds = %435, %404
  br label %437

437:                                              ; preds = %436, %391
  br label %438

438:                                              ; preds = %437, %372
  br label %439

439:                                              ; preds = %438, %352
  br label %440

440:                                              ; preds = %439, %302
  br label %297

441:                                              ; preds = %297
  br label %442

442:                                              ; preds = %441, %293
  %443 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %443, %struct._IO_FILE** %7, align 8
  %444 = icmp ne %struct._IO_FILE* %443, null
  br i1 %444, label %445, label %505

445:                                              ; preds = %442
  store i32 0, i32* %13, align 4
  br label %446

446:                                              ; preds = %503, %445
  %447 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %449 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %447, %struct._IO_FILE* %448)
  %450 = icmp ne i8* %449, null
  br i1 %450, label %451, label %504

451:                                              ; preds = %446
  %452 = load i32, i32* %13, align 4
  %453 = icmp slt i32 %452, 32
  br i1 %453, label %454, label %503

454:                                              ; preds = %451
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %455 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %456 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %457 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %455, i8* %456, i8* %457, i8 signext 45)
  %458 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %459 = call i32 @_Z12my_inet_addrPc(i8* %458)
  %460 = call i32 @htonl(i32 %459) #18
  store i32 %460, i32* %14, align 4
  %461 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %462 = call i64 @strlen(i8* %461) #16
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %454
  %465 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %466 = call i32 @_Z12my_inet_addrPc(i8* %465)
  %467 = call i32 @htonl(i32 %466) #18
  store i32 %467, i32* %15, align 4
  br label %470

468:                                              ; preds = %454
  %469 = load i32, i32* %14, align 4
  store i32 %469, i32* %15, align 4
  br label %470

470:                                              ; preds = %468, %464
  %471 = load i32, i32* %14, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %499

473:                                              ; preds = %470
  %474 = load i32, i32* %14, align 4
  %475 = icmp ne i32 %474, -1
  br i1 %475, label %476, label %499

476:                                              ; preds = %473
  %477 = load i32, i32* %15, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %499

479:                                              ; preds = %476
  %480 = load i32, i32* %15, align 4
  %481 = icmp ne i32 %480, -1
  br i1 %481, label %482, label %499

482:                                              ; preds = %479
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* %15, align 4
  %485 = icmp ule i32 %483, %484
  br i1 %485, label %486, label %499

486:                                              ; preds = %482
  %487 = load i32, i32* %14, align 4
  %488 = load i32, i32* %13, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %489
  %491 = getelementptr inbounds %struct.data12, %struct.data12* %490, i32 0, i32 0
  store i32 %487, i32* %491, align 8
  %492 = load i32, i32* %15, align 4
  %493 = load i32, i32* %13, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %494
  %496 = getelementptr inbounds %struct.data12, %struct.data12* %495, i32 0, i32 1
  store i32 %492, i32* %496, align 4
  %497 = load i32, i32* %13, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %13, align 4
  br label %502

499:                                              ; preds = %482, %479, %476, %473, %470
  %500 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %501 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.79, i32 0, i32 0), i8* %500) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %502

502:                                              ; preds = %499, %486
  br label %503

503:                                              ; preds = %502, %451
  br label %446

504:                                              ; preds = %446
  br label %505

505:                                              ; preds = %504, %442
  %506 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i64 0), align 8
  %507 = icmp ne i8 %506, 0
  br i1 %507, label %531, label %508

508:                                              ; preds = %505
  %509 = call i32 @getuid() #2
  %510 = call %struct.passwd* @getpwuid(i32 %509)
  store %struct.passwd* %510, %struct.passwd** %16, align 8
  %511 = load %struct.passwd*, %struct.passwd** %16, align 8
  %512 = getelementptr inbounds %struct.passwd, %struct.passwd* %511, i32 0, i32 0
  %513 = load i8*, i8** %512, align 8
  %514 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i32 0), i8* %513) #2
  %515 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %516 = icmp ne i8 %515, 0
  br i1 %516, label %530, label %517

517:                                              ; preds = %508
  %518 = load %struct.passwd*, %struct.passwd** %16, align 8
  %519 = getelementptr inbounds %struct.passwd, %struct.passwd* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 8
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %527

522:                                              ; preds = %517
  %523 = load %struct.passwd*, %struct.passwd** %16, align 8
  %524 = getelementptr inbounds %struct.passwd, %struct.passwd* %523, i32 0, i32 5
  %525 = load i8*, i8** %524, align 8
  %526 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* %525) #2
  br label %529

527:                                              ; preds = %517
  %528 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0)) #2
  br label %529

529:                                              ; preds = %527, %522
  br label %530

530:                                              ; preds = %529, %508
  br label %531

531:                                              ; preds = %530, %505
  %532 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  store i32 0, i32* %17, align 4
  br label %533

533:                                              ; preds = %557, %531
  %534 = load i32, i32* %17, align 4
  %535 = icmp slt i32 %534, 8
  br i1 %535, label %536, label %560

536:                                              ; preds = %533
  %537 = load i32, i32* %17, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %538
  %540 = getelementptr inbounds %struct.home, %struct.home* %539, i32 0, i32 1
  %541 = getelementptr inbounds [256 x i8], [256 x i8]* %540, i64 0, i64 0
  %542 = load i8, i8* %541, align 8
  %543 = icmp ne i8 %542, 0
  br i1 %543, label %544, label %556

544:                                              ; preds = %536
  %545 = load i32, i32* %17, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %546
  %548 = getelementptr inbounds %struct.home, %struct.home* %547, i32 0, i32 0
  %549 = getelementptr inbounds [64 x i8], [64 x i8]* %548, i32 0, i32 0
  %550 = load i32, i32* %17, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %551
  %553 = getelementptr inbounds %struct.home, %struct.home* %552, i32 0, i32 1
  %554 = getelementptr inbounds [256 x i8], [256 x i8]* %553, i32 0, i32 0
  %555 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0), i8* %549, i8* %554) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %556

556:                                              ; preds = %544, %536
  br label %557

557:                                              ; preds = %556
  %558 = load i32, i32* %17, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %17, align 4
  br label %533

560:                                              ; preds = %533
  %561 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0, i64 0, i32 0), align 8
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %605

563:                                              ; preds = %560
  store i16 0, i16* %19, align 2
  br label %564

564:                                              ; preds = %601, %563
  %565 = load i16, i16* %19, align 2
  %566 = zext i16 %565 to i64
  %567 = icmp ule i64 %566, 256
  br i1 %567, label %568, label %575

568:                                              ; preds = %564
  %569 = load i16, i16* %19, align 2
  %570 = zext i16 %569 to i64
  %571 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %570
  %572 = getelementptr inbounds %struct.data12, %struct.data12* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = icmp ne i32 %573, 0
  br label %575

575:                                              ; preds = %568, %564
  %576 = phi i1 [ false, %564 ], [ %574, %568 ]
  br i1 %576, label %577, label %604

577:                                              ; preds = %575
  %578 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0)) #2
  %579 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i32 0, i32 0
  %580 = load i16, i16* %19, align 2
  %581 = zext i16 %580 to i64
  %582 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %581
  %583 = getelementptr inbounds %struct.data12, %struct.data12* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  %585 = call i32 @htonl(i32 %584) #18
  %586 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %585)
  %587 = call i32 (i8*, i8*, ...) @sprintf(i8* %579, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* %586) #2
  %588 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i32 0, i32 0
  %589 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* %588) #2
  %590 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i32 0, i32 0
  %591 = load i16, i16* %19, align 2
  %592 = zext i16 %591 to i64
  %593 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %592
  %594 = getelementptr inbounds %struct.data12, %struct.data12* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = call i32 @htonl(i32 %595) #18
  %597 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %596)
  %598 = call i32 (i8*, i8*, ...) @sprintf(i8* %590, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %597) #2
  %599 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i32 0, i32 0
  %600 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* %599) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %601

601:                                              ; preds = %577
  %602 = load i16, i16* %19, align 2
  %603 = add i16 %602, 1
  store i16 %603, i16* %19, align 2
  br label %564

604:                                              ; preds = %575
  br label %607

605:                                              ; preds = %560
  %606 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %607

607:                                              ; preds = %605, %604
  %608 = load i16, i16* @blksize, align 2
  %609 = zext i16 %608 to i32
  %610 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i32 %609) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %611 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), i32 512) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %612 = load i16, i16* @timeout, align 2
  %613 = zext i16 %612 to i32
  %614 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0), i32 %613) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %615 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  %616 = icmp ne i8 %615, 0
  %617 = zext i1 %616 to i64
  %618 = select i1 %616, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0)
  %619 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0), i8* %618) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %620 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  %621 = icmp ne i8 %620, 0
  %622 = zext i1 %621 to i64
  %623 = select i1 %621, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0)
  %624 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i32 0, i32 0), i8* %623) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %625 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  %626 = icmp ne i8 %625, 0
  %627 = zext i1 %626 to i64
  %628 = select i1 %626, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0)
  %629 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.92, i32 0, i32 0), i8* %628) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %630 = load i8, i8* @verbatim, align 1
  %631 = trunc i8 %630 to i1
  br i1 %631, label %639, label %632

632:                                              ; preds = %607
  %633 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %634 = zext i8 %633 to i32
  %635 = icmp sgt i32 %634, 1
  %636 = zext i1 %635 to i64
  %637 = select i1 %635, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0)
  %638 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* %637) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %639

639:                                              ; preds = %632, %607
  %640 = call i32 @socket(i32 2, i32 2, i32 0) #2
  store i32 %640, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %641 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %643, label %645

643:                                              ; preds = %639
  %644 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.96, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #17
  unreachable

645:                                              ; preds = %639
  br label %646

646:                                              ; preds = %1037, %645
  store i8 0, i8* %20, align 1
  %647 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 8
  %648 = trunc i8 %647 to i1
  br i1 %648, label %708, label %649

649:                                              ; preds = %646
  %650 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %650, %struct._IO_FILE** %7, align 8
  %651 = icmp ne %struct._IO_FILE* %650, null
  br i1 %651, label %652, label %708

652:                                              ; preds = %649
  store i8 0, i8* %21, align 1
  br label %653

653:                                              ; preds = %706, %652
  %654 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %655 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %656 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %654, %struct._IO_FILE* %655)
  %657 = icmp ne i8* %656, null
  br i1 %657, label %658, label %707

658:                                              ; preds = %653
  store i16 69, i16* %22, align 2
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 8
  %659 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %660 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %661 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %659, i8* %660, i8* %661, i8 signext 58)
  %662 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %663 = load i8, i8* %662, align 16
  %664 = icmp ne i8 %663, 0
  br i1 %664, label %665, label %669

665:                                              ; preds = %658
  %666 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %667 = call i32 @atoi(i8* %666) #16
  %668 = trunc i32 %667 to i16
  store i16 %668, i16* %22, align 2
  br label %669

669:                                              ; preds = %665, %658
  %670 = load i8, i8* %21, align 1
  %671 = zext i8 %670 to i32
  %672 = icmp slt i32 %671, 8
  br i1 %672, label %673, label %706

673:                                              ; preds = %669
  %674 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %675 = call zeroext i1 @_Z4isIPPc(i8* %674)
  br i1 %675, label %676, label %702

676:                                              ; preds = %673
  %677 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %678 = call i32 @_Z12my_inet_addrPc(i8* %677)
  store i32 %678, i32* %23, align 4
  %679 = load i32, i32* %23, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %685, label %681

681:                                              ; preds = %676
  store i32 0, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i64 0), align 4
  %682 = load i16, i16* %22, align 2
  store i16 %682, i16* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4, i64 0), align 4
  %683 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %684 = call i32 @fclose(%struct._IO_FILE* %683)
  br label %707

685:                                              ; preds = %676
  %686 = load i32, i32* %23, align 4
  %687 = call i32* @_Z10findServerPjj(i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i32 0), i32 %686)
  %688 = icmp ne i32* %687, null
  br i1 %688, label %700, label %689

689:                                              ; preds = %685
  %690 = load i32, i32* %23, align 4
  %691 = load i8, i8* %21, align 1
  %692 = zext i8 %691 to i64
  %693 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %692
  store i32 %690, i32* %693, align 4
  %694 = load i16, i16* %22, align 2
  %695 = load i8, i8* %21, align 1
  %696 = zext i8 %695 to i64
  %697 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %696
  store i16 %694, i16* %697, align 2
  %698 = load i8, i8* %21, align 1
  %699 = add i8 %698, 1
  store i8 %699, i8* %21, align 1
  br label %700

700:                                              ; preds = %689, %685
  br label %701

701:                                              ; preds = %700
  br label %705

702:                                              ; preds = %673
  %703 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %704 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.98, i32 0, i32 0), i8* %703) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %705

705:                                              ; preds = %702, %701
  br label %706

706:                                              ; preds = %705, %669
  br label %653

707:                                              ; preds = %681, %653
  br label %708

708:                                              ; preds = %707, %649, %646
  %709 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 8
  %710 = trunc i8 %709 to i1
  br i1 %710, label %740, label %711

711:                                              ; preds = %708
  %712 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.99, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @_Z13getInterfacesP5data1(%struct.data1* @newNetwork)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 16, i32 0) to i8*), i8* align 4 bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2, i32 0) to i8*), i64 32, i1 false)
  store i8 0, i8* %24, align 1
  br label %713

713:                                              ; preds = %736, %711
  %714 = load i8, i8* %24, align 1
  %715 = zext i8 %714 to i32
  %716 = icmp slt i32 %715, 8
  br i1 %716, label %717, label %723

717:                                              ; preds = %713
  %718 = load i8, i8* %24, align 1
  %719 = zext i8 %718 to i64
  %720 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2), i64 0, i64 %719
  %721 = load i32, i32* %720, align 4
  %722 = icmp ne i32 %721, 0
  br label %723

723:                                              ; preds = %717, %713
  %724 = phi i1 [ false, %713 ], [ %722, %717 ]
  br i1 %724, label %725, label %739

725:                                              ; preds = %723
  %726 = load i8, i8* %24, align 1
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2), i64 0, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = load i8, i8* %24, align 1
  %731 = zext i8 %730 to i64
  %732 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %731
  store i32 %729, i32* %732, align 4
  %733 = load i8, i8* %24, align 1
  %734 = zext i8 %733 to i64
  %735 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %734
  store i16 69, i16* %735, align 2
  br label %736

736:                                              ; preds = %725
  %737 = load i8, i8* %24, align 1
  %738 = add i8 %737, 1
  store i8 %738, i8* %24, align 1
  br label %713

739:                                              ; preds = %723
  br label %740

740:                                              ; preds = %739, %708
  store i8 0, i8* %25, align 1
  store i32 0, i32* %26, align 4
  br label %741

741:                                              ; preds = %989, %740
  %742 = load i32, i32* %26, align 4
  %743 = icmp slt i32 %742, 8
  br i1 %743, label %744, label %750

744:                                              ; preds = %741
  %745 = load i32, i32* %26, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %746
  %748 = load i16, i16* %747, align 2
  %749 = icmp ne i16 %748, 0
  br label %750

750:                                              ; preds = %744, %741
  %751 = phi i1 [ false, %741 ], [ %749, %744 ]
  br i1 %751, label %752, label %992

752:                                              ; preds = %750
  store i32 0, i32* %27, align 4
  br label %753

753:                                              ; preds = %798, %752
  %754 = load i32, i32* %27, align 4
  %755 = icmp slt i32 %754, 8
  br i1 %755, label %756, label %763

756:                                              ; preds = %753
  %757 = load i32, i32* %27, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %758
  %760 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %759, i32 0, i32 5
  %761 = load i8, i8* %760, align 1
  %762 = trunc i8 %761 to i1
  br label %763

763:                                              ; preds = %756, %753
  %764 = phi i1 [ false, %753 ], [ %762, %756 ]
  br i1 %764, label %765, label %801

765:                                              ; preds = %763
  %766 = load i32, i32* %27, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %767
  %769 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %768, i32 0, i32 4
  %770 = load i8, i8* %769, align 2
  %771 = trunc i8 %770 to i1
  br i1 %771, label %772, label %797

772:                                              ; preds = %765
  %773 = load i32, i32* %27, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %774
  %776 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %775, i32 0, i32 2
  %777 = load i32, i32* %776, align 4
  %778 = load i32, i32* %26, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %779
  %781 = load i32, i32* %780, align 4
  %782 = icmp eq i32 %777, %781
  br i1 %782, label %783, label %797

783:                                              ; preds = %772
  %784 = load i32, i32* %27, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %785
  %787 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %786, i32 0, i32 3
  %788 = load i16, i16* %787, align 4
  %789 = zext i16 %788 to i32
  %790 = load i32, i32* %26, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %791
  %793 = load i16, i16* %792, align 2
  %794 = zext i16 %793 to i32
  %795 = icmp eq i32 %789, %794
  br i1 %795, label %796, label %797

796:                                              ; preds = %783
  br label %801

797:                                              ; preds = %783, %772, %765
  br label %798

798:                                              ; preds = %797
  %799 = load i32, i32* %27, align 4
  %800 = add nsw i32 %799, 1
  store i32 %800, i32* %27, align 4
  br label %753

801:                                              ; preds = %796, %763
  %802 = load i32, i32* %27, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %803
  %805 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %804, i32 0, i32 4
  %806 = load i8, i8* %805, align 2
  %807 = trunc i8 %806 to i1
  br i1 %807, label %808, label %861

808:                                              ; preds = %801
  %809 = load i32, i32* %27, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %810
  %812 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %811, i32 0, i32 2
  %813 = load i32, i32* %812, align 4
  %814 = load i32, i32* %26, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %815
  %817 = load i32, i32* %816, align 4
  %818 = icmp eq i32 %813, %817
  br i1 %818, label %819, label %861

819:                                              ; preds = %808
  %820 = load i32, i32* %27, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %821
  %823 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %822, i32 0, i32 3
  %824 = load i16, i16* %823, align 4
  %825 = zext i16 %824 to i32
  %826 = load i32, i32* %26, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %827
  %829 = load i16, i16* %828, align 2
  %830 = zext i16 %829 to i32
  %831 = icmp eq i32 %825, %830
  br i1 %831, label %832, label %861

832:                                              ; preds = %819
  %833 = load i8, i8* %25, align 1
  %834 = zext i8 %833 to i64
  %835 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %834
  %836 = bitcast %struct.tftpConnType* %835 to i8*
  %837 = load i32, i32* %27, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %838
  %840 = bitcast %struct.tftpConnType* %839 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %836, i8* align 4 %840, i64 28, i1 false)
  %841 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %842 = load i8, i8* %25, align 1
  %843 = zext i8 %842 to i64
  %844 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %843
  %845 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 4
  %847 = icmp slt i32 %841, %846
  br i1 %847, label %848, label %854

848:                                              ; preds = %832
  %849 = load i8, i8* %25, align 1
  %850 = zext i8 %849 to i64
  %851 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %850
  %852 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 4
  store i32 %853, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  br label %854

854:                                              ; preds = %848, %832
  %855 = load i32, i32* %27, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %856
  %858 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %857, i32 0, i32 4
  store i8 0, i8* %858, align 2
  %859 = load i8, i8* %25, align 1
  %860 = add i8 %859, 1
  store i8 %860, i8* %25, align 1
  br label %989

861:                                              ; preds = %819, %808, %801
  %862 = call i32 @socket(i32 2, i32 2, i32 17) #2
  %863 = load i8, i8* %25, align 1
  %864 = zext i8 %863 to i64
  %865 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %864
  %866 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %865, i32 0, i32 0
  store i32 %862, i32* %866, align 4
  %867 = load i8, i8* %25, align 1
  %868 = zext i8 %867 to i64
  %869 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %868
  %870 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %869, i32 0, i32 0
  %871 = load i32, i32* %870, align 4
  %872 = icmp eq i32 %871, -1
  br i1 %872, label %873, label %875

873:                                              ; preds = %861
  store i8 1, i8* %20, align 1
  %874 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.96, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %989

875:                                              ; preds = %861
  %876 = call i32* @__errno_location() #18
  store i32 0, i32* %876, align 4
  %877 = load i8, i8* %25, align 1
  %878 = zext i8 %877 to i64
  %879 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %878
  %880 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %879, i32 0, i32 1
  %881 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %880, i32 0, i32 0
  store i16 2, i16* %881, align 4
  %882 = load i32, i32* %26, align 4
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %883
  %885 = load i32, i32* %884, align 4
  %886 = load i8, i8* %25, align 1
  %887 = zext i8 %886 to i64
  %888 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %887
  %889 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %888, i32 0, i32 1
  %890 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %889, i32 0, i32 2
  %891 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %890, i32 0, i32 0
  store i32 %885, i32* %891, align 4
  %892 = load i32, i32* %26, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %893
  %895 = load i16, i16* %894, align 2
  %896 = call zeroext i16 @htons(i16 zeroext %895) #18
  %897 = load i8, i8* %25, align 1
  %898 = zext i8 %897 to i64
  %899 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %898
  %900 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %899, i32 0, i32 1
  %901 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %900, i32 0, i32 1
  store i16 %896, i16* %901, align 2
  %902 = load i8, i8* %25, align 1
  %903 = zext i8 %902 to i64
  %904 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %903
  %905 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 4
  %907 = load i8, i8* %25, align 1
  %908 = zext i8 %907 to i64
  %909 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %908
  %910 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %909, i32 0, i32 1
  %911 = bitcast %struct.sockaddr_in* %910 to %struct.sockaddr*
  %912 = call i32 @bind(i32 %906, %struct.sockaddr* %911, i32 16) #2
  store i32 %912, i32* %28, align 4
  %913 = load i32, i32* %28, align 4
  %914 = icmp eq i32 %913, -1
  br i1 %914, label %919, label %915

915:                                              ; preds = %875
  %916 = call i32* @__errno_location() #18
  %917 = load i32, i32* %916, align 4
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %919, label %940

919:                                              ; preds = %915, %875
  store i8 1, i8* %20, align 1
  %920 = load i8, i8* %25, align 1
  %921 = zext i8 %920 to i64
  %922 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %921
  %923 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %922, i32 0, i32 0
  %924 = load i32, i32* %923, align 4
  %925 = call i32 @close(i32 %924)
  %926 = load i32, i32* %26, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %927
  %929 = load i32, i32* %928, align 4
  %930 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %929)
  %931 = load i32, i32* %26, align 4
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %932
  %934 = load i16, i16* %933, align 2
  %935 = zext i16 %934 to i32
  %936 = call i32* @__errno_location() #18
  %937 = load i32, i32* %936, align 4
  %938 = call i8* @strerror(i32 %937) #2
  %939 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.100, i32 0, i32 0), i8* %930, i32 %935, i8* %938) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %989

940:                                              ; preds = %915
  %941 = load i8, i8* %25, align 1
  %942 = zext i8 %941 to i64
  %943 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %942
  %944 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %943, i32 0, i32 5
  store i8 1, i8* %944, align 1
  %945 = load i8, i8* %25, align 1
  %946 = zext i8 %945 to i64
  %947 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %946
  %948 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %947, i32 0, i32 4
  store i8 1, i8* %948, align 2
  %949 = load i32, i32* %26, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %950
  %952 = load i32, i32* %951, align 4
  %953 = load i8, i8* %25, align 1
  %954 = zext i8 %953 to i64
  %955 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %954
  %956 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %955, i32 0, i32 2
  store i32 %952, i32* %956, align 4
  %957 = load i32, i32* %26, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %958
  %960 = load i16, i16* %959, align 2
  %961 = load i8, i8* %25, align 1
  %962 = zext i8 %961 to i64
  %963 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %962
  %964 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %963, i32 0, i32 3
  store i16 %960, i16* %964, align 4
  %965 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %966 = load i8, i8* %25, align 1
  %967 = zext i8 %966 to i64
  %968 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %967
  %969 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %968, i32 0, i32 0
  %970 = load i32, i32* %969, align 4
  %971 = icmp slt i32 %965, %970
  br i1 %971, label %972, label %978

972:                                              ; preds = %940
  %973 = load i8, i8* %25, align 1
  %974 = zext i8 %973 to i64
  %975 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %974
  %976 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %975, i32 0, i32 0
  %977 = load i32, i32* %976, align 4
  store i32 %977, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  br label %978

978:                                              ; preds = %972, %940
  %979 = load i32, i32* %26, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %980
  %982 = load i32, i32* %981, align 4
  %983 = icmp ne i32 %982, 0
  br i1 %983, label %985, label %984

984:                                              ; preds = %978
  br label %992

985:                                              ; preds = %978
  %986 = load i8, i8* %25, align 1
  %987 = add i8 %986, 1
  store i8 %987, i8* %25, align 1
  br label %988

988:                                              ; preds = %985
  br label %989

989:                                              ; preds = %988, %919, %873, %854
  %990 = load i32, i32* %26, align 4
  %991 = add nsw i32 %990, 1
  store i32 %991, i32* %26, align 4
  br label %741

992:                                              ; preds = %984, %750
  %993 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %994 = add nsw i32 %993, 1
  store i32 %994, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %995 = load i8, i8* %20, align 1
  %996 = trunc i8 %995 to i1
  br i1 %996, label %997, label %1000

997:                                              ; preds = %992
  %998 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  %999 = add i32 %998, 1
  store i32 %999, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  br label %1001

1000:                                             ; preds = %992
  store i32 0, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  br label %1001

1001:                                             ; preds = %1000, %997
  call void @_Z9closeConnv()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.data1* @network to i8*), i8* align 4 bitcast (%struct.data1* @newNetwork to i8*), i64 344, i1 false)
  %1002 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0, i64 0, i32 4), align 2
  %1003 = trunc i8 %1002 to i1
  br i1 %1003, label %1006, label %1004

1004:                                             ; preds = %1001
  %1005 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.101, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %1037

1006:                                             ; preds = %1001
  store i32 0, i32* %29, align 4
  br label %1007

1007:                                             ; preds = %1033, %1006
  %1008 = load i32, i32* %29, align 4
  %1009 = icmp slt i32 %1008, 8
  br i1 %1009, label %1010, label %1017

1010:                                             ; preds = %1007
  %1011 = load i32, i32* %29, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1012
  %1014 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1013, i32 0, i32 4
  %1015 = load i8, i8* %1014, align 2
  %1016 = trunc i8 %1015 to i1
  br label %1017

1017:                                             ; preds = %1010, %1007
  %1018 = phi i1 [ false, %1007 ], [ %1016, %1010 ]
  br i1 %1018, label %1019, label %1036

1019:                                             ; preds = %1017
  %1020 = load i32, i32* %29, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1021
  %1023 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1022, i32 0, i32 2
  %1024 = load i32, i32* %1023, align 4
  %1025 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %1024)
  %1026 = load i32, i32* %29, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1027
  %1029 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1028, i32 0, i32 3
  %1030 = load i16, i16* %1029, align 4
  %1031 = zext i16 %1030 to i32
  %1032 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i8* %1025, i32 %1031) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %1033

1033:                                             ; preds = %1019
  %1034 = load i32, i32* %29, align 4
  %1035 = add nsw i32 %1034, 1
  store i32 %1035, i32* %29, align 4
  br label %1007

1036:                                             ; preds = %1017
  store i8 1, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  br label %1037

1037:                                             ; preds = %1036, %1004
  %1038 = call zeroext i1 @_Z12detectChangev()
  br i1 %1038, label %646, label %1039

1039:                                             ; preds = %1037
  call void @pthread_exit(i8* null) #19
  unreachable

1040:                                             ; No predecessors!
  %1041 = load i8*, i8** %2, align 8
  ret i8* %1041
}

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: noinline optnone uwtable
define void @_Z7logMessPch(i8* %0, i8 zeroext %1) #8 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load i8, i8* @verbatim, align 1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %10)
  br label %67

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %12
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = call i64 @time(i64* null) #2
  store i64 %22, i64* %5, align 8
  %23 = call %struct.tm* @localtime(i64* %5) #2
  store %struct.tm* %23, %struct.tm** %6, align 8
  %24 = load %struct.tm*, %struct.tm** %6, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load i16, i16* @loggingDay, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  %31 = load %struct.tm*, %struct.tm** %6, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* @loggingDay, align 2
  %35 = load %struct.tm*, %struct.tm** %6, align 8
  %36 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), %struct.tm* %35) #2
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %40 = call i32 @fclose(%struct._IO_FILE* %39)
  %41 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  store %struct._IO_FILE* %41, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %43 = icmp ne %struct._IO_FILE* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @sVersion, i32 0, i32 0))
  br label %48

47:                                               ; preds = %30
  br label %67

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.tm*, %struct.tm** %6, align 8
  %51 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), %struct.tm* %50) #2
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* %53)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %56 = call i32 @fflush(%struct._IO_FILE* %55)
  br label %66

57:                                               ; preds = %15, %12
  %58 = load i8, i8* %4, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %61 = zext i8 %60 to i32
  %62 = icmp sle i32 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  call void (i32, i8*, ...) @syslog(i32 138, i8* %64)
  br label %65

65:                                               ; preds = %63, %57
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %47, %9
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

declare i32 @sleep(i32) #6

; Function Attrs: nounwind
declare i32 @setuid(i32) #4

; Function Attrs: nounwind
declare i32 @setgid(i32) #4

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #6

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #9

; Function Attrs: noinline optnone uwtable
define linkonce_odr dereferenceable(8) %struct.request** @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(%"class.std::map"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::map"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %7 = alloca %"struct.std::less", align 1
  %8 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %9 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %10 = alloca %"class.std::tuple", align 8
  %11 = alloca %"class.std::tuple.24", align 1
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %12 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %13 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %14 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_(%"class.std::map"* %12, %"class.std::__cxx11::basic_string"* dereferenceable(32) %13)
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %15, align 8
  %16 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv(%"class.std::map"* %12) #2
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node_base"** %17, align 8
  %18 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_(%"struct.std::_Rb_tree_iterator.23"* %5, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %6) #2
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  call void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv(%"class.std::map"* %12)
  %20 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %21 = call dereferenceable(40) %"struct.std::pair.18"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEdeEv(%"struct.std::_Rb_tree_iterator.23"* %5) #2
  %22 = getelementptr inbounds %"struct.std::pair.18", %"struct.std::pair.18"* %21, i32 0, i32 0
  %23 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %7, %"class.std::__cxx11::basic_string"* dereferenceable(32) %20, %"class.std::__cxx11::basic_string"* dereferenceable(32) %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ true, %2 ], [ %23, %19 ]
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.std::map", %"class.std::map"* %12, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2ERKSt17_Rb_tree_iteratorISA_E(%"struct.std::_Rb_tree_const_iterator"* %9, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %5) #2
  %28 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %29 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %28) #2
  call void @_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_(%"class.std::tuple"* sret %10, %"class.std::__cxx11::basic_string"* dereferenceable(32) %29) #2
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %9, i32 0, i32 0
  %31 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %30, align 8
  %32 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(%"class.std::_Rb_tree"* %27, %"struct.std::_Rb_tree_node_base"* %31, %"struct.std::piecewise_construct_t"* dereferenceable(1) @_ZStL19piecewise_construct, %"class.std::tuple"* dereferenceable(8) %10, %"class.std::tuple.24"* dereferenceable(1) %11)
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %32, %"struct.std::_Rb_tree_node_base"** %33, align 8
  %34 = bitcast %"struct.std::_Rb_tree_iterator.23"* %5 to i8*
  %35 = bitcast %"struct.std::_Rb_tree_iterator.23"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  br label %36

36:                                               ; preds = %26, %24
  %37 = call dereferenceable(40) %"struct.std::pair.18"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEdeEv(%"struct.std::_Rb_tree_iterator.23"* %5) #2
  %38 = getelementptr inbounds %"struct.std::pair.18", %"struct.std::pair.18"* %37, i32 0, i32 1
  ret %struct.request** %38
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.10"*) unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator.10"* dereferenceable(1)) unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.10"*) unnamed_addr #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr i64 @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseERSB_(%"class.std::map"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::map"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %6 = getelementptr inbounds %"class.std::map", %"class.std::map"* %5, i32 0, i32 0
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %8 = call i64 @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5eraseERS7_(%"class.std::_Rb_tree"* %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %7)
  ret i64 %8
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #9

; Function Attrs: noinline optnone uwtable
define i32 @_Z11processRecvP7request(%struct.request* %0) #8 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %4 = call i64 @time(i64* null) #2
  %5 = load %struct.request*, %struct.request** %3, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 8
  %8 = zext i32 %7 to i64
  %9 = add nsw i64 %4, %8
  %10 = load %struct.request*, %struct.request** %3, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 4
  store i64 %9, i64* %11, align 8
  %12 = call i32* @__errno_location() #18
  store i32 0, i32* %12, align 4
  %13 = load %struct.request*, %struct.request** %3, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 17
  store i32 4, i32* %14, align 4
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 3
  %17 = load i8, i8* %16, align 2
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %18
  %20 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.request*, %struct.request** %3, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 21
  %24 = bitcast %union.anon.9* %23 to %struct.acknowledgement*
  %25 = bitcast %struct.acknowledgement* %24 to i8*
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.request*, %struct.request** %3, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 18
  %32 = bitcast %struct.sockaddr_in* %31 to %struct.sockaddr*
  %33 = load %struct.request*, %struct.request** %3, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 19
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @sendto(i32 %21, i8* %25, i64 %29, i32 0, %struct.sockaddr* %32, i32 %35)
  %37 = call i32* @__errno_location() #18
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %1
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 21
  %43 = bitcast %union.anon.9* %42 to %struct.tftperror*
  %44 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %43, i32 0, i32 2
  %45 = getelementptr inbounds [508 x i8], [508 x i8]* %44, i32 0, i32 0
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0)) #2
  %47 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %47, i8 zeroext 1)
  %48 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %48)
  %49 = call i32* @__errno_location() #18
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  br label %141

51:                                               ; preds = %1
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 4
  br i1 %55, label %56, label %117

56:                                               ; preds = %51
  %57 = load %struct.packet*, %struct.packet** @datain, align 8
  %58 = getelementptr inbounds %struct.packet, %struct.packet* %57, i32 0, i32 2
  %59 = load %struct.request*, %struct.request** %3, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 15
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.request*, %struct.request** %3, align 8
  %65 = getelementptr inbounds %struct.request, %struct.request* %64, i32 0, i32 6
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %65, align 8
  %67 = call i64 @fwrite(i8* %58, i64 %63, i64 1, %struct._IO_FILE* %66)
  %68 = icmp ne i64 %67, 1
  br i1 %68, label %73, label %69

69:                                               ; preds = %56
  %70 = call i32* @__errno_location() #18
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %117

73:                                               ; preds = %69, %56
  %74 = call zeroext i16 @htons(i16 zeroext 5) #18
  %75 = load %struct.request*, %struct.request** %3, align 8
  %76 = getelementptr inbounds %struct.request, %struct.request* %75, i32 0, i32 21
  %77 = bitcast %union.anon.9* %76 to %struct.tftperror*
  %78 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %77, i32 0, i32 0
  store i16 %74, i16* %78, align 8
  %79 = call zeroext i16 @htons(i16 zeroext 3) #18
  %80 = load %struct.request*, %struct.request** %3, align 8
  %81 = getelementptr inbounds %struct.request, %struct.request* %80, i32 0, i32 21
  %82 = bitcast %union.anon.9* %81 to %struct.tftperror*
  %83 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %82, i32 0, i32 1
  store i16 %79, i16* %83, align 2
  %84 = load %struct.request*, %struct.request** %3, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 21
  %86 = bitcast %union.anon.9* %85 to %struct.tftperror*
  %87 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %86, i32 0, i32 2
  %88 = getelementptr inbounds [508 x i8], [508 x i8]* %87, i32 0, i32 0
  %89 = call i8* @strcpy(i8* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0)) #2
  %90 = load %struct.request*, %struct.request** %3, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 3
  %92 = load i8, i8* %91, align 2
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %93
  %95 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.request*, %struct.request** %3, align 8
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 21
  %99 = bitcast %union.anon.9* %98 to %struct.tftperror*
  %100 = bitcast %struct.tftperror* %99 to i8*
  %101 = load %struct.request*, %struct.request** %3, align 8
  %102 = getelementptr inbounds %struct.request, %struct.request* %101, i32 0, i32 21
  %103 = bitcast %union.anon.9* %102 to %struct.tftperror*
  %104 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %103, i32 0, i32 2
  %105 = getelementptr inbounds [508 x i8], [508 x i8]* %104, i32 0, i32 0
  %106 = call i64 @strlen(i8* %105) #16
  %107 = add i64 %106, 5
  %108 = load %struct.request*, %struct.request** %3, align 8
  %109 = getelementptr inbounds %struct.request, %struct.request* %108, i32 0, i32 18
  %110 = bitcast %struct.sockaddr_in* %109 to %struct.sockaddr*
  %111 = load %struct.request*, %struct.request** %3, align 8
  %112 = getelementptr inbounds %struct.request, %struct.request* %111, i32 0, i32 19
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @sendto(i32 %96, i8* %100, i64 %107, i32 0, %struct.sockaddr* %110, i32 %113)
  %115 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %115, i8 zeroext 1)
  %116 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %116)
  store i32 1, i32* %2, align 4
  br label %141

117:                                              ; preds = %69, %51
  %118 = load %struct.request*, %struct.request** %3, align 8
  %119 = getelementptr inbounds %struct.request, %struct.request* %118, i32 0, i32 15
  %120 = load i32, i32* %119, align 4
  %121 = trunc i32 %120 to i16
  %122 = zext i16 %121 to i32
  %123 = load %struct.request*, %struct.request** %3, align 8
  %124 = getelementptr inbounds %struct.request, %struct.request* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, 4
  %127 = icmp ult i32 %122, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %117
  %129 = load %struct.request*, %struct.request** %3, align 8
  %130 = getelementptr inbounds %struct.request, %struct.request* %129, i32 0, i32 0
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %130, i32 0, i32 0
  %132 = load %struct.request*, %struct.request** %3, align 8
  %133 = getelementptr inbounds %struct.request, %struct.request* %132, i32 0, i32 5
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %133, i32 0, i32 0
  %135 = load %struct.request*, %struct.request** %3, align 8
  %136 = getelementptr inbounds %struct.request, %struct.request* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0), i8* %131, i8* %134, i32 %137) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 2)
  %139 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %139)
  br label %140

140:                                              ; preds = %128, %117
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %73, %40
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: noinline optnone uwtable
define void @_Z7logMessP7requesth(%struct.request* %0, i8 zeroext %1) #8 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca [512 x i8], align 16
  store %struct.request* %0, %struct.request** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load i8, i8* @verbatim, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %76

10:                                               ; preds = %2
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 21
  %13 = bitcast %union.anon.9* %12 to %struct.tftperror*
  %14 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %13, i32 0, i32 2
  %15 = getelementptr inbounds [508 x i8], [508 x i8]* %14, i64 0, i64 0
  %16 = load i8, i8* %15, align 4
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %10
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 21
  %21 = bitcast %union.anon.9* %20 to %struct.tftperror*
  %22 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %21, i32 0, i32 2
  %23 = getelementptr inbounds [508 x i8], [508 x i8]* %22, i32 0, i32 0
  %24 = call i32* @__errno_location() #18
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @strerror(i32 %25) #2
  %27 = call i32 (i8*, ...) @printf(i8* %23, i8* %26)
  br label %28

28:                                               ; preds = %18, %10
  %29 = load %struct.request*, %struct.request** %3, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 5
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %32 = load i8, i8* %31, align 8
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.request*, %struct.request** %3, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 18
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %39)
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 18
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 2
  %45 = call zeroext i16 @ntohs(i16 zeroext %44) #18
  %46 = zext i16 %45 to i32
  %47 = load %struct.request*, %struct.request** %3, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 5
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %48, i32 0, i32 0
  %50 = load %struct.request*, %struct.request** %3, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 21
  %52 = bitcast %union.anon.9* %51 to %struct.tftperror*
  %53 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %52, i32 0, i32 2
  %54 = getelementptr inbounds [508 x i8], [508 x i8]* %53, i32 0, i32 0
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i8* %40, i32 %46, i8* %49, i8* %54)
  br label %75

56:                                               ; preds = %28
  %57 = load %struct.request*, %struct.request** %3, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 18
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %61)
  %63 = load %struct.request*, %struct.request** %3, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 18
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 1
  %66 = load i16, i16* %65, align 2
  %67 = call zeroext i16 @ntohs(i16 zeroext %66) #18
  %68 = zext i16 %67 to i32
  %69 = load %struct.request*, %struct.request** %3, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 21
  %71 = bitcast %union.anon.9* %70 to %struct.tftperror*
  %72 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %71, i32 0, i32 2
  %73 = getelementptr inbounds [508 x i8], [508 x i8]* %72, i32 0, i32 0
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), i8* %62, i32 %68, i8* %73)
  br label %75

75:                                               ; preds = %56, %34
  br label %244

76:                                               ; preds = %2
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %78 = icmp ne %struct._IO_FILE* %77, null
  br i1 %78, label %79, label %167

79:                                               ; preds = %76
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %83 = zext i8 %82 to i32
  %84 = icmp sle i32 %81, %83
  br i1 %84, label %85, label %167

85:                                               ; preds = %79
  %86 = call i64 @time(i64* null) #2
  store i64 %86, i64* %5, align 8
  %87 = call %struct.tm* @localtime(i64* %5) #2
  store %struct.tm* %87, %struct.tm** %6, align 8
  %88 = load %struct.tm*, %struct.tm** %6, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load i16, i16* @loggingDay, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %85
  %95 = load %struct.tm*, %struct.tm** %6, align 8
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* @loggingDay, align 2
  %99 = load %struct.tm*, %struct.tm** %6, align 8
  %100 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), %struct.tm* %99) #2
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0))
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %104 = call i32 @fclose(%struct._IO_FILE* %103)
  %105 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  store %struct._IO_FILE* %105, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %107 = icmp ne %struct._IO_FILE* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %94
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @sVersion, i32 0, i32 0))
  br label %112

111:                                              ; preds = %94
  br label %244

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %85
  %114 = load %struct.tm*, %struct.tm** %6, align 8
  %115 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), %struct.tm* %114) #2
  %116 = load %struct.request*, %struct.request** %3, align 8
  %117 = getelementptr inbounds %struct.request, %struct.request* %116, i32 0, i32 5
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %117, i64 0, i64 0
  %119 = load i8, i8* %118, align 8
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %113
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %123 = load %struct.request*, %struct.request** %3, align 8
  %124 = getelementptr inbounds %struct.request, %struct.request* %123, i32 0, i32 18
  %125 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %127)
  %129 = load %struct.request*, %struct.request** %3, align 8
  %130 = getelementptr inbounds %struct.request, %struct.request* %129, i32 0, i32 18
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %130, i32 0, i32 1
  %132 = load i16, i16* %131, align 2
  %133 = call zeroext i16 @ntohs(i16 zeroext %132) #18
  %134 = zext i16 %133 to i32
  %135 = load %struct.request*, %struct.request** %3, align 8
  %136 = getelementptr inbounds %struct.request, %struct.request* %135, i32 0, i32 5
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %136, i32 0, i32 0
  %138 = load %struct.request*, %struct.request** %3, align 8
  %139 = getelementptr inbounds %struct.request, %struct.request* %138, i32 0, i32 21
  %140 = bitcast %union.anon.9* %139 to %struct.tftperror*
  %141 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %140, i32 0, i32 2
  %142 = getelementptr inbounds [508 x i8], [508 x i8]* %141, i32 0, i32 0
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* %128, i32 %134, i8* %137, i8* %142)
  br label %164

144:                                              ; preds = %113
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %146 = load %struct.request*, %struct.request** %3, align 8
  %147 = getelementptr inbounds %struct.request, %struct.request* %146, i32 0, i32 18
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %150)
  %152 = load %struct.request*, %struct.request** %3, align 8
  %153 = getelementptr inbounds %struct.request, %struct.request* %152, i32 0, i32 18
  %154 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %153, i32 0, i32 1
  %155 = load i16, i16* %154, align 2
  %156 = call zeroext i16 @ntohs(i16 zeroext %155) #18
  %157 = zext i16 %156 to i32
  %158 = load %struct.request*, %struct.request** %3, align 8
  %159 = getelementptr inbounds %struct.request, %struct.request* %158, i32 0, i32 21
  %160 = bitcast %union.anon.9* %159 to %struct.tftperror*
  %161 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %160, i32 0, i32 2
  %162 = getelementptr inbounds [508 x i8], [508 x i8]* %161, i32 0, i32 0
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* %151, i32 %157, i8* %162)
  br label %164

164:                                              ; preds = %144, %121
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %166 = call i32 @fflush(%struct._IO_FILE* %165)
  br label %243

167:                                              ; preds = %79, %76
  %168 = load i8, i8* %4, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %171 = zext i8 %170 to i32
  %172 = icmp sle i32 %169, %171
  br i1 %172, label %173, label %242

173:                                              ; preds = %167
  %174 = load %struct.request*, %struct.request** %3, align 8
  %175 = getelementptr inbounds %struct.request, %struct.request* %174, i32 0, i32 21
  %176 = bitcast %union.anon.9* %175 to %struct.tftperror*
  %177 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %176, i32 0, i32 2
  %178 = getelementptr inbounds [508 x i8], [508 x i8]* %177, i64 0, i64 0
  %179 = load i8, i8* %178, align 4
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %173
  %182 = load %struct.request*, %struct.request** %3, align 8
  %183 = getelementptr inbounds %struct.request, %struct.request* %182, i32 0, i32 21
  %184 = bitcast %union.anon.9* %183 to %struct.tftperror*
  %185 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %184, i32 0, i32 2
  %186 = getelementptr inbounds [508 x i8], [508 x i8]* %185, i32 0, i32 0
  %187 = call i32* @__errno_location() #18
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @strerror(i32 %188) #2
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* %189) #2
  br label %191

191:                                              ; preds = %181, %173
  %192 = load %struct.request*, %struct.request** %3, align 8
  %193 = getelementptr inbounds %struct.request, %struct.request* %192, i32 0, i32 5
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %193, i64 0, i64 0
  %195 = load i8, i8* %194, align 8
  %196 = icmp ne i8 %195, 0
  br i1 %196, label %197, label %220

197:                                              ; preds = %191
  %198 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %199 = load %struct.request*, %struct.request** %3, align 8
  %200 = getelementptr inbounds %struct.request, %struct.request* %199, i32 0, i32 18
  %201 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %203)
  %205 = load %struct.request*, %struct.request** %3, align 8
  %206 = getelementptr inbounds %struct.request, %struct.request* %205, i32 0, i32 18
  %207 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %206, i32 0, i32 1
  %208 = load i16, i16* %207, align 2
  %209 = call zeroext i16 @ntohs(i16 zeroext %208) #18
  %210 = zext i16 %209 to i32
  %211 = load %struct.request*, %struct.request** %3, align 8
  %212 = getelementptr inbounds %struct.request, %struct.request* %211, i32 0, i32 5
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* %212, i32 0, i32 0
  %214 = load %struct.request*, %struct.request** %3, align 8
  %215 = getelementptr inbounds %struct.request, %struct.request* %214, i32 0, i32 21
  %216 = bitcast %union.anon.9* %215 to %struct.tftperror*
  %217 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %216, i32 0, i32 2
  %218 = getelementptr inbounds [508 x i8], [508 x i8]* %217, i32 0, i32 0
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i8* %204, i32 %210, i8* %213, i8* %218) #2
  br label %240

220:                                              ; preds = %191
  %221 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %222 = load %struct.request*, %struct.request** %3, align 8
  %223 = getelementptr inbounds %struct.request, %struct.request* %222, i32 0, i32 18
  %224 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %226)
  %228 = load %struct.request*, %struct.request** %3, align 8
  %229 = getelementptr inbounds %struct.request, %struct.request* %228, i32 0, i32 18
  %230 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %229, i32 0, i32 1
  %231 = load i16, i16* %230, align 2
  %232 = call zeroext i16 @ntohs(i16 zeroext %231) #18
  %233 = zext i16 %232 to i32
  %234 = load %struct.request*, %struct.request** %3, align 8
  %235 = getelementptr inbounds %struct.request, %struct.request* %234, i32 0, i32 21
  %236 = bitcast %union.anon.9* %235 to %struct.tftperror*
  %237 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %236, i32 0, i32 2
  %238 = getelementptr inbounds [508 x i8], [508 x i8]* %237, i32 0, i32 0
  %239 = call i32 (i8*, i8*, ...) @sprintf(i8* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), i8* %227, i32 %233, i8* %238) #2
  br label %240

240:                                              ; preds = %220, %197
  %241 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  call void (i32, i8*, ...) @syslog(i32 138, i8* %241)
  br label %242

242:                                              ; preds = %240, %167
  br label %243

243:                                              ; preds = %242, %164
  br label %244

244:                                              ; preds = %243, %111, %75
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @_Z8cleanReqP7request(%struct.request* %0) #8 {
  %2 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %3 = load %struct.request*, %struct.request** %2, align 8
  %4 = getelementptr inbounds %struct.request, %struct.request* %3, i32 0, i32 6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.request*, %struct.request** %2, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 @fclose(%struct._IO_FILE* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 20
  %15 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %14, i64 0, i64 0
  %16 = load %struct.packet*, %struct.packet** %15, align 8
  %17 = icmp ne %struct.packet* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 20
  %21 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %20, i64 0, i64 0
  %22 = load %struct.packet*, %struct.packet** %21, align 8
  %23 = bitcast %struct.packet* %22 to i8*
  call void @free(i8* %23) #2
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.request*, %struct.request** %2, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 20
  %27 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %26, i64 0, i64 1
  %28 = load %struct.packet*, %struct.packet** %27, align 8
  %29 = icmp ne %struct.packet* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.request*, %struct.request** %2, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 20
  %33 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %32, i64 0, i64 1
  %34 = load %struct.packet*, %struct.packet** %33, align 8
  %35 = bitcast %struct.packet* %34 to i8*
  call void @free(i8* %35) #2
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.request*, %struct.request** %2, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 6
  store %struct._IO_FILE* null, %struct._IO_FILE** %38, align 8
  %39 = load %struct.request*, %struct.request** %2, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 20
  %41 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %40, i64 0, i64 0
  store %struct.packet* null, %struct.packet** %41, align 8
  %42 = load %struct.request*, %struct.request** %2, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 20
  %44 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %43, i64 0, i64 1
  store %struct.packet* null, %struct.packet** %44, align 8
  %45 = load %struct.request*, %struct.request** %2, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 2
  store i8 -1, i8* %46, align 1
  ret void
}

; Function Attrs: noinline optnone uwtable
define i32 @_Z11processSendP7request(%struct.request* %0) #8 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %4 = call i32* @__errno_location() #18
  store i32 0, i32* %4, align 4
  %5 = call i64 @time(i64* null) #2
  %6 = load %struct.request*, %struct.request** %3, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 8
  %9 = zext i32 %8 to i64
  %10 = add nsw i64 %5, %9
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 4
  store i64 %10, i64* %12, align 8
  %13 = load %struct.request*, %struct.request** %3, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 20
  %15 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %14, i64 0, i64 0
  %16 = load %struct.packet*, %struct.packet** %15, align 8
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 2
  %19 = call zeroext i16 @ntohs(i16 zeroext %18) #18
  %20 = zext i16 %19 to i32
  %21 = load %struct.request*, %struct.request** %3, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 13
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %205

26:                                               ; preds = %1
  %27 = call i32* @__errno_location() #18
  store i32 0, i32* %27, align 4
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 2
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %31
  %33 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.request*, %struct.request** %3, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 20
  %37 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %36, i64 0, i64 0
  %38 = load %struct.packet*, %struct.packet** %37, align 8
  %39 = bitcast %struct.packet* %38 to i8*
  %40 = load %struct.request*, %struct.request** %3, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 16
  %42 = getelementptr inbounds [2 x i16], [2 x i16]* %41, i64 0, i64 0
  %43 = load i16, i16* %42, align 8
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.request*, %struct.request** %3, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 18
  %49 = bitcast %struct.sockaddr_in* %48 to %struct.sockaddr*
  %50 = load %struct.request*, %struct.request** %3, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 19
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @sendto(i32 %34, i8* %39, i64 %46, i32 0, %struct.sockaddr* %49, i32 %52)
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 21
  %56 = bitcast %union.anon.9* %55 to %struct.acknowledgement*
  %57 = bitcast %struct.acknowledgement* %56 to i8*
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 20
  %60 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %59, i64 0, i64 0
  %61 = load %struct.packet*, %struct.packet** %60, align 8
  %62 = bitcast %struct.packet* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %57, i8* align 2 %62, i64 4, i1 false)
  %63 = call i32* @__errno_location() #18
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %26
  %67 = load %struct.request*, %struct.request** %3, align 8
  %68 = getelementptr inbounds %struct.request, %struct.request* %67, i32 0, i32 21
  %69 = bitcast %union.anon.9* %68 to %struct.tftperror*
  %70 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %69, i32 0, i32 2
  %71 = getelementptr inbounds [508 x i8], [508 x i8]* %70, i32 0, i32 0
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0)) #2
  %73 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %73, i8 zeroext 1)
  %74 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %74)
  %75 = call i32* @__errno_location() #18
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %2, align 4
  br label %412

77:                                               ; preds = %26
  %78 = load %struct.request*, %struct.request** %3, align 8
  %79 = getelementptr inbounds %struct.request, %struct.request* %78, i32 0, i32 6
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %79, align 8
  %81 = icmp ne %struct._IO_FILE* %80, null
  br i1 %81, label %82, label %204

82:                                               ; preds = %77
  %83 = load %struct.request*, %struct.request** %3, align 8
  %84 = getelementptr inbounds %struct.request, %struct.request* %83, i32 0, i32 20
  %85 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %84, i64 0, i64 1
  %86 = load %struct.packet*, %struct.packet** %85, align 8
  %87 = getelementptr inbounds %struct.packet, %struct.packet* %86, i32 0, i32 1
  %88 = load i16, i16* %87, align 2
  %89 = call zeroext i16 @ntohs(i16 zeroext %88) #18
  %90 = zext i16 %89 to i32
  %91 = add nsw i32 %90, 1
  %92 = trunc i32 %91 to i16
  %93 = load %struct.request*, %struct.request** %3, align 8
  %94 = getelementptr inbounds %struct.request, %struct.request* %93, i32 0, i32 14
  store i16 %92, i16* %94, align 2
  %95 = load %struct.request*, %struct.request** %3, align 8
  %96 = getelementptr inbounds %struct.request, %struct.request* %95, i32 0, i32 14
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = load %struct.request*, %struct.request** %3, align 8
  %100 = getelementptr inbounds %struct.request, %struct.request* %99, i32 0, i32 13
  %101 = load i16, i16* %100, align 8
  %102 = zext i16 %101 to i32
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %203

104:                                              ; preds = %82
  %105 = load %struct.request*, %struct.request** %3, align 8
  %106 = getelementptr inbounds %struct.request, %struct.request* %105, i32 0, i32 14
  %107 = load i16, i16* %106, align 2
  %108 = add i16 %107, 1
  store i16 %108, i16* %106, align 2
  %109 = call zeroext i16 @htons(i16 zeroext %108) #18
  %110 = load %struct.request*, %struct.request** %3, align 8
  %111 = getelementptr inbounds %struct.request, %struct.request* %110, i32 0, i32 20
  %112 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %111, i64 0, i64 1
  %113 = load %struct.packet*, %struct.packet** %112, align 8
  %114 = getelementptr inbounds %struct.packet, %struct.packet* %113, i32 0, i32 1
  store i16 %109, i16* %114, align 2
  %115 = load %struct.request*, %struct.request** %3, align 8
  %116 = getelementptr inbounds %struct.request, %struct.request* %115, i32 0, i32 20
  %117 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %116, i64 0, i64 1
  %118 = load %struct.packet*, %struct.packet** %117, align 8
  %119 = getelementptr inbounds %struct.packet, %struct.packet* %118, i32 0, i32 2
  %120 = load %struct.request*, %struct.request** %3, align 8
  %121 = getelementptr inbounds %struct.request, %struct.request* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  %124 = load %struct.request*, %struct.request** %3, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 6
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %125, align 8
  %127 = call i64 @fread(i8* %119, i64 1, i64 %123, %struct._IO_FILE* %126)
  %128 = trunc i64 %127 to i16
  %129 = load %struct.request*, %struct.request** %3, align 8
  %130 = getelementptr inbounds %struct.request, %struct.request* %129, i32 0, i32 16
  %131 = getelementptr inbounds [2 x i16], [2 x i16]* %130, i64 0, i64 1
  store i16 %128, i16* %131, align 2
  %132 = call i32* @__errno_location() #18
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %184

135:                                              ; preds = %104
  %136 = call zeroext i16 @htons(i16 zeroext 5) #18
  %137 = load %struct.request*, %struct.request** %3, align 8
  %138 = getelementptr inbounds %struct.request, %struct.request* %137, i32 0, i32 21
  %139 = bitcast %union.anon.9* %138 to %struct.tftperror*
  %140 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %139, i32 0, i32 0
  store i16 %136, i16* %140, align 8
  %141 = call zeroext i16 @htons(i16 zeroext 4) #18
  %142 = load %struct.request*, %struct.request** %3, align 8
  %143 = getelementptr inbounds %struct.request, %struct.request* %142, i32 0, i32 21
  %144 = bitcast %union.anon.9* %143 to %struct.tftperror*
  %145 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %144, i32 0, i32 1
  store i16 %141, i16* %145, align 2
  %146 = load %struct.request*, %struct.request** %3, align 8
  %147 = getelementptr inbounds %struct.request, %struct.request* %146, i32 0, i32 21
  %148 = bitcast %union.anon.9* %147 to %struct.tftperror*
  %149 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %148, i32 0, i32 2
  %150 = getelementptr inbounds [508 x i8], [508 x i8]* %149, i32 0, i32 0
  %151 = call i32* @__errno_location() #18
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @strerror(i32 %152) #2
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* %150, i8* %153) #2
  %155 = load %struct.request*, %struct.request** %3, align 8
  %156 = getelementptr inbounds %struct.request, %struct.request* %155, i32 0, i32 3
  %157 = load i8, i8* %156, align 2
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %158
  %160 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.request*, %struct.request** %3, align 8
  %163 = getelementptr inbounds %struct.request, %struct.request* %162, i32 0, i32 21
  %164 = bitcast %union.anon.9* %163 to %struct.tftperror*
  %165 = bitcast %struct.tftperror* %164 to i8*
  %166 = load %struct.request*, %struct.request** %3, align 8
  %167 = getelementptr inbounds %struct.request, %struct.request* %166, i32 0, i32 21
  %168 = bitcast %union.anon.9* %167 to %struct.tftperror*
  %169 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %168, i32 0, i32 2
  %170 = getelementptr inbounds [508 x i8], [508 x i8]* %169, i32 0, i32 0
  %171 = call i64 @strlen(i8* %170) #16
  %172 = add i64 %171, 5
  %173 = load %struct.request*, %struct.request** %3, align 8
  %174 = getelementptr inbounds %struct.request, %struct.request* %173, i32 0, i32 18
  %175 = bitcast %struct.sockaddr_in* %174 to %struct.sockaddr*
  %176 = load %struct.request*, %struct.request** %3, align 8
  %177 = getelementptr inbounds %struct.request, %struct.request* %176, i32 0, i32 19
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @sendto(i32 %161, i8* %165, i64 %172, i32 0, %struct.sockaddr* %175, i32 %178)
  %180 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %180, i8 zeroext 1)
  %181 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %181)
  %182 = call i32* @__errno_location() #18
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %2, align 4
  br label %412

184:                                              ; preds = %104
  %185 = load %struct.request*, %struct.request** %3, align 8
  %186 = getelementptr inbounds %struct.request, %struct.request* %185, i32 0, i32 16
  %187 = getelementptr inbounds [2 x i16], [2 x i16]* %186, i64 0, i64 1
  %188 = load i16, i16* %187, align 2
  %189 = zext i16 %188 to i32
  %190 = load %struct.request*, %struct.request** %3, align 8
  %191 = getelementptr inbounds %struct.request, %struct.request* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 4
  %193 = icmp ult i32 %189, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %184
  %195 = load %struct.request*, %struct.request** %3, align 8
  %196 = getelementptr inbounds %struct.request, %struct.request* %195, i32 0, i32 6
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %196, align 8
  %198 = call i32 @fclose(%struct._IO_FILE* %197)
  %199 = load %struct.request*, %struct.request** %3, align 8
  %200 = getelementptr inbounds %struct.request, %struct.request* %199, i32 0, i32 6
  store %struct._IO_FILE* null, %struct._IO_FILE** %200, align 8
  br label %201

201:                                              ; preds = %194, %184
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202, %82
  br label %204

204:                                              ; preds = %203, %77
  br label %411

205:                                              ; preds = %1
  %206 = load %struct.request*, %struct.request** %3, align 8
  %207 = getelementptr inbounds %struct.request, %struct.request* %206, i32 0, i32 20
  %208 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %207, i64 0, i64 1
  %209 = load %struct.packet*, %struct.packet** %208, align 8
  %210 = getelementptr inbounds %struct.packet, %struct.packet* %209, i32 0, i32 1
  %211 = load i16, i16* %210, align 2
  %212 = call zeroext i16 @ntohs(i16 zeroext %211) #18
  %213 = zext i16 %212 to i32
  %214 = load %struct.request*, %struct.request** %3, align 8
  %215 = getelementptr inbounds %struct.request, %struct.request* %214, i32 0, i32 13
  %216 = load i16, i16* %215, align 8
  %217 = zext i16 %216 to i32
  %218 = icmp eq i32 %213, %217
  br i1 %218, label %219, label %398

219:                                              ; preds = %205
  %220 = call i32* @__errno_location() #18
  store i32 0, i32* %220, align 4
  %221 = load %struct.request*, %struct.request** %3, align 8
  %222 = getelementptr inbounds %struct.request, %struct.request* %221, i32 0, i32 3
  %223 = load i8, i8* %222, align 2
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %224
  %226 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.request*, %struct.request** %3, align 8
  %229 = getelementptr inbounds %struct.request, %struct.request* %228, i32 0, i32 20
  %230 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %229, i64 0, i64 1
  %231 = load %struct.packet*, %struct.packet** %230, align 8
  %232 = bitcast %struct.packet* %231 to i8*
  %233 = load %struct.request*, %struct.request** %3, align 8
  %234 = getelementptr inbounds %struct.request, %struct.request* %233, i32 0, i32 16
  %235 = getelementptr inbounds [2 x i16], [2 x i16]* %234, i64 0, i64 1
  %236 = load i16, i16* %235, align 2
  %237 = zext i16 %236 to i32
  %238 = add nsw i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = load %struct.request*, %struct.request** %3, align 8
  %241 = getelementptr inbounds %struct.request, %struct.request* %240, i32 0, i32 18
  %242 = bitcast %struct.sockaddr_in* %241 to %struct.sockaddr*
  %243 = load %struct.request*, %struct.request** %3, align 8
  %244 = getelementptr inbounds %struct.request, %struct.request* %243, i32 0, i32 19
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @sendto(i32 %227, i8* %232, i64 %239, i32 0, %struct.sockaddr* %242, i32 %245)
  %247 = load %struct.request*, %struct.request** %3, align 8
  %248 = getelementptr inbounds %struct.request, %struct.request* %247, i32 0, i32 21
  %249 = bitcast %union.anon.9* %248 to %struct.acknowledgement*
  %250 = bitcast %struct.acknowledgement* %249 to i8*
  %251 = load %struct.request*, %struct.request** %3, align 8
  %252 = getelementptr inbounds %struct.request, %struct.request* %251, i32 0, i32 20
  %253 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %252, i64 0, i64 1
  %254 = load %struct.packet*, %struct.packet** %253, align 8
  %255 = bitcast %struct.packet* %254 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %250, i8* align 2 %255, i64 4, i1 false)
  %256 = call i32* @__errno_location() #18
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %219
  %260 = load %struct.request*, %struct.request** %3, align 8
  %261 = getelementptr inbounds %struct.request, %struct.request* %260, i32 0, i32 21
  %262 = bitcast %union.anon.9* %261 to %struct.tftperror*
  %263 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %262, i32 0, i32 2
  %264 = getelementptr inbounds [508 x i8], [508 x i8]* %263, i32 0, i32 0
  %265 = call i32 (i8*, i8*, ...) @sprintf(i8* %264, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0)) #2
  %266 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %266, i8 zeroext 1)
  %267 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %267)
  %268 = call i32* @__errno_location() #18
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %2, align 4
  br label %412

270:                                              ; preds = %219
  %271 = load %struct.request*, %struct.request** %3, align 8
  %272 = getelementptr inbounds %struct.request, %struct.request* %271, i32 0, i32 6
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %272, align 8
  %274 = icmp ne %struct._IO_FILE* %273, null
  br i1 %274, label %275, label %397

275:                                              ; preds = %270
  %276 = load %struct.request*, %struct.request** %3, align 8
  %277 = getelementptr inbounds %struct.request, %struct.request* %276, i32 0, i32 20
  %278 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %277, i64 0, i64 0
  %279 = load %struct.packet*, %struct.packet** %278, align 8
  %280 = getelementptr inbounds %struct.packet, %struct.packet* %279, i32 0, i32 1
  %281 = load i16, i16* %280, align 2
  %282 = call zeroext i16 @ntohs(i16 zeroext %281) #18
  %283 = zext i16 %282 to i32
  %284 = add nsw i32 %283, 1
  %285 = trunc i32 %284 to i16
  %286 = load %struct.request*, %struct.request** %3, align 8
  %287 = getelementptr inbounds %struct.request, %struct.request* %286, i32 0, i32 14
  store i16 %285, i16* %287, align 2
  %288 = load %struct.request*, %struct.request** %3, align 8
  %289 = getelementptr inbounds %struct.request, %struct.request* %288, i32 0, i32 14
  %290 = load i16, i16* %289, align 2
  %291 = zext i16 %290 to i32
  %292 = load %struct.request*, %struct.request** %3, align 8
  %293 = getelementptr inbounds %struct.request, %struct.request* %292, i32 0, i32 13
  %294 = load i16, i16* %293, align 8
  %295 = zext i16 %294 to i32
  %296 = icmp eq i32 %291, %295
  br i1 %296, label %297, label %396

297:                                              ; preds = %275
  %298 = load %struct.request*, %struct.request** %3, align 8
  %299 = getelementptr inbounds %struct.request, %struct.request* %298, i32 0, i32 14
  %300 = load i16, i16* %299, align 2
  %301 = add i16 %300, 1
  store i16 %301, i16* %299, align 2
  %302 = call zeroext i16 @htons(i16 zeroext %301) #18
  %303 = load %struct.request*, %struct.request** %3, align 8
  %304 = getelementptr inbounds %struct.request, %struct.request* %303, i32 0, i32 20
  %305 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %304, i64 0, i64 0
  %306 = load %struct.packet*, %struct.packet** %305, align 8
  %307 = getelementptr inbounds %struct.packet, %struct.packet* %306, i32 0, i32 1
  store i16 %302, i16* %307, align 2
  %308 = load %struct.request*, %struct.request** %3, align 8
  %309 = getelementptr inbounds %struct.request, %struct.request* %308, i32 0, i32 20
  %310 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %309, i64 0, i64 0
  %311 = load %struct.packet*, %struct.packet** %310, align 8
  %312 = getelementptr inbounds %struct.packet, %struct.packet* %311, i32 0, i32 2
  %313 = load %struct.request*, %struct.request** %3, align 8
  %314 = getelementptr inbounds %struct.request, %struct.request* %313, i32 0, i32 10
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  %317 = load %struct.request*, %struct.request** %3, align 8
  %318 = getelementptr inbounds %struct.request, %struct.request* %317, i32 0, i32 6
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %318, align 8
  %320 = call i64 @fread(i8* %312, i64 1, i64 %316, %struct._IO_FILE* %319)
  %321 = trunc i64 %320 to i16
  %322 = load %struct.request*, %struct.request** %3, align 8
  %323 = getelementptr inbounds %struct.request, %struct.request* %322, i32 0, i32 16
  %324 = getelementptr inbounds [2 x i16], [2 x i16]* %323, i64 0, i64 0
  store i16 %321, i16* %324, align 8
  %325 = call i32* @__errno_location() #18
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %377

328:                                              ; preds = %297
  %329 = call zeroext i16 @htons(i16 zeroext 5) #18
  %330 = load %struct.request*, %struct.request** %3, align 8
  %331 = getelementptr inbounds %struct.request, %struct.request* %330, i32 0, i32 21
  %332 = bitcast %union.anon.9* %331 to %struct.tftperror*
  %333 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %332, i32 0, i32 0
  store i16 %329, i16* %333, align 8
  %334 = call zeroext i16 @htons(i16 zeroext 4) #18
  %335 = load %struct.request*, %struct.request** %3, align 8
  %336 = getelementptr inbounds %struct.request, %struct.request* %335, i32 0, i32 21
  %337 = bitcast %union.anon.9* %336 to %struct.tftperror*
  %338 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %337, i32 0, i32 1
  store i16 %334, i16* %338, align 2
  %339 = load %struct.request*, %struct.request** %3, align 8
  %340 = getelementptr inbounds %struct.request, %struct.request* %339, i32 0, i32 21
  %341 = bitcast %union.anon.9* %340 to %struct.tftperror*
  %342 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %341, i32 0, i32 2
  %343 = getelementptr inbounds [508 x i8], [508 x i8]* %342, i32 0, i32 0
  %344 = call i32* @__errno_location() #18
  %345 = load i32, i32* %344, align 4
  %346 = call i8* @strerror(i32 %345) #2
  %347 = call i32 (i8*, i8*, ...) @sprintf(i8* %343, i8* %346) #2
  %348 = load %struct.request*, %struct.request** %3, align 8
  %349 = getelementptr inbounds %struct.request, %struct.request* %348, i32 0, i32 3
  %350 = load i8, i8* %349, align 2
  %351 = zext i8 %350 to i64
  %352 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %351
  %353 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.request*, %struct.request** %3, align 8
  %356 = getelementptr inbounds %struct.request, %struct.request* %355, i32 0, i32 21
  %357 = bitcast %union.anon.9* %356 to %struct.tftperror*
  %358 = bitcast %struct.tftperror* %357 to i8*
  %359 = load %struct.request*, %struct.request** %3, align 8
  %360 = getelementptr inbounds %struct.request, %struct.request* %359, i32 0, i32 21
  %361 = bitcast %union.anon.9* %360 to %struct.tftperror*
  %362 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %361, i32 0, i32 2
  %363 = getelementptr inbounds [508 x i8], [508 x i8]* %362, i32 0, i32 0
  %364 = call i64 @strlen(i8* %363) #16
  %365 = add i64 %364, 5
  %366 = load %struct.request*, %struct.request** %3, align 8
  %367 = getelementptr inbounds %struct.request, %struct.request* %366, i32 0, i32 18
  %368 = bitcast %struct.sockaddr_in* %367 to %struct.sockaddr*
  %369 = load %struct.request*, %struct.request** %3, align 8
  %370 = getelementptr inbounds %struct.request, %struct.request* %369, i32 0, i32 19
  %371 = load i32, i32* %370, align 8
  %372 = call i64 @sendto(i32 %354, i8* %358, i64 %365, i32 0, %struct.sockaddr* %368, i32 %371)
  %373 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %373, i8 zeroext 1)
  %374 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %374)
  %375 = call i32* @__errno_location() #18
  %376 = load i32, i32* %375, align 4
  store i32 %376, i32* %2, align 4
  br label %412

377:                                              ; preds = %297
  %378 = load %struct.request*, %struct.request** %3, align 8
  %379 = getelementptr inbounds %struct.request, %struct.request* %378, i32 0, i32 16
  %380 = getelementptr inbounds [2 x i16], [2 x i16]* %379, i64 0, i64 0
  %381 = load i16, i16* %380, align 8
  %382 = zext i16 %381 to i32
  %383 = load %struct.request*, %struct.request** %3, align 8
  %384 = getelementptr inbounds %struct.request, %struct.request* %383, i32 0, i32 10
  %385 = load i32, i32* %384, align 4
  %386 = icmp ult i32 %382, %385
  br i1 %386, label %387, label %394

387:                                              ; preds = %377
  %388 = load %struct.request*, %struct.request** %3, align 8
  %389 = getelementptr inbounds %struct.request, %struct.request* %388, i32 0, i32 6
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** %389, align 8
  %391 = call i32 @fclose(%struct._IO_FILE* %390)
  %392 = load %struct.request*, %struct.request** %3, align 8
  %393 = getelementptr inbounds %struct.request, %struct.request* %392, i32 0, i32 6
  store %struct._IO_FILE* null, %struct._IO_FILE** %393, align 8
  br label %394

394:                                              ; preds = %387, %377
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395, %275
  br label %397

397:                                              ; preds = %396, %270
  br label %410

398:                                              ; preds = %205
  %399 = load %struct.request*, %struct.request** %3, align 8
  %400 = getelementptr inbounds %struct.request, %struct.request* %399, i32 0, i32 0
  %401 = getelementptr inbounds [32 x i8], [32 x i8]* %400, i32 0, i32 0
  %402 = load %struct.request*, %struct.request** %3, align 8
  %403 = getelementptr inbounds %struct.request, %struct.request* %402, i32 0, i32 5
  %404 = getelementptr inbounds [256 x i8], [256 x i8]* %403, i32 0, i32 0
  %405 = load %struct.request*, %struct.request** %3, align 8
  %406 = getelementptr inbounds %struct.request, %struct.request* %405, i32 0, i32 12
  %407 = load i32, i32* %406, align 4
  %408 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0), i8* %401, i8* %404, i32 %407) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 2)
  %409 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %409)
  br label %410

410:                                              ; preds = %398, %397
  br label %411

411:                                              ; preds = %410, %204
  store i32 0, i32* %2, align 4
  br label %412

412:                                              ; preds = %411, %328, %259, %135, %66
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

; Function Attrs: noinline optnone uwtable
define i32 @_Z10processNewP7request(%struct.request* %0) #8 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0, i64 0, i32 0), align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %107

18:                                               ; preds = %1
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 18
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohl(i32 %23) #18
  store i32 %24, i32* %4, align 4
  store i8 0, i8* %5, align 1
  store i16 0, i16* %6, align 2
  br label %25

25:                                               ; preds = %56, %18
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i64
  %28 = icmp ule i64 %27, 256
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %31
  %33 = getelementptr inbounds %struct.data12, %struct.data12* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi i1 [ false, %25 ], [ %35, %29 ]
  br i1 %37, label %38, label %59

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %41
  %43 = getelementptr inbounds %struct.data12, %struct.data12* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp uge i32 %39, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load i16, i16* %6, align 2
  %49 = zext i16 %48 to i64
  %50 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %49
  %51 = getelementptr inbounds %struct.data12, %struct.data12* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ule i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i8 1, i8* %5, align 1
  br label %59

55:                                               ; preds = %46, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i16, i16* %6, align 2
  %58 = add i16 %57, 1
  store i16 %58, i16* %6, align 2
  br label %25

59:                                               ; preds = %54, %36
  %60 = load i8, i8* %5, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %106, label %62

62:                                               ; preds = %59
  %63 = call zeroext i16 @htons(i16 zeroext 5) #18
  %64 = load %struct.request*, %struct.request** %3, align 8
  %65 = getelementptr inbounds %struct.request, %struct.request* %64, i32 0, i32 21
  %66 = bitcast %union.anon.9* %65 to %struct.tftperror*
  %67 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %66, i32 0, i32 0
  store i16 %63, i16* %67, align 8
  %68 = call zeroext i16 @htons(i16 zeroext 2) #18
  %69 = load %struct.request*, %struct.request** %3, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 21
  %71 = bitcast %union.anon.9* %70 to %struct.tftperror*
  %72 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %71, i32 0, i32 1
  store i16 %68, i16* %72, align 2
  %73 = load %struct.request*, %struct.request** %3, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 21
  %75 = bitcast %union.anon.9* %74 to %struct.tftperror*
  %76 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %75, i32 0, i32 2
  %77 = getelementptr inbounds [508 x i8], [508 x i8]* %76, i32 0, i32 0
  %78 = call i8* @strcpy(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0)) #2
  %79 = load %struct.request*, %struct.request** %3, align 8
  %80 = getelementptr inbounds %struct.request, %struct.request* %79, i32 0, i32 3
  %81 = load i8, i8* %80, align 2
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %82
  %84 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.request*, %struct.request** %3, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 21
  %88 = bitcast %union.anon.9* %87 to %struct.tftperror*
  %89 = bitcast %struct.tftperror* %88 to i8*
  %90 = load %struct.request*, %struct.request** %3, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 21
  %92 = bitcast %union.anon.9* %91 to %struct.tftperror*
  %93 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %92, i32 0, i32 2
  %94 = getelementptr inbounds [508 x i8], [508 x i8]* %93, i32 0, i32 0
  %95 = call i64 @strlen(i8* %94) #16
  %96 = add i64 %95, 5
  %97 = load %struct.request*, %struct.request** %3, align 8
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 18
  %99 = bitcast %struct.sockaddr_in* %98 to %struct.sockaddr*
  %100 = load %struct.request*, %struct.request** %3, align 8
  %101 = getelementptr inbounds %struct.request, %struct.request* %100, i32 0, i32 19
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @sendto(i32 %85, i8* %89, i64 %96, i32 0, %struct.sockaddr* %99, i32 %102)
  %104 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %104, i8 zeroext 1)
  %105 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %105)
  store i32 2, i32* %2, align 4
  br label %1824

106:                                              ; preds = %59
  br label %107

107:                                              ; preds = %106, %1
  %108 = load %struct.request*, %struct.request** %3, align 8
  %109 = getelementptr inbounds %struct.request, %struct.request* %108, i32 0, i32 13
  store i16 0, i16* %109, align 8
  %110 = load %struct.request*, %struct.request** %3, align 8
  %111 = getelementptr inbounds %struct.request, %struct.request* %110, i32 0, i32 10
  store i32 512, i32* %111, align 4
  %112 = load i16, i16* @timeout, align 2
  %113 = zext i16 %112 to i32
  %114 = load %struct.request*, %struct.request** %3, align 8
  %115 = getelementptr inbounds %struct.request, %struct.request* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 8
  %116 = call i64 @time(i64* null) #2
  %117 = load %struct.request*, %struct.request** %3, align 8
  %118 = getelementptr inbounds %struct.request, %struct.request* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 8
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = load %struct.request*, %struct.request** %3, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  %124 = load %struct.packet*, %struct.packet** @datain, align 8
  %125 = getelementptr inbounds %struct.packet, %struct.packet* %124, i32 0, i32 0
  %126 = load i16, i16* %125, align 2
  %127 = call zeroext i16 @ntohs(i16 zeroext %126) #18
  %128 = trunc i16 %127 to i8
  %129 = load %struct.request*, %struct.request** %3, align 8
  %130 = getelementptr inbounds %struct.request, %struct.request* %129, i32 0, i32 1
  store i8 %128, i8* %130, align 8
  %131 = load %struct.packet*, %struct.packet** @datain, align 8
  %132 = bitcast %struct.packet* %131 to i8*
  store i8* %132, i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load %struct.request*, %struct.request** %3, align 8
  %135 = getelementptr inbounds %struct.request, %struct.request* %134, i32 0, i32 15
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %133, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  store i8* %141, i8** %7, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load %struct.request*, %struct.request** %3, align 8
  %144 = getelementptr inbounds %struct.request, %struct.request* %143, i32 0, i32 7
  store i8* %142, i8** %144, align 8
  %145 = load %struct.request*, %struct.request** %3, align 8
  %146 = getelementptr inbounds %struct.request, %struct.request* %145, i32 0, i32 7
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strlen(i8* %147) #16
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %107
  %151 = load %struct.request*, %struct.request** %3, align 8
  %152 = getelementptr inbounds %struct.request, %struct.request* %151, i32 0, i32 7
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strlen(i8* %153) #16
  %155 = icmp ugt i64 %154, 255
  br i1 %155, label %156, label %200

156:                                              ; preds = %150, %107
  %157 = call zeroext i16 @htons(i16 zeroext 5) #18
  %158 = load %struct.request*, %struct.request** %3, align 8
  %159 = getelementptr inbounds %struct.request, %struct.request* %158, i32 0, i32 21
  %160 = bitcast %union.anon.9* %159 to %struct.tftperror*
  %161 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %160, i32 0, i32 0
  store i16 %157, i16* %161, align 8
  %162 = call zeroext i16 @htons(i16 zeroext 0) #18
  %163 = load %struct.request*, %struct.request** %3, align 8
  %164 = getelementptr inbounds %struct.request, %struct.request* %163, i32 0, i32 21
  %165 = bitcast %union.anon.9* %164 to %struct.tftperror*
  %166 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %165, i32 0, i32 1
  store i16 %162, i16* %166, align 2
  %167 = load %struct.request*, %struct.request** %3, align 8
  %168 = getelementptr inbounds %struct.request, %struct.request* %167, i32 0, i32 21
  %169 = bitcast %union.anon.9* %168 to %struct.tftperror*
  %170 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %169, i32 0, i32 2
  %171 = getelementptr inbounds [508 x i8], [508 x i8]* %170, i32 0, i32 0
  %172 = call i8* @strcpy(i8* %171, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0)) #2
  %173 = load %struct.request*, %struct.request** %3, align 8
  %174 = getelementptr inbounds %struct.request, %struct.request* %173, i32 0, i32 3
  %175 = load i8, i8* %174, align 2
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %176
  %178 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.request*, %struct.request** %3, align 8
  %181 = getelementptr inbounds %struct.request, %struct.request* %180, i32 0, i32 21
  %182 = bitcast %union.anon.9* %181 to %struct.tftperror*
  %183 = bitcast %struct.tftperror* %182 to i8*
  %184 = load %struct.request*, %struct.request** %3, align 8
  %185 = getelementptr inbounds %struct.request, %struct.request* %184, i32 0, i32 21
  %186 = bitcast %union.anon.9* %185 to %struct.tftperror*
  %187 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %186, i32 0, i32 2
  %188 = getelementptr inbounds [508 x i8], [508 x i8]* %187, i32 0, i32 0
  %189 = call i64 @strlen(i8* %188) #16
  %190 = add i64 %189, 5
  %191 = load %struct.request*, %struct.request** %3, align 8
  %192 = getelementptr inbounds %struct.request, %struct.request* %191, i32 0, i32 18
  %193 = bitcast %struct.sockaddr_in* %192 to %struct.sockaddr*
  %194 = load %struct.request*, %struct.request** %3, align 8
  %195 = getelementptr inbounds %struct.request, %struct.request* %194, i32 0, i32 19
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @sendto(i32 %179, i8* %183, i64 %190, i32 0, %struct.sockaddr* %193, i32 %196)
  %198 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %198, i8 zeroext 1)
  %199 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %199)
  store i32 1, i32* %2, align 4
  br label %1824

200:                                              ; preds = %150
  %201 = load i8*, i8** %7, align 8
  %202 = call i64 @strlen(i8* %201) #16
  %203 = add i64 %202, 1
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 %203
  store i8* %205, i8** %7, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = load %struct.request*, %struct.request** %3, align 8
  %208 = getelementptr inbounds %struct.request, %struct.request* %207, i32 0, i32 8
  store i8* %206, i8** %208, align 8
  %209 = load %struct.request*, %struct.request** %3, align 8
  %210 = getelementptr inbounds %struct.request, %struct.request* %209, i32 0, i32 8
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @strlen(i8* %211) #16
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %200
  %215 = load %struct.request*, %struct.request** %3, align 8
  %216 = getelementptr inbounds %struct.request, %struct.request* %215, i32 0, i32 8
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @strlen(i8* %217) #16
  %219 = icmp ugt i64 %218, 25
  br i1 %219, label %220, label %264

220:                                              ; preds = %214, %200
  %221 = call zeroext i16 @htons(i16 zeroext 5) #18
  %222 = load %struct.request*, %struct.request** %3, align 8
  %223 = getelementptr inbounds %struct.request, %struct.request* %222, i32 0, i32 21
  %224 = bitcast %union.anon.9* %223 to %struct.tftperror*
  %225 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %224, i32 0, i32 0
  store i16 %221, i16* %225, align 8
  %226 = call zeroext i16 @htons(i16 zeroext 0) #18
  %227 = load %struct.request*, %struct.request** %3, align 8
  %228 = getelementptr inbounds %struct.request, %struct.request* %227, i32 0, i32 21
  %229 = bitcast %union.anon.9* %228 to %struct.tftperror*
  %230 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %229, i32 0, i32 1
  store i16 %226, i16* %230, align 2
  %231 = load %struct.request*, %struct.request** %3, align 8
  %232 = getelementptr inbounds %struct.request, %struct.request* %231, i32 0, i32 21
  %233 = bitcast %union.anon.9* %232 to %struct.tftperror*
  %234 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %233, i32 0, i32 2
  %235 = getelementptr inbounds [508 x i8], [508 x i8]* %234, i32 0, i32 0
  %236 = call i8* @strcpy(i8* %235, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0)) #2
  %237 = load %struct.request*, %struct.request** %3, align 8
  %238 = getelementptr inbounds %struct.request, %struct.request* %237, i32 0, i32 3
  %239 = load i8, i8* %238, align 2
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %240
  %242 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.request*, %struct.request** %3, align 8
  %245 = getelementptr inbounds %struct.request, %struct.request* %244, i32 0, i32 21
  %246 = bitcast %union.anon.9* %245 to %struct.tftperror*
  %247 = bitcast %struct.tftperror* %246 to i8*
  %248 = load %struct.request*, %struct.request** %3, align 8
  %249 = getelementptr inbounds %struct.request, %struct.request* %248, i32 0, i32 21
  %250 = bitcast %union.anon.9* %249 to %struct.tftperror*
  %251 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %250, i32 0, i32 2
  %252 = getelementptr inbounds [508 x i8], [508 x i8]* %251, i32 0, i32 0
  %253 = call i64 @strlen(i8* %252) #16
  %254 = add i64 %253, 5
  %255 = load %struct.request*, %struct.request** %3, align 8
  %256 = getelementptr inbounds %struct.request, %struct.request* %255, i32 0, i32 18
  %257 = bitcast %struct.sockaddr_in* %256 to %struct.sockaddr*
  %258 = load %struct.request*, %struct.request** %3, align 8
  %259 = getelementptr inbounds %struct.request, %struct.request* %258, i32 0, i32 19
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @sendto(i32 %243, i8* %247, i64 %254, i32 0, %struct.sockaddr* %257, i32 %260)
  %262 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %262, i8 zeroext 1)
  %263 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %263)
  store i32 1, i32* %2, align 4
  br label %1824

264:                                              ; preds = %214
  %265 = load i8*, i8** %7, align 8
  %266 = call i64 @strlen(i8* %265) #16
  %267 = add i64 %266, 1
  %268 = load i8*, i8** %7, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 %267
  store i8* %269, i8** %7, align 8
  store i16 0, i16* %8, align 2
  br label %270

270:                                              ; preds = %299, %264
  %271 = load i16, i16* %8, align 2
  %272 = zext i16 %271 to i64
  %273 = load %struct.request*, %struct.request** %3, align 8
  %274 = getelementptr inbounds %struct.request, %struct.request* %273, i32 0, i32 7
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @strlen(i8* %275) #16
  %277 = icmp ult i64 %272, %276
  br i1 %277, label %278, label %302

278:                                              ; preds = %270
  %279 = load %struct.request*, %struct.request** %3, align 8
  %280 = getelementptr inbounds %struct.request, %struct.request* %279, i32 0, i32 7
  %281 = load i8*, i8** %280, align 8
  %282 = load i16, i16* %8, align 2
  %283 = zext i16 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = load i8, i8* @notFileSep, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %286, %288
  br i1 %289, label %290, label %298

290:                                              ; preds = %278
  %291 = load i8, i8* @fileSep, align 1
  %292 = load %struct.request*, %struct.request** %3, align 8
  %293 = getelementptr inbounds %struct.request, %struct.request* %292, i32 0, i32 7
  %294 = load i8*, i8** %293, align 8
  %295 = load i16, i16* %8, align 2
  %296 = zext i16 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  store i8 %291, i8* %297, align 1
  br label %298

298:                                              ; preds = %290, %278
  br label %299

299:                                              ; preds = %298
  %300 = load i16, i16* %8, align 2
  %301 = add i16 %300, 1
  store i16 %301, i16* %8, align 2
  br label %270

302:                                              ; preds = %270
  store i8 46, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  store i8 46, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 1), align 1
  %303 = load i8, i8* @fileSep, align 1
  store i8 %303, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 2), align 2
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 3), align 1
  %304 = load %struct.request*, %struct.request** %3, align 8
  %305 = getelementptr inbounds %struct.request, %struct.request* %304, i32 0, i32 7
  %306 = load i8*, i8** %305, align 8
  %307 = call i8* @strstr(i8* %306, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0)) #16
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %353

309:                                              ; preds = %302
  %310 = call zeroext i16 @htons(i16 zeroext 5) #18
  %311 = load %struct.request*, %struct.request** %3, align 8
  %312 = getelementptr inbounds %struct.request, %struct.request* %311, i32 0, i32 21
  %313 = bitcast %union.anon.9* %312 to %struct.tftperror*
  %314 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %313, i32 0, i32 0
  store i16 %310, i16* %314, align 8
  %315 = call zeroext i16 @htons(i16 zeroext 2) #18
  %316 = load %struct.request*, %struct.request** %3, align 8
  %317 = getelementptr inbounds %struct.request, %struct.request* %316, i32 0, i32 21
  %318 = bitcast %union.anon.9* %317 to %struct.tftperror*
  %319 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %318, i32 0, i32 1
  store i16 %315, i16* %319, align 2
  %320 = load %struct.request*, %struct.request** %3, align 8
  %321 = getelementptr inbounds %struct.request, %struct.request* %320, i32 0, i32 21
  %322 = bitcast %union.anon.9* %321 to %struct.tftperror*
  %323 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %322, i32 0, i32 2
  %324 = getelementptr inbounds [508 x i8], [508 x i8]* %323, i32 0, i32 0
  %325 = call i8* @strcpy(i8* %324, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0)) #2
  %326 = load %struct.request*, %struct.request** %3, align 8
  %327 = getelementptr inbounds %struct.request, %struct.request* %326, i32 0, i32 3
  %328 = load i8, i8* %327, align 2
  %329 = zext i8 %328 to i64
  %330 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %329
  %331 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.request*, %struct.request** %3, align 8
  %334 = getelementptr inbounds %struct.request, %struct.request* %333, i32 0, i32 21
  %335 = bitcast %union.anon.9* %334 to %struct.tftperror*
  %336 = bitcast %struct.tftperror* %335 to i8*
  %337 = load %struct.request*, %struct.request** %3, align 8
  %338 = getelementptr inbounds %struct.request, %struct.request* %337, i32 0, i32 21
  %339 = bitcast %union.anon.9* %338 to %struct.tftperror*
  %340 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %339, i32 0, i32 2
  %341 = getelementptr inbounds [508 x i8], [508 x i8]* %340, i32 0, i32 0
  %342 = call i64 @strlen(i8* %341) #16
  %343 = add i64 %342, 5
  %344 = load %struct.request*, %struct.request** %3, align 8
  %345 = getelementptr inbounds %struct.request, %struct.request* %344, i32 0, i32 18
  %346 = bitcast %struct.sockaddr_in* %345 to %struct.sockaddr*
  %347 = load %struct.request*, %struct.request** %3, align 8
  %348 = getelementptr inbounds %struct.request, %struct.request* %347, i32 0, i32 19
  %349 = load i32, i32* %348, align 8
  %350 = call i64 @sendto(i32 %332, i8* %336, i64 %343, i32 0, %struct.sockaddr* %346, i32 %349)
  %351 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %351, i8 zeroext 1)
  %352 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %352)
  store i32 1, i32* %2, align 4
  br label %1824

353:                                              ; preds = %302
  %354 = load %struct.request*, %struct.request** %3, align 8
  %355 = getelementptr inbounds %struct.request, %struct.request* %354, i32 0, i32 7
  %356 = load i8*, i8** %355, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 0
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = load i8, i8* @fileSep, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %359, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %353
  %364 = load %struct.request*, %struct.request** %3, align 8
  %365 = getelementptr inbounds %struct.request, %struct.request* %364, i32 0, i32 7
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %365, align 8
  br label %368

368:                                              ; preds = %363, %353
  %369 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %370 = icmp ne i8 %369, 0
  br i1 %370, label %435, label %371

371:                                              ; preds = %368
  %372 = call i64 @strlen(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0)) #16
  %373 = load %struct.request*, %struct.request** %3, align 8
  %374 = getelementptr inbounds %struct.request, %struct.request* %373, i32 0, i32 7
  %375 = load i8*, i8** %374, align 8
  %376 = call i64 @strlen(i8* %375) #16
  %377 = add i64 %372, %376
  %378 = icmp uge i64 %377, 256
  br i1 %378, label %379, label %423

379:                                              ; preds = %371
  %380 = call zeroext i16 @htons(i16 zeroext 5) #18
  %381 = load %struct.request*, %struct.request** %3, align 8
  %382 = getelementptr inbounds %struct.request, %struct.request* %381, i32 0, i32 21
  %383 = bitcast %union.anon.9* %382 to %struct.tftperror*
  %384 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %383, i32 0, i32 0
  store i16 %380, i16* %384, align 8
  %385 = call zeroext i16 @htons(i16 zeroext 2) #18
  %386 = load %struct.request*, %struct.request** %3, align 8
  %387 = getelementptr inbounds %struct.request, %struct.request* %386, i32 0, i32 21
  %388 = bitcast %union.anon.9* %387 to %struct.tftperror*
  %389 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %388, i32 0, i32 1
  store i16 %385, i16* %389, align 2
  %390 = load %struct.request*, %struct.request** %3, align 8
  %391 = getelementptr inbounds %struct.request, %struct.request* %390, i32 0, i32 21
  %392 = bitcast %union.anon.9* %391 to %struct.tftperror*
  %393 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %392, i32 0, i32 2
  %394 = getelementptr inbounds [508 x i8], [508 x i8]* %393, i32 0, i32 0
  %395 = call i8* @strcpy(i8* %394, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #2
  %396 = load %struct.request*, %struct.request** %3, align 8
  %397 = getelementptr inbounds %struct.request, %struct.request* %396, i32 0, i32 3
  %398 = load i8, i8* %397, align 2
  %399 = zext i8 %398 to i64
  %400 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %399
  %401 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.request*, %struct.request** %3, align 8
  %404 = getelementptr inbounds %struct.request, %struct.request* %403, i32 0, i32 21
  %405 = bitcast %union.anon.9* %404 to %struct.tftperror*
  %406 = bitcast %struct.tftperror* %405 to i8*
  %407 = load %struct.request*, %struct.request** %3, align 8
  %408 = getelementptr inbounds %struct.request, %struct.request* %407, i32 0, i32 21
  %409 = bitcast %union.anon.9* %408 to %struct.tftperror*
  %410 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %409, i32 0, i32 2
  %411 = getelementptr inbounds [508 x i8], [508 x i8]* %410, i32 0, i32 0
  %412 = call i64 @strlen(i8* %411) #16
  %413 = add i64 %412, 5
  %414 = load %struct.request*, %struct.request** %3, align 8
  %415 = getelementptr inbounds %struct.request, %struct.request* %414, i32 0, i32 18
  %416 = bitcast %struct.sockaddr_in* %415 to %struct.sockaddr*
  %417 = load %struct.request*, %struct.request** %3, align 8
  %418 = getelementptr inbounds %struct.request, %struct.request* %417, i32 0, i32 19
  %419 = load i32, i32* %418, align 8
  %420 = call i64 @sendto(i32 %402, i8* %406, i64 %413, i32 0, %struct.sockaddr* %416, i32 %419)
  %421 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %421, i8 zeroext 1)
  %422 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %422)
  store i32 1, i32* %2, align 4
  br label %1824

423:                                              ; preds = %371
  %424 = load %struct.request*, %struct.request** %3, align 8
  %425 = getelementptr inbounds %struct.request, %struct.request* %424, i32 0, i32 5
  %426 = getelementptr inbounds [256 x i8], [256 x i8]* %425, i32 0, i32 0
  %427 = call i8* @strcpy(i8* %426, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0)) #2
  %428 = load %struct.request*, %struct.request** %3, align 8
  %429 = getelementptr inbounds %struct.request, %struct.request* %428, i32 0, i32 5
  %430 = getelementptr inbounds [256 x i8], [256 x i8]* %429, i32 0, i32 0
  %431 = load %struct.request*, %struct.request** %3, align 8
  %432 = getelementptr inbounds %struct.request, %struct.request* %431, i32 0, i32 7
  %433 = load i8*, i8** %432, align 8
  %434 = call i8* @strcat(i8* %430, i8* %433) #2
  br label %649

435:                                              ; preds = %368
  %436 = load %struct.request*, %struct.request** %3, align 8
  %437 = getelementptr inbounds %struct.request, %struct.request* %436, i32 0, i32 7
  %438 = load i8*, i8** %437, align 8
  %439 = load i8, i8* @fileSep, align 1
  %440 = sext i8 %439 to i32
  %441 = call i8* @strchr(i8* %438, i32 %440) #16
  store i8* %441, i8** %9, align 8
  %442 = load i8*, i8** %9, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %444, label %448

444:                                              ; preds = %435
  %445 = load i8*, i8** %9, align 8
  store i8 0, i8* %445, align 1
  %446 = load i8*, i8** %9, align 8
  %447 = getelementptr inbounds i8, i8* %446, i32 1
  store i8* %447, i8** %9, align 8
  br label %492

448:                                              ; preds = %435
  %449 = call zeroext i16 @htons(i16 zeroext 5) #18
  %450 = load %struct.request*, %struct.request** %3, align 8
  %451 = getelementptr inbounds %struct.request, %struct.request* %450, i32 0, i32 21
  %452 = bitcast %union.anon.9* %451 to %struct.tftperror*
  %453 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %452, i32 0, i32 0
  store i16 %449, i16* %453, align 8
  %454 = call zeroext i16 @htons(i16 zeroext 2) #18
  %455 = load %struct.request*, %struct.request** %3, align 8
  %456 = getelementptr inbounds %struct.request, %struct.request* %455, i32 0, i32 21
  %457 = bitcast %union.anon.9* %456 to %struct.tftperror*
  %458 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %457, i32 0, i32 1
  store i16 %454, i16* %458, align 2
  %459 = load %struct.request*, %struct.request** %3, align 8
  %460 = getelementptr inbounds %struct.request, %struct.request* %459, i32 0, i32 21
  %461 = bitcast %union.anon.9* %460 to %struct.tftperror*
  %462 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %461, i32 0, i32 2
  %463 = getelementptr inbounds [508 x i8], [508 x i8]* %462, i32 0, i32 0
  %464 = call i32 (i8*, i8*, ...) @sprintf(i8* %463, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0)) #2
  %465 = load %struct.request*, %struct.request** %3, align 8
  %466 = getelementptr inbounds %struct.request, %struct.request* %465, i32 0, i32 3
  %467 = load i8, i8* %466, align 2
  %468 = zext i8 %467 to i64
  %469 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %468
  %470 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.request*, %struct.request** %3, align 8
  %473 = getelementptr inbounds %struct.request, %struct.request* %472, i32 0, i32 21
  %474 = bitcast %union.anon.9* %473 to %struct.tftperror*
  %475 = bitcast %struct.tftperror* %474 to i8*
  %476 = load %struct.request*, %struct.request** %3, align 8
  %477 = getelementptr inbounds %struct.request, %struct.request* %476, i32 0, i32 21
  %478 = bitcast %union.anon.9* %477 to %struct.tftperror*
  %479 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %478, i32 0, i32 2
  %480 = getelementptr inbounds [508 x i8], [508 x i8]* %479, i32 0, i32 0
  %481 = call i64 @strlen(i8* %480) #16
  %482 = add i64 %481, 5
  %483 = load %struct.request*, %struct.request** %3, align 8
  %484 = getelementptr inbounds %struct.request, %struct.request* %483, i32 0, i32 18
  %485 = bitcast %struct.sockaddr_in* %484 to %struct.sockaddr*
  %486 = load %struct.request*, %struct.request** %3, align 8
  %487 = getelementptr inbounds %struct.request, %struct.request* %486, i32 0, i32 19
  %488 = load i32, i32* %487, align 8
  %489 = call i64 @sendto(i32 %471, i8* %475, i64 %482, i32 0, %struct.sockaddr* %485, i32 %488)
  %490 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %490, i8 zeroext 1)
  %491 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %491)
  store i32 1, i32* %2, align 4
  br label %1824

492:                                              ; preds = %444
  store i32 0, i32* %10, align 4
  br label %493

493:                                              ; preds = %645, %492
  %494 = load i32, i32* %10, align 4
  %495 = icmp slt i32 %494, 8
  br i1 %495, label %496, label %648

496:                                              ; preds = %493
  %497 = load i32, i32* %10, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %498
  %500 = getelementptr inbounds %struct.home, %struct.home* %499, i32 0, i32 0
  %501 = getelementptr inbounds [64 x i8], [64 x i8]* %500, i64 0, i64 0
  %502 = load i8, i8* %501, align 8
  %503 = icmp ne i8 %502, 0
  br i1 %503, label %504, label %585

504:                                              ; preds = %496
  %505 = load %struct.request*, %struct.request** %3, align 8
  %506 = getelementptr inbounds %struct.request, %struct.request* %505, i32 0, i32 7
  %507 = load i8*, i8** %506, align 8
  %508 = load i32, i32* %10, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %509
  %511 = getelementptr inbounds %struct.home, %struct.home* %510, i32 0, i32 0
  %512 = getelementptr inbounds [64 x i8], [64 x i8]* %511, i32 0, i32 0
  %513 = call i32 @strcasecmp(i8* %507, i8* %512) #16
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %585, label %515

515:                                              ; preds = %504
  %516 = load i32, i32* %10, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %517
  %519 = getelementptr inbounds %struct.home, %struct.home* %518, i32 0, i32 1
  %520 = getelementptr inbounds [256 x i8], [256 x i8]* %519, i32 0, i32 0
  %521 = call i64 @strlen(i8* %520) #16
  %522 = load i8*, i8** %9, align 8
  %523 = call i64 @strlen(i8* %522) #16
  %524 = add i64 %521, %523
  %525 = icmp uge i64 %524, 256
  br i1 %525, label %526, label %570

526:                                              ; preds = %515
  %527 = call zeroext i16 @htons(i16 zeroext 5) #18
  %528 = load %struct.request*, %struct.request** %3, align 8
  %529 = getelementptr inbounds %struct.request, %struct.request* %528, i32 0, i32 21
  %530 = bitcast %union.anon.9* %529 to %struct.tftperror*
  %531 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %530, i32 0, i32 0
  store i16 %527, i16* %531, align 8
  %532 = call zeroext i16 @htons(i16 zeroext 2) #18
  %533 = load %struct.request*, %struct.request** %3, align 8
  %534 = getelementptr inbounds %struct.request, %struct.request* %533, i32 0, i32 21
  %535 = bitcast %union.anon.9* %534 to %struct.tftperror*
  %536 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %535, i32 0, i32 1
  store i16 %532, i16* %536, align 2
  %537 = load %struct.request*, %struct.request** %3, align 8
  %538 = getelementptr inbounds %struct.request, %struct.request* %537, i32 0, i32 21
  %539 = bitcast %union.anon.9* %538 to %struct.tftperror*
  %540 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %539, i32 0, i32 2
  %541 = getelementptr inbounds [508 x i8], [508 x i8]* %540, i32 0, i32 0
  %542 = call i8* @strcpy(i8* %541, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #2
  %543 = load %struct.request*, %struct.request** %3, align 8
  %544 = getelementptr inbounds %struct.request, %struct.request* %543, i32 0, i32 3
  %545 = load i8, i8* %544, align 2
  %546 = zext i8 %545 to i64
  %547 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %546
  %548 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.request*, %struct.request** %3, align 8
  %551 = getelementptr inbounds %struct.request, %struct.request* %550, i32 0, i32 21
  %552 = bitcast %union.anon.9* %551 to %struct.tftperror*
  %553 = bitcast %struct.tftperror* %552 to i8*
  %554 = load %struct.request*, %struct.request** %3, align 8
  %555 = getelementptr inbounds %struct.request, %struct.request* %554, i32 0, i32 21
  %556 = bitcast %union.anon.9* %555 to %struct.tftperror*
  %557 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %556, i32 0, i32 2
  %558 = getelementptr inbounds [508 x i8], [508 x i8]* %557, i32 0, i32 0
  %559 = call i64 @strlen(i8* %558) #16
  %560 = add i64 %559, 5
  %561 = load %struct.request*, %struct.request** %3, align 8
  %562 = getelementptr inbounds %struct.request, %struct.request* %561, i32 0, i32 18
  %563 = bitcast %struct.sockaddr_in* %562 to %struct.sockaddr*
  %564 = load %struct.request*, %struct.request** %3, align 8
  %565 = getelementptr inbounds %struct.request, %struct.request* %564, i32 0, i32 19
  %566 = load i32, i32* %565, align 8
  %567 = call i64 @sendto(i32 %549, i8* %553, i64 %560, i32 0, %struct.sockaddr* %563, i32 %566)
  %568 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %568, i8 zeroext 1)
  %569 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %569)
  store i32 1, i32* %2, align 4
  br label %1824

570:                                              ; preds = %515
  %571 = load %struct.request*, %struct.request** %3, align 8
  %572 = getelementptr inbounds %struct.request, %struct.request* %571, i32 0, i32 5
  %573 = getelementptr inbounds [256 x i8], [256 x i8]* %572, i32 0, i32 0
  %574 = load i32, i32* %10, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %575
  %577 = getelementptr inbounds %struct.home, %struct.home* %576, i32 0, i32 1
  %578 = getelementptr inbounds [256 x i8], [256 x i8]* %577, i32 0, i32 0
  %579 = call i8* @strcpy(i8* %573, i8* %578) #2
  %580 = load %struct.request*, %struct.request** %3, align 8
  %581 = getelementptr inbounds %struct.request, %struct.request* %580, i32 0, i32 5
  %582 = getelementptr inbounds [256 x i8], [256 x i8]* %581, i32 0, i32 0
  %583 = load i8*, i8** %9, align 8
  %584 = call i8* @strcat(i8* %582, i8* %583) #2
  br label %648

585:                                              ; preds = %504, %496
  %586 = load i32, i32* %10, align 4
  %587 = icmp eq i32 %586, 7
  br i1 %587, label %596, label %588

588:                                              ; preds = %585
  %589 = load i32, i32* %10, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %590
  %592 = getelementptr inbounds %struct.home, %struct.home* %591, i32 0, i32 0
  %593 = getelementptr inbounds [64 x i8], [64 x i8]* %592, i64 0, i64 0
  %594 = load i8, i8* %593, align 8
  %595 = icmp ne i8 %594, 0
  br i1 %595, label %643, label %596

596:                                              ; preds = %588, %585
  %597 = call zeroext i16 @htons(i16 zeroext 5) #18
  %598 = load %struct.request*, %struct.request** %3, align 8
  %599 = getelementptr inbounds %struct.request, %struct.request* %598, i32 0, i32 21
  %600 = bitcast %union.anon.9* %599 to %struct.tftperror*
  %601 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %600, i32 0, i32 0
  store i16 %597, i16* %601, align 8
  %602 = call zeroext i16 @htons(i16 zeroext 2) #18
  %603 = load %struct.request*, %struct.request** %3, align 8
  %604 = getelementptr inbounds %struct.request, %struct.request* %603, i32 0, i32 21
  %605 = bitcast %union.anon.9* %604 to %struct.tftperror*
  %606 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %605, i32 0, i32 1
  store i16 %602, i16* %606, align 2
  %607 = load %struct.request*, %struct.request** %3, align 8
  %608 = getelementptr inbounds %struct.request, %struct.request* %607, i32 0, i32 21
  %609 = bitcast %union.anon.9* %608 to %struct.tftperror*
  %610 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %609, i32 0, i32 2
  %611 = getelementptr inbounds [508 x i8], [508 x i8]* %610, i32 0, i32 0
  %612 = load %struct.request*, %struct.request** %3, align 8
  %613 = getelementptr inbounds %struct.request, %struct.request* %612, i32 0, i32 7
  %614 = load i8*, i8** %613, align 8
  %615 = call i32 (i8*, i8*, ...) @sprintf(i8* %611, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* %614) #2
  %616 = load %struct.request*, %struct.request** %3, align 8
  %617 = getelementptr inbounds %struct.request, %struct.request* %616, i32 0, i32 3
  %618 = load i8, i8* %617, align 2
  %619 = zext i8 %618 to i64
  %620 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %619
  %621 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.request*, %struct.request** %3, align 8
  %624 = getelementptr inbounds %struct.request, %struct.request* %623, i32 0, i32 21
  %625 = bitcast %union.anon.9* %624 to %struct.tftperror*
  %626 = bitcast %struct.tftperror* %625 to i8*
  %627 = load %struct.request*, %struct.request** %3, align 8
  %628 = getelementptr inbounds %struct.request, %struct.request* %627, i32 0, i32 21
  %629 = bitcast %union.anon.9* %628 to %struct.tftperror*
  %630 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %629, i32 0, i32 2
  %631 = getelementptr inbounds [508 x i8], [508 x i8]* %630, i32 0, i32 0
  %632 = call i64 @strlen(i8* %631) #16
  %633 = add i64 %632, 5
  %634 = load %struct.request*, %struct.request** %3, align 8
  %635 = getelementptr inbounds %struct.request, %struct.request* %634, i32 0, i32 18
  %636 = bitcast %struct.sockaddr_in* %635 to %struct.sockaddr*
  %637 = load %struct.request*, %struct.request** %3, align 8
  %638 = getelementptr inbounds %struct.request, %struct.request* %637, i32 0, i32 19
  %639 = load i32, i32* %638, align 8
  %640 = call i64 @sendto(i32 %622, i8* %626, i64 %633, i32 0, %struct.sockaddr* %636, i32 %639)
  %641 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %641, i8 zeroext 1)
  %642 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %642)
  store i32 1, i32* %2, align 4
  br label %1824

643:                                              ; preds = %588
  br label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644
  %646 = load i32, i32* %10, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %10, align 4
  br label %493

648:                                              ; preds = %570, %493
  br label %649

649:                                              ; preds = %648, %423
  %650 = load %struct.packet*, %struct.packet** @datain, align 8
  %651 = getelementptr inbounds %struct.packet, %struct.packet* %650, i32 0, i32 0
  %652 = load i16, i16* %651, align 2
  %653 = call zeroext i16 @ntohs(i16 zeroext %652) #18
  %654 = zext i16 %653 to i32
  %655 = icmp eq i32 %654, 1
  br i1 %655, label %656, label %830

656:                                              ; preds = %649
  %657 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  %658 = icmp ne i8 %657, 0
  br i1 %658, label %703, label %659

659:                                              ; preds = %656
  %660 = call zeroext i16 @htons(i16 zeroext 5) #18
  %661 = load %struct.request*, %struct.request** %3, align 8
  %662 = getelementptr inbounds %struct.request, %struct.request* %661, i32 0, i32 21
  %663 = bitcast %union.anon.9* %662 to %struct.tftperror*
  %664 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %663, i32 0, i32 0
  store i16 %660, i16* %664, align 8
  %665 = call zeroext i16 @htons(i16 zeroext 2) #18
  %666 = load %struct.request*, %struct.request** %3, align 8
  %667 = getelementptr inbounds %struct.request, %struct.request* %666, i32 0, i32 21
  %668 = bitcast %union.anon.9* %667 to %struct.tftperror*
  %669 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %668, i32 0, i32 1
  store i16 %665, i16* %669, align 2
  %670 = load %struct.request*, %struct.request** %3, align 8
  %671 = getelementptr inbounds %struct.request, %struct.request* %670, i32 0, i32 21
  %672 = bitcast %union.anon.9* %671 to %struct.tftperror*
  %673 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %672, i32 0, i32 2
  %674 = getelementptr inbounds [508 x i8], [508 x i8]* %673, i32 0, i32 0
  %675 = call i8* @strcpy(i8* %674, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #2
  %676 = load %struct.request*, %struct.request** %3, align 8
  %677 = getelementptr inbounds %struct.request, %struct.request* %676, i32 0, i32 3
  %678 = load i8, i8* %677, align 2
  %679 = zext i8 %678 to i64
  %680 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %679
  %681 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 4
  %683 = load %struct.request*, %struct.request** %3, align 8
  %684 = getelementptr inbounds %struct.request, %struct.request* %683, i32 0, i32 21
  %685 = bitcast %union.anon.9* %684 to %struct.tftperror*
  %686 = bitcast %struct.tftperror* %685 to i8*
  %687 = load %struct.request*, %struct.request** %3, align 8
  %688 = getelementptr inbounds %struct.request, %struct.request* %687, i32 0, i32 21
  %689 = bitcast %union.anon.9* %688 to %struct.tftperror*
  %690 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %689, i32 0, i32 2
  %691 = getelementptr inbounds [508 x i8], [508 x i8]* %690, i32 0, i32 0
  %692 = call i64 @strlen(i8* %691) #16
  %693 = add i64 %692, 5
  %694 = load %struct.request*, %struct.request** %3, align 8
  %695 = getelementptr inbounds %struct.request, %struct.request* %694, i32 0, i32 18
  %696 = bitcast %struct.sockaddr_in* %695 to %struct.sockaddr*
  %697 = load %struct.request*, %struct.request** %3, align 8
  %698 = getelementptr inbounds %struct.request, %struct.request* %697, i32 0, i32 19
  %699 = load i32, i32* %698, align 8
  %700 = call i64 @sendto(i32 %682, i8* %686, i64 %693, i32 0, %struct.sockaddr* %696, i32 %699)
  %701 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %701, i8 zeroext 1)
  %702 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %702)
  store i32 1, i32* %2, align 4
  br label %1824

703:                                              ; preds = %656
  %704 = call i32* @__errno_location() #18
  store i32 0, i32* %704, align 4
  %705 = load i8*, i8** %7, align 8
  %706 = load i8, i8* %705, align 1
  %707 = icmp ne i8 %706, 0
  br i1 %707, label %708, label %750

708:                                              ; preds = %703
  %709 = load i8*, i8** %7, align 8
  store i8* %709, i8** %11, align 8
  br label %710

710:                                              ; preds = %743, %708
  %711 = load i8*, i8** %11, align 8
  %712 = load i8, i8* %711, align 1
  %713 = icmp ne i8 %712, 0
  br i1 %713, label %714, label %749

714:                                              ; preds = %710
  %715 = load i8*, i8** %11, align 8
  %716 = call i32 @strcasecmp(i8* %715, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)) #16
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %743, label %718

718:                                              ; preds = %714
  %719 = load i8*, i8** %11, align 8
  %720 = call i64 @strlen(i8* %719) #16
  %721 = add i64 %720, 1
  %722 = load i8*, i8** %11, align 8
  %723 = getelementptr inbounds i8, i8* %722, i64 %721
  store i8* %723, i8** %11, align 8
  %724 = load i8*, i8** %11, align 8
  %725 = call i64 @atol(i8* %724) #16
  %726 = trunc i64 %725 to i32
  store i32 %726, i32* %12, align 4
  %727 = load i32, i32* %12, align 4
  %728 = icmp ult i32 %727, 512
  br i1 %728, label %729, label %730

729:                                              ; preds = %718
  store i32 512, i32* %12, align 4
  br label %739

730:                                              ; preds = %718
  %731 = load i32, i32* %12, align 4
  %732 = load i16, i16* @blksize, align 2
  %733 = zext i16 %732 to i32
  %734 = icmp ugt i32 %731, %733
  br i1 %734, label %735, label %738

735:                                              ; preds = %730
  %736 = load i16, i16* @blksize, align 2
  %737 = zext i16 %736 to i32
  store i32 %737, i32* %12, align 4
  br label %738

738:                                              ; preds = %735, %730
  br label %739

739:                                              ; preds = %738, %729
  %740 = load i32, i32* %12, align 4
  %741 = load %struct.request*, %struct.request** %3, align 8
  %742 = getelementptr inbounds %struct.request, %struct.request* %741, i32 0, i32 10
  store i32 %740, i32* %742, align 4
  br label %749

743:                                              ; preds = %714
  %744 = load i8*, i8** %11, align 8
  %745 = call i64 @strlen(i8* %744) #16
  %746 = add i64 %745, 1
  %747 = load i8*, i8** %11, align 8
  %748 = getelementptr inbounds i8, i8* %747, i64 %746
  store i8* %748, i8** %11, align 8
  br label %710

749:                                              ; preds = %739, %710
  br label %750

750:                                              ; preds = %749, %703
  %751 = load %struct.request*, %struct.request** %3, align 8
  %752 = getelementptr inbounds %struct.request, %struct.request* %751, i32 0, i32 8
  %753 = load i8*, i8** %752, align 8
  %754 = call i32 @strcasecmp(i8* %753, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #16
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %756, label %762

756:                                              ; preds = %750
  %757 = load %struct.request*, %struct.request** %3, align 8
  %758 = getelementptr inbounds %struct.request, %struct.request* %757, i32 0, i32 8
  %759 = load i8*, i8** %758, align 8
  %760 = call i32 @strcasecmp(i8* %759, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #16
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %769, label %762

762:                                              ; preds = %756, %750
  %763 = load %struct.request*, %struct.request** %3, align 8
  %764 = getelementptr inbounds %struct.request, %struct.request* %763, i32 0, i32 5
  %765 = getelementptr inbounds [256 x i8], [256 x i8]* %764, i32 0, i32 0
  %766 = call %struct._IO_FILE* @fopen(i8* %765, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %767 = load %struct.request*, %struct.request** %3, align 8
  %768 = getelementptr inbounds %struct.request, %struct.request* %767, i32 0, i32 6
  store %struct._IO_FILE* %766, %struct._IO_FILE** %768, align 8
  br label %776

769:                                              ; preds = %756
  %770 = load %struct.request*, %struct.request** %3, align 8
  %771 = getelementptr inbounds %struct.request, %struct.request* %770, i32 0, i32 5
  %772 = getelementptr inbounds [256 x i8], [256 x i8]* %771, i32 0, i32 0
  %773 = call %struct._IO_FILE* @fopen(i8* %772, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %774 = load %struct.request*, %struct.request** %3, align 8
  %775 = getelementptr inbounds %struct.request, %struct.request* %774, i32 0, i32 6
  store %struct._IO_FILE* %773, %struct._IO_FILE** %775, align 8
  br label %776

776:                                              ; preds = %769, %762
  %777 = call i32* @__errno_location() #18
  %778 = load i32, i32* %777, align 4
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %785, label %780

780:                                              ; preds = %776
  %781 = load %struct.request*, %struct.request** %3, align 8
  %782 = getelementptr inbounds %struct.request, %struct.request* %781, i32 0, i32 6
  %783 = load %struct._IO_FILE*, %struct._IO_FILE** %782, align 8
  %784 = icmp ne %struct._IO_FILE* %783, null
  br i1 %784, label %829, label %785

785:                                              ; preds = %780, %776
  %786 = call zeroext i16 @htons(i16 zeroext 5) #18
  %787 = load %struct.request*, %struct.request** %3, align 8
  %788 = getelementptr inbounds %struct.request, %struct.request* %787, i32 0, i32 21
  %789 = bitcast %union.anon.9* %788 to %struct.tftperror*
  %790 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %789, i32 0, i32 0
  store i16 %786, i16* %790, align 8
  %791 = call zeroext i16 @htons(i16 zeroext 1) #18
  %792 = load %struct.request*, %struct.request** %3, align 8
  %793 = getelementptr inbounds %struct.request, %struct.request* %792, i32 0, i32 21
  %794 = bitcast %union.anon.9* %793 to %struct.tftperror*
  %795 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %794, i32 0, i32 1
  store i16 %791, i16* %795, align 2
  %796 = load %struct.request*, %struct.request** %3, align 8
  %797 = getelementptr inbounds %struct.request, %struct.request* %796, i32 0, i32 21
  %798 = bitcast %union.anon.9* %797 to %struct.tftperror*
  %799 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %798, i32 0, i32 2
  %800 = getelementptr inbounds [508 x i8], [508 x i8]* %799, i32 0, i32 0
  %801 = call i8* @strcpy(i8* %800, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)) #2
  %802 = load %struct.request*, %struct.request** %3, align 8
  %803 = getelementptr inbounds %struct.request, %struct.request* %802, i32 0, i32 3
  %804 = load i8, i8* %803, align 2
  %805 = zext i8 %804 to i64
  %806 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %805
  %807 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 4
  %809 = load %struct.request*, %struct.request** %3, align 8
  %810 = getelementptr inbounds %struct.request, %struct.request* %809, i32 0, i32 21
  %811 = bitcast %union.anon.9* %810 to %struct.tftperror*
  %812 = bitcast %struct.tftperror* %811 to i8*
  %813 = load %struct.request*, %struct.request** %3, align 8
  %814 = getelementptr inbounds %struct.request, %struct.request* %813, i32 0, i32 21
  %815 = bitcast %union.anon.9* %814 to %struct.tftperror*
  %816 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %815, i32 0, i32 2
  %817 = getelementptr inbounds [508 x i8], [508 x i8]* %816, i32 0, i32 0
  %818 = call i64 @strlen(i8* %817) #16
  %819 = add i64 %818, 5
  %820 = load %struct.request*, %struct.request** %3, align 8
  %821 = getelementptr inbounds %struct.request, %struct.request* %820, i32 0, i32 18
  %822 = bitcast %struct.sockaddr_in* %821 to %struct.sockaddr*
  %823 = load %struct.request*, %struct.request** %3, align 8
  %824 = getelementptr inbounds %struct.request, %struct.request* %823, i32 0, i32 19
  %825 = load i32, i32* %824, align 8
  %826 = call i64 @sendto(i32 %808, i8* %812, i64 %819, i32 0, %struct.sockaddr* %822, i32 %825)
  %827 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %827, i8 zeroext 1)
  %828 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %828)
  store i32 1, i32* %2, align 4
  br label %1824

829:                                              ; preds = %780
  br label %1074

830:                                              ; preds = %649
  %831 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  %832 = icmp ne i8 %831, 0
  br i1 %832, label %880, label %833

833:                                              ; preds = %830
  %834 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  %835 = icmp ne i8 %834, 0
  br i1 %835, label %880, label %836

836:                                              ; preds = %833
  %837 = call zeroext i16 @htons(i16 zeroext 5) #18
  %838 = load %struct.request*, %struct.request** %3, align 8
  %839 = getelementptr inbounds %struct.request, %struct.request* %838, i32 0, i32 21
  %840 = bitcast %union.anon.9* %839 to %struct.tftperror*
  %841 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %840, i32 0, i32 0
  store i16 %837, i16* %841, align 8
  %842 = call zeroext i16 @htons(i16 zeroext 2) #18
  %843 = load %struct.request*, %struct.request** %3, align 8
  %844 = getelementptr inbounds %struct.request, %struct.request* %843, i32 0, i32 21
  %845 = bitcast %union.anon.9* %844 to %struct.tftperror*
  %846 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %845, i32 0, i32 1
  store i16 %842, i16* %846, align 2
  %847 = load %struct.request*, %struct.request** %3, align 8
  %848 = getelementptr inbounds %struct.request, %struct.request* %847, i32 0, i32 21
  %849 = bitcast %union.anon.9* %848 to %struct.tftperror*
  %850 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %849, i32 0, i32 2
  %851 = getelementptr inbounds [508 x i8], [508 x i8]* %850, i32 0, i32 0
  %852 = call i8* @strcpy(i8* %851, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0)) #2
  %853 = load %struct.request*, %struct.request** %3, align 8
  %854 = getelementptr inbounds %struct.request, %struct.request* %853, i32 0, i32 3
  %855 = load i8, i8* %854, align 2
  %856 = zext i8 %855 to i64
  %857 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %856
  %858 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 4
  %860 = load %struct.request*, %struct.request** %3, align 8
  %861 = getelementptr inbounds %struct.request, %struct.request* %860, i32 0, i32 21
  %862 = bitcast %union.anon.9* %861 to %struct.tftperror*
  %863 = bitcast %struct.tftperror* %862 to i8*
  %864 = load %struct.request*, %struct.request** %3, align 8
  %865 = getelementptr inbounds %struct.request, %struct.request* %864, i32 0, i32 21
  %866 = bitcast %union.anon.9* %865 to %struct.tftperror*
  %867 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %866, i32 0, i32 2
  %868 = getelementptr inbounds [508 x i8], [508 x i8]* %867, i32 0, i32 0
  %869 = call i64 @strlen(i8* %868) #16
  %870 = add i64 %869, 5
  %871 = load %struct.request*, %struct.request** %3, align 8
  %872 = getelementptr inbounds %struct.request, %struct.request* %871, i32 0, i32 18
  %873 = bitcast %struct.sockaddr_in* %872 to %struct.sockaddr*
  %874 = load %struct.request*, %struct.request** %3, align 8
  %875 = getelementptr inbounds %struct.request, %struct.request* %874, i32 0, i32 19
  %876 = load i32, i32* %875, align 8
  %877 = call i64 @sendto(i32 %859, i8* %863, i64 %870, i32 0, %struct.sockaddr* %873, i32 %876)
  %878 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %878, i8 zeroext 1)
  %879 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %879)
  store i32 1, i32* %2, align 4
  br label %1824

880:                                              ; preds = %833, %830
  %881 = load %struct.request*, %struct.request** %3, align 8
  %882 = getelementptr inbounds %struct.request, %struct.request* %881, i32 0, i32 5
  %883 = getelementptr inbounds [256 x i8], [256 x i8]* %882, i32 0, i32 0
  %884 = call %struct._IO_FILE* @fopen(i8* %883, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %885 = load %struct.request*, %struct.request** %3, align 8
  %886 = getelementptr inbounds %struct.request, %struct.request* %885, i32 0, i32 6
  store %struct._IO_FILE* %884, %struct._IO_FILE** %886, align 8
  %887 = load %struct.request*, %struct.request** %3, align 8
  %888 = getelementptr inbounds %struct.request, %struct.request* %887, i32 0, i32 6
  %889 = load %struct._IO_FILE*, %struct._IO_FILE** %888, align 8
  %890 = icmp ne %struct._IO_FILE* %889, null
  br i1 %890, label %891, label %945

891:                                              ; preds = %880
  %892 = load %struct.request*, %struct.request** %3, align 8
  %893 = getelementptr inbounds %struct.request, %struct.request* %892, i32 0, i32 6
  %894 = load %struct._IO_FILE*, %struct._IO_FILE** %893, align 8
  %895 = call i32 @fclose(%struct._IO_FILE* %894)
  %896 = load %struct.request*, %struct.request** %3, align 8
  %897 = getelementptr inbounds %struct.request, %struct.request* %896, i32 0, i32 6
  store %struct._IO_FILE* null, %struct._IO_FILE** %897, align 8
  %898 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  %899 = icmp ne i8 %898, 0
  br i1 %899, label %944, label %900

900:                                              ; preds = %891
  %901 = call zeroext i16 @htons(i16 zeroext 5) #18
  %902 = load %struct.request*, %struct.request** %3, align 8
  %903 = getelementptr inbounds %struct.request, %struct.request* %902, i32 0, i32 21
  %904 = bitcast %union.anon.9* %903 to %struct.tftperror*
  %905 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %904, i32 0, i32 0
  store i16 %901, i16* %905, align 8
  %906 = call zeroext i16 @htons(i16 zeroext 6) #18
  %907 = load %struct.request*, %struct.request** %3, align 8
  %908 = getelementptr inbounds %struct.request, %struct.request* %907, i32 0, i32 21
  %909 = bitcast %union.anon.9* %908 to %struct.tftperror*
  %910 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %909, i32 0, i32 1
  store i16 %906, i16* %910, align 2
  %911 = load %struct.request*, %struct.request** %3, align 8
  %912 = getelementptr inbounds %struct.request, %struct.request* %911, i32 0, i32 21
  %913 = bitcast %union.anon.9* %912 to %struct.tftperror*
  %914 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %913, i32 0, i32 2
  %915 = getelementptr inbounds [508 x i8], [508 x i8]* %914, i32 0, i32 0
  %916 = call i8* @strcpy(i8* %915, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0)) #2
  %917 = load %struct.request*, %struct.request** %3, align 8
  %918 = getelementptr inbounds %struct.request, %struct.request* %917, i32 0, i32 3
  %919 = load i8, i8* %918, align 2
  %920 = zext i8 %919 to i64
  %921 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %920
  %922 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %921, i32 0, i32 0
  %923 = load i32, i32* %922, align 4
  %924 = load %struct.request*, %struct.request** %3, align 8
  %925 = getelementptr inbounds %struct.request, %struct.request* %924, i32 0, i32 21
  %926 = bitcast %union.anon.9* %925 to %struct.tftperror*
  %927 = bitcast %struct.tftperror* %926 to i8*
  %928 = load %struct.request*, %struct.request** %3, align 8
  %929 = getelementptr inbounds %struct.request, %struct.request* %928, i32 0, i32 21
  %930 = bitcast %union.anon.9* %929 to %struct.tftperror*
  %931 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %930, i32 0, i32 2
  %932 = getelementptr inbounds [508 x i8], [508 x i8]* %931, i32 0, i32 0
  %933 = call i64 @strlen(i8* %932) #16
  %934 = add i64 %933, 5
  %935 = load %struct.request*, %struct.request** %3, align 8
  %936 = getelementptr inbounds %struct.request, %struct.request* %935, i32 0, i32 18
  %937 = bitcast %struct.sockaddr_in* %936 to %struct.sockaddr*
  %938 = load %struct.request*, %struct.request** %3, align 8
  %939 = getelementptr inbounds %struct.request, %struct.request* %938, i32 0, i32 19
  %940 = load i32, i32* %939, align 8
  %941 = call i64 @sendto(i32 %923, i8* %927, i64 %934, i32 0, %struct.sockaddr* %937, i32 %940)
  %942 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %942, i8 zeroext 1)
  %943 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %943)
  store i32 1, i32* %2, align 4
  br label %1824

944:                                              ; preds = %891
  br label %993

945:                                              ; preds = %880
  %946 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  %947 = icmp ne i8 %946, 0
  br i1 %947, label %992, label %948

948:                                              ; preds = %945
  %949 = call zeroext i16 @htons(i16 zeroext 5) #18
  %950 = load %struct.request*, %struct.request** %3, align 8
  %951 = getelementptr inbounds %struct.request, %struct.request* %950, i32 0, i32 21
  %952 = bitcast %union.anon.9* %951 to %struct.tftperror*
  %953 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %952, i32 0, i32 0
  store i16 %949, i16* %953, align 8
  %954 = call zeroext i16 @htons(i16 zeroext 2) #18
  %955 = load %struct.request*, %struct.request** %3, align 8
  %956 = getelementptr inbounds %struct.request, %struct.request* %955, i32 0, i32 21
  %957 = bitcast %union.anon.9* %956 to %struct.tftperror*
  %958 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %957, i32 0, i32 1
  store i16 %954, i16* %958, align 2
  %959 = load %struct.request*, %struct.request** %3, align 8
  %960 = getelementptr inbounds %struct.request, %struct.request* %959, i32 0, i32 21
  %961 = bitcast %union.anon.9* %960 to %struct.tftperror*
  %962 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %961, i32 0, i32 2
  %963 = getelementptr inbounds [508 x i8], [508 x i8]* %962, i32 0, i32 0
  %964 = call i8* @strcpy(i8* %963, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0)) #2
  %965 = load %struct.request*, %struct.request** %3, align 8
  %966 = getelementptr inbounds %struct.request, %struct.request* %965, i32 0, i32 3
  %967 = load i8, i8* %966, align 2
  %968 = zext i8 %967 to i64
  %969 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %968
  %970 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %969, i32 0, i32 0
  %971 = load i32, i32* %970, align 4
  %972 = load %struct.request*, %struct.request** %3, align 8
  %973 = getelementptr inbounds %struct.request, %struct.request* %972, i32 0, i32 21
  %974 = bitcast %union.anon.9* %973 to %struct.tftperror*
  %975 = bitcast %struct.tftperror* %974 to i8*
  %976 = load %struct.request*, %struct.request** %3, align 8
  %977 = getelementptr inbounds %struct.request, %struct.request* %976, i32 0, i32 21
  %978 = bitcast %union.anon.9* %977 to %struct.tftperror*
  %979 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %978, i32 0, i32 2
  %980 = getelementptr inbounds [508 x i8], [508 x i8]* %979, i32 0, i32 0
  %981 = call i64 @strlen(i8* %980) #16
  %982 = add i64 %981, 5
  %983 = load %struct.request*, %struct.request** %3, align 8
  %984 = getelementptr inbounds %struct.request, %struct.request* %983, i32 0, i32 18
  %985 = bitcast %struct.sockaddr_in* %984 to %struct.sockaddr*
  %986 = load %struct.request*, %struct.request** %3, align 8
  %987 = getelementptr inbounds %struct.request, %struct.request* %986, i32 0, i32 19
  %988 = load i32, i32* %987, align 8
  %989 = call i64 @sendto(i32 %971, i8* %975, i64 %982, i32 0, %struct.sockaddr* %985, i32 %988)
  %990 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %990, i8 zeroext 1)
  %991 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %991)
  store i32 1, i32* %2, align 4
  br label %1824

992:                                              ; preds = %945
  br label %993

993:                                              ; preds = %992, %944
  %994 = call i32* @__errno_location() #18
  store i32 0, i32* %994, align 4
  %995 = load %struct.request*, %struct.request** %3, align 8
  %996 = getelementptr inbounds %struct.request, %struct.request* %995, i32 0, i32 8
  %997 = load i8*, i8** %996, align 8
  %998 = call i32 @strcasecmp(i8* %997, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #16
  %999 = icmp ne i32 %998, 0
  br i1 %999, label %1000, label %1013

1000:                                             ; preds = %993
  %1001 = load %struct.request*, %struct.request** %3, align 8
  %1002 = getelementptr inbounds %struct.request, %struct.request* %1001, i32 0, i32 8
  %1003 = load i8*, i8** %1002, align 8
  %1004 = call i32 @strcasecmp(i8* %1003, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #16
  %1005 = icmp ne i32 %1004, 0
  br i1 %1005, label %1006, label %1013

1006:                                             ; preds = %1000
  %1007 = load %struct.request*, %struct.request** %3, align 8
  %1008 = getelementptr inbounds %struct.request, %struct.request* %1007, i32 0, i32 5
  %1009 = getelementptr inbounds [256 x i8], [256 x i8]* %1008, i32 0, i32 0
  %1010 = call %struct._IO_FILE* @fopen(i8* %1009, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  %1011 = load %struct.request*, %struct.request** %3, align 8
  %1012 = getelementptr inbounds %struct.request, %struct.request* %1011, i32 0, i32 6
  store %struct._IO_FILE* %1010, %struct._IO_FILE** %1012, align 8
  br label %1020

1013:                                             ; preds = %1000, %993
  %1014 = load %struct.request*, %struct.request** %3, align 8
  %1015 = getelementptr inbounds %struct.request, %struct.request* %1014, i32 0, i32 5
  %1016 = getelementptr inbounds [256 x i8], [256 x i8]* %1015, i32 0, i32 0
  %1017 = call %struct._IO_FILE* @fopen(i8* %1016, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  %1018 = load %struct.request*, %struct.request** %3, align 8
  %1019 = getelementptr inbounds %struct.request, %struct.request* %1018, i32 0, i32 6
  store %struct._IO_FILE* %1017, %struct._IO_FILE** %1019, align 8
  br label %1020

1020:                                             ; preds = %1013, %1006
  %1021 = call i32* @__errno_location() #18
  %1022 = load i32, i32* %1021, align 4
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1029, label %1024

1024:                                             ; preds = %1020
  %1025 = load %struct.request*, %struct.request** %3, align 8
  %1026 = getelementptr inbounds %struct.request, %struct.request* %1025, i32 0, i32 6
  %1027 = load %struct._IO_FILE*, %struct._IO_FILE** %1026, align 8
  %1028 = icmp ne %struct._IO_FILE* %1027, null
  br i1 %1028, label %1073, label %1029

1029:                                             ; preds = %1024, %1020
  %1030 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1031 = load %struct.request*, %struct.request** %3, align 8
  %1032 = getelementptr inbounds %struct.request, %struct.request* %1031, i32 0, i32 21
  %1033 = bitcast %union.anon.9* %1032 to %struct.tftperror*
  %1034 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1033, i32 0, i32 0
  store i16 %1030, i16* %1034, align 8
  %1035 = call zeroext i16 @htons(i16 zeroext 1) #18
  %1036 = load %struct.request*, %struct.request** %3, align 8
  %1037 = getelementptr inbounds %struct.request, %struct.request* %1036, i32 0, i32 21
  %1038 = bitcast %union.anon.9* %1037 to %struct.tftperror*
  %1039 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1038, i32 0, i32 1
  store i16 %1035, i16* %1039, align 2
  %1040 = load %struct.request*, %struct.request** %3, align 8
  %1041 = getelementptr inbounds %struct.request, %struct.request* %1040, i32 0, i32 21
  %1042 = bitcast %union.anon.9* %1041 to %struct.tftperror*
  %1043 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1042, i32 0, i32 2
  %1044 = getelementptr inbounds [508 x i8], [508 x i8]* %1043, i32 0, i32 0
  %1045 = call i8* @strcpy(i8* %1044, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #2
  %1046 = load %struct.request*, %struct.request** %3, align 8
  %1047 = getelementptr inbounds %struct.request, %struct.request* %1046, i32 0, i32 3
  %1048 = load i8, i8* %1047, align 2
  %1049 = zext i8 %1048 to i64
  %1050 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1049
  %1051 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1050, i32 0, i32 0
  %1052 = load i32, i32* %1051, align 4
  %1053 = load %struct.request*, %struct.request** %3, align 8
  %1054 = getelementptr inbounds %struct.request, %struct.request* %1053, i32 0, i32 21
  %1055 = bitcast %union.anon.9* %1054 to %struct.tftperror*
  %1056 = bitcast %struct.tftperror* %1055 to i8*
  %1057 = load %struct.request*, %struct.request** %3, align 8
  %1058 = getelementptr inbounds %struct.request, %struct.request* %1057, i32 0, i32 21
  %1059 = bitcast %union.anon.9* %1058 to %struct.tftperror*
  %1060 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1059, i32 0, i32 2
  %1061 = getelementptr inbounds [508 x i8], [508 x i8]* %1060, i32 0, i32 0
  %1062 = call i64 @strlen(i8* %1061) #16
  %1063 = add i64 %1062, 5
  %1064 = load %struct.request*, %struct.request** %3, align 8
  %1065 = getelementptr inbounds %struct.request, %struct.request* %1064, i32 0, i32 18
  %1066 = bitcast %struct.sockaddr_in* %1065 to %struct.sockaddr*
  %1067 = load %struct.request*, %struct.request** %3, align 8
  %1068 = getelementptr inbounds %struct.request, %struct.request* %1067, i32 0, i32 19
  %1069 = load i32, i32* %1068, align 8
  %1070 = call i64 @sendto(i32 %1052, i8* %1056, i64 %1063, i32 0, %struct.sockaddr* %1066, i32 %1069)
  %1071 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1071, i8 zeroext 1)
  %1072 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1072)
  store i32 1, i32* %2, align 4
  br label %1824

1073:                                             ; preds = %1024
  br label %1074

1074:                                             ; preds = %1073, %829
  %1075 = load %struct.request*, %struct.request** %3, align 8
  %1076 = getelementptr inbounds %struct.request, %struct.request* %1075, i32 0, i32 6
  %1077 = load %struct._IO_FILE*, %struct._IO_FILE** %1076, align 8
  %1078 = load %struct.request*, %struct.request** %3, align 8
  %1079 = getelementptr inbounds %struct.request, %struct.request* %1078, i32 0, i32 10
  %1080 = load i32, i32* %1079, align 4
  %1081 = mul i32 5, %1080
  %1082 = zext i32 %1081 to i64
  %1083 = call i32 @setvbuf(%struct._IO_FILE* %1077, i8* null, i32 0, i64 %1082) #2
  %1084 = load i8*, i8** %7, align 8
  %1085 = load i8, i8* %1084, align 1
  %1086 = icmp ne i8 %1085, 0
  br i1 %1086, label %1087, label %1397

1087:                                             ; preds = %1074
  %1088 = load %struct.request*, %struct.request** %3, align 8
  %1089 = getelementptr inbounds %struct.request, %struct.request* %1088, i32 0, i32 21
  %1090 = bitcast %union.anon.9* %1089 to %struct.message*
  %1091 = getelementptr inbounds %struct.message, %struct.message* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds [514 x i8], [514 x i8]* %1091, i32 0, i32 0
  store i8* %1092, i8** %13, align 8
  %1093 = call zeroext i16 @htons(i16 zeroext 6) #18
  %1094 = load %struct.request*, %struct.request** %3, align 8
  %1095 = getelementptr inbounds %struct.request, %struct.request* %1094, i32 0, i32 21
  %1096 = bitcast %union.anon.9* %1095 to %struct.message*
  %1097 = getelementptr inbounds %struct.message, %struct.message* %1096, i32 0, i32 0
  store i16 %1093, i16* %1097, align 8
  br label %1098

1098:                                             ; preds = %1357, %1087
  %1099 = load i8*, i8** %7, align 8
  %1100 = load i8, i8* %1099, align 1
  %1101 = icmp ne i8 %1100, 0
  br i1 %1101, label %1102, label %1363

1102:                                             ; preds = %1098
  %1103 = load i8*, i8** %7, align 8
  %1104 = call i32 @strcasecmp(i8* %1103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)) #16
  %1105 = icmp ne i32 %1104, 0
  br i1 %1105, label %1147, label %1106

1106:                                             ; preds = %1102
  %1107 = load i8*, i8** %13, align 8
  %1108 = load i8*, i8** %7, align 8
  %1109 = call i8* @strcpy(i8* %1107, i8* %1108) #2
  %1110 = load i8*, i8** %13, align 8
  %1111 = call i64 @strlen(i8* %1110) #16
  %1112 = add i64 %1111, 1
  %1113 = load i8*, i8** %13, align 8
  %1114 = getelementptr inbounds i8, i8* %1113, i64 %1112
  store i8* %1114, i8** %13, align 8
  %1115 = load i8*, i8** %7, align 8
  %1116 = call i64 @strlen(i8* %1115) #16
  %1117 = add i64 %1116, 1
  %1118 = load i8*, i8** %7, align 8
  %1119 = getelementptr inbounds i8, i8* %1118, i64 %1117
  store i8* %1119, i8** %7, align 8
  %1120 = load i8*, i8** %7, align 8
  %1121 = call i64 @atol(i8* %1120) #16
  %1122 = trunc i64 %1121 to i32
  store i32 %1122, i32* %14, align 4
  %1123 = load i32, i32* %14, align 4
  %1124 = icmp ult i32 %1123, 512
  br i1 %1124, label %1125, label %1126

1125:                                             ; preds = %1106
  store i32 512, i32* %14, align 4
  br label %1135

1126:                                             ; preds = %1106
  %1127 = load i32, i32* %14, align 4
  %1128 = load i16, i16* @blksize, align 2
  %1129 = zext i16 %1128 to i32
  %1130 = icmp ugt i32 %1127, %1129
  br i1 %1130, label %1131, label %1134

1131:                                             ; preds = %1126
  %1132 = load i16, i16* @blksize, align 2
  %1133 = zext i16 %1132 to i32
  store i32 %1133, i32* %14, align 4
  br label %1134

1134:                                             ; preds = %1131, %1126
  br label %1135

1135:                                             ; preds = %1134, %1125
  %1136 = load i32, i32* %14, align 4
  %1137 = load %struct.request*, %struct.request** %3, align 8
  %1138 = getelementptr inbounds %struct.request, %struct.request* %1137, i32 0, i32 10
  store i32 %1136, i32* %1138, align 4
  %1139 = load i8*, i8** %13, align 8
  %1140 = load i32, i32* %14, align 4
  %1141 = call i32 (i8*, i8*, ...) @sprintf(i8* %1139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1140) #2
  %1142 = load i8*, i8** %13, align 8
  %1143 = call i64 @strlen(i8* %1142) #16
  %1144 = add i64 %1143, 1
  %1145 = load i8*, i8** %13, align 8
  %1146 = getelementptr inbounds i8, i8* %1145, i64 %1144
  store i8* %1146, i8** %13, align 8
  br label %1357

1147:                                             ; preds = %1102
  %1148 = load i8*, i8** %7, align 8
  %1149 = call i32 @strcasecmp(i8* %1148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #16
  %1150 = icmp ne i32 %1149, 0
  br i1 %1150, label %1307, label %1151

1151:                                             ; preds = %1147
  %1152 = load i8*, i8** %13, align 8
  %1153 = load i8*, i8** %7, align 8
  %1154 = call i8* @strcpy(i8* %1152, i8* %1153) #2
  %1155 = load i8*, i8** %13, align 8
  %1156 = call i64 @strlen(i8* %1155) #16
  %1157 = add i64 %1156, 1
  %1158 = load i8*, i8** %13, align 8
  %1159 = getelementptr inbounds i8, i8* %1158, i64 %1157
  store i8* %1159, i8** %13, align 8
  %1160 = load i8*, i8** %7, align 8
  %1161 = call i64 @strlen(i8* %1160) #16
  %1162 = add i64 %1161, 1
  %1163 = load i8*, i8** %7, align 8
  %1164 = getelementptr inbounds i8, i8* %1163, i64 %1162
  store i8* %1164, i8** %7, align 8
  %1165 = load %struct.packet*, %struct.packet** @datain, align 8
  %1166 = getelementptr inbounds %struct.packet, %struct.packet* %1165, i32 0, i32 0
  %1167 = load i16, i16* %1166, align 2
  %1168 = call zeroext i16 @ntohs(i16 zeroext %1167) #18
  %1169 = zext i16 %1168 to i32
  %1170 = icmp eq i32 %1169, 1
  br i1 %1170, label %1171, label %1293

1171:                                             ; preds = %1151
  %1172 = load %struct.request*, %struct.request** %3, align 8
  %1173 = getelementptr inbounds %struct.request, %struct.request* %1172, i32 0, i32 6
  %1174 = load %struct._IO_FILE*, %struct._IO_FILE** %1173, align 8
  %1175 = call i32 @fseek(%struct._IO_FILE* %1174, i64 0, i32 2)
  %1176 = icmp ne i32 %1175, 0
  br i1 %1176, label %1247, label %1177

1177:                                             ; preds = %1171
  %1178 = load %struct.request*, %struct.request** %3, align 8
  %1179 = getelementptr inbounds %struct.request, %struct.request* %1178, i32 0, i32 6
  %1180 = load %struct._IO_FILE*, %struct._IO_FILE** %1179, align 8
  %1181 = call i64 @ftell(%struct._IO_FILE* %1180)
  %1182 = icmp sge i64 %1181, 0
  br i1 %1182, label %1183, label %1201

1183:                                             ; preds = %1177
  %1184 = load %struct.request*, %struct.request** %3, align 8
  %1185 = getelementptr inbounds %struct.request, %struct.request* %1184, i32 0, i32 6
  %1186 = load %struct._IO_FILE*, %struct._IO_FILE** %1185, align 8
  %1187 = call i64 @ftell(%struct._IO_FILE* %1186)
  %1188 = trunc i64 %1187 to i32
  %1189 = load %struct.request*, %struct.request** %3, align 8
  %1190 = getelementptr inbounds %struct.request, %struct.request* %1189, i32 0, i32 9
  store i32 %1188, i32* %1190, align 8
  %1191 = load i8*, i8** %13, align 8
  %1192 = load %struct.request*, %struct.request** %3, align 8
  %1193 = getelementptr inbounds %struct.request, %struct.request* %1192, i32 0, i32 9
  %1194 = load i32, i32* %1193, align 8
  %1195 = call i32 (i8*, i8*, ...) @sprintf(i8* %1191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1194) #2
  %1196 = load i8*, i8** %13, align 8
  %1197 = call i64 @strlen(i8* %1196) #16
  %1198 = add i64 %1197, 1
  %1199 = load i8*, i8** %13, align 8
  %1200 = getelementptr inbounds i8, i8* %1199, i64 %1198
  store i8* %1200, i8** %13, align 8
  br label %1246

1201:                                             ; preds = %1177
  %1202 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1203 = load %struct.request*, %struct.request** %3, align 8
  %1204 = getelementptr inbounds %struct.request, %struct.request* %1203, i32 0, i32 21
  %1205 = bitcast %union.anon.9* %1204 to %struct.tftperror*
  %1206 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1205, i32 0, i32 0
  store i16 %1202, i16* %1206, align 8
  %1207 = call zeroext i16 @htons(i16 zeroext 2) #18
  %1208 = load %struct.request*, %struct.request** %3, align 8
  %1209 = getelementptr inbounds %struct.request, %struct.request* %1208, i32 0, i32 21
  %1210 = bitcast %union.anon.9* %1209 to %struct.tftperror*
  %1211 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1210, i32 0, i32 1
  store i16 %1207, i16* %1211, align 2
  %1212 = load %struct.request*, %struct.request** %3, align 8
  %1213 = getelementptr inbounds %struct.request, %struct.request* %1212, i32 0, i32 21
  %1214 = bitcast %union.anon.9* %1213 to %struct.tftperror*
  %1215 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1214, i32 0, i32 2
  %1216 = getelementptr inbounds [508 x i8], [508 x i8]* %1215, i32 0, i32 0
  %1217 = call i8* @strcpy(i8* %1216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #2
  %1218 = load %struct.request*, %struct.request** %3, align 8
  %1219 = getelementptr inbounds %struct.request, %struct.request* %1218, i32 0, i32 3
  %1220 = load i8, i8* %1219, align 2
  %1221 = zext i8 %1220 to i64
  %1222 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1221
  %1223 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1222, i32 0, i32 0
  %1224 = load i32, i32* %1223, align 4
  %1225 = load %struct.request*, %struct.request** %3, align 8
  %1226 = getelementptr inbounds %struct.request, %struct.request* %1225, i32 0, i32 21
  %1227 = bitcast %union.anon.9* %1226 to %struct.tftperror*
  %1228 = bitcast %struct.tftperror* %1227 to i8*
  %1229 = load %struct.request*, %struct.request** %3, align 8
  %1230 = getelementptr inbounds %struct.request, %struct.request* %1229, i32 0, i32 21
  %1231 = bitcast %union.anon.9* %1230 to %struct.tftperror*
  %1232 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1231, i32 0, i32 2
  %1233 = getelementptr inbounds [508 x i8], [508 x i8]* %1232, i32 0, i32 0
  %1234 = call i64 @strlen(i8* %1233) #16
  %1235 = add i64 %1234, 5
  %1236 = load %struct.request*, %struct.request** %3, align 8
  %1237 = getelementptr inbounds %struct.request, %struct.request* %1236, i32 0, i32 18
  %1238 = bitcast %struct.sockaddr_in* %1237 to %struct.sockaddr*
  %1239 = load %struct.request*, %struct.request** %3, align 8
  %1240 = getelementptr inbounds %struct.request, %struct.request* %1239, i32 0, i32 19
  %1241 = load i32, i32* %1240, align 8
  %1242 = call i64 @sendto(i32 %1224, i8* %1228, i64 %1235, i32 0, %struct.sockaddr* %1238, i32 %1241)
  %1243 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1243, i8 zeroext 1)
  %1244 = load %struct.request*, %struct.request** %3, align 8
  %1245 = getelementptr inbounds %struct.request, %struct.request* %1244, i32 0, i32 2
  store i8 -1, i8* %1245, align 1
  br label %1363

1246:                                             ; preds = %1183
  br label %1292

1247:                                             ; preds = %1171
  %1248 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1249 = load %struct.request*, %struct.request** %3, align 8
  %1250 = getelementptr inbounds %struct.request, %struct.request* %1249, i32 0, i32 21
  %1251 = bitcast %union.anon.9* %1250 to %struct.tftperror*
  %1252 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1251, i32 0, i32 0
  store i16 %1248, i16* %1252, align 8
  %1253 = call zeroext i16 @htons(i16 zeroext 2) #18
  %1254 = load %struct.request*, %struct.request** %3, align 8
  %1255 = getelementptr inbounds %struct.request, %struct.request* %1254, i32 0, i32 21
  %1256 = bitcast %union.anon.9* %1255 to %struct.tftperror*
  %1257 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1256, i32 0, i32 1
  store i16 %1253, i16* %1257, align 2
  %1258 = load %struct.request*, %struct.request** %3, align 8
  %1259 = getelementptr inbounds %struct.request, %struct.request* %1258, i32 0, i32 21
  %1260 = bitcast %union.anon.9* %1259 to %struct.tftperror*
  %1261 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1260, i32 0, i32 2
  %1262 = getelementptr inbounds [508 x i8], [508 x i8]* %1261, i32 0, i32 0
  %1263 = call i8* @strcpy(i8* %1262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #2
  %1264 = load %struct.request*, %struct.request** %3, align 8
  %1265 = getelementptr inbounds %struct.request, %struct.request* %1264, i32 0, i32 3
  %1266 = load i8, i8* %1265, align 2
  %1267 = zext i8 %1266 to i64
  %1268 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1267
  %1269 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1268, i32 0, i32 0
  %1270 = load i32, i32* %1269, align 4
  %1271 = load %struct.request*, %struct.request** %3, align 8
  %1272 = getelementptr inbounds %struct.request, %struct.request* %1271, i32 0, i32 21
  %1273 = bitcast %union.anon.9* %1272 to %struct.tftperror*
  %1274 = bitcast %struct.tftperror* %1273 to i8*
  %1275 = load %struct.request*, %struct.request** %3, align 8
  %1276 = getelementptr inbounds %struct.request, %struct.request* %1275, i32 0, i32 21
  %1277 = bitcast %union.anon.9* %1276 to %struct.tftperror*
  %1278 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1277, i32 0, i32 2
  %1279 = getelementptr inbounds [508 x i8], [508 x i8]* %1278, i32 0, i32 0
  %1280 = call i64 @strlen(i8* %1279) #16
  %1281 = add i64 %1280, 5
  %1282 = load %struct.request*, %struct.request** %3, align 8
  %1283 = getelementptr inbounds %struct.request, %struct.request* %1282, i32 0, i32 18
  %1284 = bitcast %struct.sockaddr_in* %1283 to %struct.sockaddr*
  %1285 = load %struct.request*, %struct.request** %3, align 8
  %1286 = getelementptr inbounds %struct.request, %struct.request* %1285, i32 0, i32 19
  %1287 = load i32, i32* %1286, align 8
  %1288 = call i64 @sendto(i32 %1270, i8* %1274, i64 %1281, i32 0, %struct.sockaddr* %1284, i32 %1287)
  %1289 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1289, i8 zeroext 1)
  %1290 = load %struct.request*, %struct.request** %3, align 8
  %1291 = getelementptr inbounds %struct.request, %struct.request* %1290, i32 0, i32 2
  store i8 -1, i8* %1291, align 1
  br label %1363

1292:                                             ; preds = %1246
  br label %1306

1293:                                             ; preds = %1151
  %1294 = load %struct.request*, %struct.request** %3, align 8
  %1295 = getelementptr inbounds %struct.request, %struct.request* %1294, i32 0, i32 9
  store i32 0, i32* %1295, align 8
  %1296 = load i8*, i8** %13, align 8
  %1297 = load %struct.request*, %struct.request** %3, align 8
  %1298 = getelementptr inbounds %struct.request, %struct.request* %1297, i32 0, i32 9
  %1299 = load i32, i32* %1298, align 8
  %1300 = call i32 (i8*, i8*, ...) @sprintf(i8* %1296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1299) #2
  %1301 = load i8*, i8** %13, align 8
  %1302 = call i64 @strlen(i8* %1301) #16
  %1303 = add i64 %1302, 1
  %1304 = load i8*, i8** %13, align 8
  %1305 = getelementptr inbounds i8, i8* %1304, i64 %1303
  store i8* %1305, i8** %13, align 8
  br label %1306

1306:                                             ; preds = %1293, %1292
  br label %1356

1307:                                             ; preds = %1147
  %1308 = load i8*, i8** %7, align 8
  %1309 = call i32 @strcasecmp(i8* %1308, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #16
  %1310 = icmp ne i32 %1309, 0
  br i1 %1310, label %1355, label %1311

1311:                                             ; preds = %1307
  %1312 = load i8*, i8** %13, align 8
  %1313 = load i8*, i8** %7, align 8
  %1314 = call i8* @strcpy(i8* %1312, i8* %1313) #2
  %1315 = load i8*, i8** %13, align 8
  %1316 = call i64 @strlen(i8* %1315) #16
  %1317 = add i64 %1316, 1
  %1318 = load i8*, i8** %13, align 8
  %1319 = getelementptr inbounds i8, i8* %1318, i64 %1317
  store i8* %1319, i8** %13, align 8
  %1320 = load i8*, i8** %7, align 8
  %1321 = call i64 @strlen(i8* %1320) #16
  %1322 = add i64 %1321, 1
  %1323 = load i8*, i8** %7, align 8
  %1324 = getelementptr inbounds i8, i8* %1323, i64 %1322
  store i8* %1324, i8** %7, align 8
  %1325 = load i8*, i8** %7, align 8
  %1326 = call i32 @atoi(i8* %1325) #16
  store i32 %1326, i32* %14, align 4
  %1327 = load i32, i32* %14, align 4
  %1328 = icmp ult i32 %1327, 1
  br i1 %1328, label %1329, label %1330

1329:                                             ; preds = %1311
  store i32 1, i32* %14, align 4
  br label %1335

1330:                                             ; preds = %1311
  %1331 = load i32, i32* %14, align 4
  %1332 = icmp ugt i32 %1331, 255
  br i1 %1332, label %1333, label %1334

1333:                                             ; preds = %1330
  store i32 255, i32* %14, align 4
  br label %1334

1334:                                             ; preds = %1333, %1330
  br label %1335

1335:                                             ; preds = %1334, %1329
  %1336 = load i32, i32* %14, align 4
  %1337 = load %struct.request*, %struct.request** %3, align 8
  %1338 = getelementptr inbounds %struct.request, %struct.request* %1337, i32 0, i32 11
  store i32 %1336, i32* %1338, align 8
  %1339 = call i64 @time(i64* null) #2
  %1340 = load %struct.request*, %struct.request** %3, align 8
  %1341 = getelementptr inbounds %struct.request, %struct.request* %1340, i32 0, i32 11
  %1342 = load i32, i32* %1341, align 8
  %1343 = zext i32 %1342 to i64
  %1344 = add nsw i64 %1339, %1343
  %1345 = load %struct.request*, %struct.request** %3, align 8
  %1346 = getelementptr inbounds %struct.request, %struct.request* %1345, i32 0, i32 4
  store i64 %1344, i64* %1346, align 8
  %1347 = load i8*, i8** %13, align 8
  %1348 = load i32, i32* %14, align 4
  %1349 = call i32 (i8*, i8*, ...) @sprintf(i8* %1347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1348) #2
  %1350 = load i8*, i8** %13, align 8
  %1351 = call i64 @strlen(i8* %1350) #16
  %1352 = add i64 %1351, 1
  %1353 = load i8*, i8** %13, align 8
  %1354 = getelementptr inbounds i8, i8* %1353, i64 %1352
  store i8* %1354, i8** %13, align 8
  br label %1355

1355:                                             ; preds = %1335, %1307
  br label %1356

1356:                                             ; preds = %1355, %1306
  br label %1357

1357:                                             ; preds = %1356, %1135
  %1358 = load i8*, i8** %7, align 8
  %1359 = call i64 @strlen(i8* %1358) #16
  %1360 = add i64 %1359, 1
  %1361 = load i8*, i8** %7, align 8
  %1362 = getelementptr inbounds i8, i8* %1361, i64 %1360
  store i8* %1362, i8** %7, align 8
  br label %1098

1363:                                             ; preds = %1247, %1201, %1098
  %1364 = call i32* @__errno_location() #18
  store i32 0, i32* %1364, align 4
  %1365 = load i8*, i8** %13, align 8
  %1366 = ptrtoint i8* %1365 to i64
  %1367 = load %struct.request*, %struct.request** %3, align 8
  %1368 = getelementptr inbounds %struct.request, %struct.request* %1367, i32 0, i32 21
  %1369 = bitcast %union.anon.9* %1368 to %struct.acknowledgement*
  %1370 = ptrtoint %struct.acknowledgement* %1369 to i64
  %1371 = sub i64 %1366, %1370
  %1372 = trunc i64 %1371 to i32
  %1373 = load %struct.request*, %struct.request** %3, align 8
  %1374 = getelementptr inbounds %struct.request, %struct.request* %1373, i32 0, i32 17
  store i32 %1372, i32* %1374, align 4
  %1375 = load %struct.request*, %struct.request** %3, align 8
  %1376 = getelementptr inbounds %struct.request, %struct.request* %1375, i32 0, i32 3
  %1377 = load i8, i8* %1376, align 2
  %1378 = zext i8 %1377 to i64
  %1379 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1378
  %1380 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1379, i32 0, i32 0
  %1381 = load i32, i32* %1380, align 4
  %1382 = load %struct.request*, %struct.request** %3, align 8
  %1383 = getelementptr inbounds %struct.request, %struct.request* %1382, i32 0, i32 21
  %1384 = bitcast %union.anon.9* %1383 to %struct.acknowledgement*
  %1385 = bitcast %struct.acknowledgement* %1384 to i8*
  %1386 = load %struct.request*, %struct.request** %3, align 8
  %1387 = getelementptr inbounds %struct.request, %struct.request* %1386, i32 0, i32 17
  %1388 = load i32, i32* %1387, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = load %struct.request*, %struct.request** %3, align 8
  %1391 = getelementptr inbounds %struct.request, %struct.request* %1390, i32 0, i32 18
  %1392 = bitcast %struct.sockaddr_in* %1391 to %struct.sockaddr*
  %1393 = load %struct.request*, %struct.request** %3, align 8
  %1394 = getelementptr inbounds %struct.request, %struct.request* %1393, i32 0, i32 19
  %1395 = load i32, i32* %1394, align 8
  %1396 = call i64 @sendto(i32 %1381, i8* %1385, i64 %1389, i32 0, %struct.sockaddr* %1392, i32 %1395)
  br label %1441

1397:                                             ; preds = %1074
  %1398 = load %struct.packet*, %struct.packet** @datain, align 8
  %1399 = getelementptr inbounds %struct.packet, %struct.packet* %1398, i32 0, i32 0
  %1400 = load i16, i16* %1399, align 2
  %1401 = call zeroext i16 @htons(i16 zeroext %1400) #18
  %1402 = zext i16 %1401 to i32
  %1403 = icmp eq i32 %1402, 2
  br i1 %1403, label %1404, label %1440

1404:                                             ; preds = %1397
  %1405 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1406 = load %struct.request*, %struct.request** %3, align 8
  %1407 = getelementptr inbounds %struct.request, %struct.request* %1406, i32 0, i32 21
  %1408 = bitcast %union.anon.9* %1407 to %struct.acknowledgement*
  %1409 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1408, i32 0, i32 0
  store i16 %1405, i16* %1409, align 8
  %1410 = call zeroext i16 @htons(i16 zeroext 0) #18
  %1411 = load %struct.request*, %struct.request** %3, align 8
  %1412 = getelementptr inbounds %struct.request, %struct.request* %1411, i32 0, i32 21
  %1413 = bitcast %union.anon.9* %1412 to %struct.acknowledgement*
  %1414 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1413, i32 0, i32 1
  store i16 %1410, i16* %1414, align 2
  %1415 = call i32* @__errno_location() #18
  store i32 0, i32* %1415, align 4
  %1416 = load %struct.request*, %struct.request** %3, align 8
  %1417 = getelementptr inbounds %struct.request, %struct.request* %1416, i32 0, i32 17
  store i32 4, i32* %1417, align 4
  %1418 = load %struct.request*, %struct.request** %3, align 8
  %1419 = getelementptr inbounds %struct.request, %struct.request* %1418, i32 0, i32 3
  %1420 = load i8, i8* %1419, align 2
  %1421 = zext i8 %1420 to i64
  %1422 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1421
  %1423 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1422, i32 0, i32 0
  %1424 = load i32, i32* %1423, align 4
  %1425 = load %struct.request*, %struct.request** %3, align 8
  %1426 = getelementptr inbounds %struct.request, %struct.request* %1425, i32 0, i32 21
  %1427 = bitcast %union.anon.9* %1426 to %struct.acknowledgement*
  %1428 = bitcast %struct.acknowledgement* %1427 to i8*
  %1429 = load %struct.request*, %struct.request** %3, align 8
  %1430 = getelementptr inbounds %struct.request, %struct.request* %1429, i32 0, i32 17
  %1431 = load i32, i32* %1430, align 4
  %1432 = sext i32 %1431 to i64
  %1433 = load %struct.request*, %struct.request** %3, align 8
  %1434 = getelementptr inbounds %struct.request, %struct.request* %1433, i32 0, i32 18
  %1435 = bitcast %struct.sockaddr_in* %1434 to %struct.sockaddr*
  %1436 = load %struct.request*, %struct.request** %3, align 8
  %1437 = getelementptr inbounds %struct.request, %struct.request* %1436, i32 0, i32 19
  %1438 = load i32, i32* %1437, align 8
  %1439 = call i64 @sendto(i32 %1424, i8* %1428, i64 %1432, i32 0, %struct.sockaddr* %1435, i32 %1438)
  br label %1440

1440:                                             ; preds = %1404, %1397
  br label %1441

1441:                                             ; preds = %1440, %1363
  %1442 = call i32* @__errno_location() #18
  %1443 = load i32, i32* %1442, align 4
  %1444 = icmp ne i32 %1443, 0
  br i1 %1444, label %1445, label %1456

1445:                                             ; preds = %1441
  %1446 = load %struct.request*, %struct.request** %3, align 8
  %1447 = getelementptr inbounds %struct.request, %struct.request* %1446, i32 0, i32 21
  %1448 = bitcast %union.anon.9* %1447 to %struct.tftperror*
  %1449 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1448, i32 0, i32 2
  %1450 = getelementptr inbounds [508 x i8], [508 x i8]* %1449, i32 0, i32 0
  %1451 = call i32 (i8*, i8*, ...) @sprintf(i8* %1450, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0)) #2
  %1452 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1452, i8 zeroext 1)
  %1453 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1453)
  %1454 = call i32* @__errno_location() #18
  %1455 = load i32, i32* %1454, align 4
  store i32 %1455, i32* %2, align 4
  br label %1824

1456:                                             ; preds = %1441
  %1457 = load %struct.packet*, %struct.packet** @datain, align 8
  %1458 = getelementptr inbounds %struct.packet, %struct.packet* %1457, i32 0, i32 0
  %1459 = load i16, i16* %1458, align 2
  %1460 = call zeroext i16 @ntohs(i16 zeroext %1459) #18
  %1461 = zext i16 %1460 to i32
  %1462 = icmp eq i32 %1461, 1
  br i1 %1462, label %1463, label %1823

1463:                                             ; preds = %1456
  %1464 = call i32* @__errno_location() #18
  store i32 0, i32* %1464, align 4
  %1465 = load %struct.request*, %struct.request** %3, align 8
  %1466 = getelementptr inbounds %struct.request, %struct.request* %1465, i32 0, i32 10
  %1467 = load i32, i32* %1466, align 4
  %1468 = add i32 %1467, 4
  %1469 = zext i32 %1468 to i64
  %1470 = call noalias i8* @calloc(i64 1, i64 %1469) #2
  %1471 = bitcast i8* %1470 to %struct.packet*
  %1472 = load %struct.request*, %struct.request** %3, align 8
  %1473 = getelementptr inbounds %struct.request, %struct.request* %1472, i32 0, i32 20
  %1474 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1473, i64 0, i64 0
  store %struct.packet* %1471, %struct.packet** %1474, align 8
  %1475 = load %struct.request*, %struct.request** %3, align 8
  %1476 = getelementptr inbounds %struct.request, %struct.request* %1475, i32 0, i32 10
  %1477 = load i32, i32* %1476, align 4
  %1478 = add i32 %1477, 4
  %1479 = zext i32 %1478 to i64
  %1480 = call noalias i8* @calloc(i64 1, i64 %1479) #2
  %1481 = bitcast i8* %1480 to %struct.packet*
  %1482 = load %struct.request*, %struct.request** %3, align 8
  %1483 = getelementptr inbounds %struct.request, %struct.request* %1482, i32 0, i32 20
  %1484 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1483, i64 0, i64 1
  store %struct.packet* %1481, %struct.packet** %1484, align 8
  %1485 = call i32* @__errno_location() #18
  %1486 = load i32, i32* %1485, align 4
  %1487 = icmp ne i32 %1486, 0
  br i1 %1487, label %1500, label %1488

1488:                                             ; preds = %1463
  %1489 = load %struct.request*, %struct.request** %3, align 8
  %1490 = getelementptr inbounds %struct.request, %struct.request* %1489, i32 0, i32 20
  %1491 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1490, i64 0, i64 0
  %1492 = load %struct.packet*, %struct.packet** %1491, align 8
  %1493 = icmp ne %struct.packet* %1492, null
  br i1 %1493, label %1494, label %1500

1494:                                             ; preds = %1488
  %1495 = load %struct.request*, %struct.request** %3, align 8
  %1496 = getelementptr inbounds %struct.request, %struct.request* %1495, i32 0, i32 20
  %1497 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1496, i64 0, i64 1
  %1498 = load %struct.packet*, %struct.packet** %1497, align 8
  %1499 = icmp ne %struct.packet* %1498, null
  br i1 %1499, label %1509, label %1500

1500:                                             ; preds = %1494, %1488, %1463
  %1501 = load %struct.request*, %struct.request** %3, align 8
  %1502 = getelementptr inbounds %struct.request, %struct.request* %1501, i32 0, i32 21
  %1503 = bitcast %union.anon.9* %1502 to %struct.tftperror*
  %1504 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1503, i32 0, i32 2
  %1505 = getelementptr inbounds [508 x i8], [508 x i8]* %1504, i32 0, i32 0
  %1506 = call i8* @strcpy(i8* %1505, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #2
  %1507 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1507, i8 zeroext 1)
  %1508 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1508)
  store i32 1, i32* %2, align 4
  br label %1824

1509:                                             ; preds = %1494
  %1510 = load %struct.request*, %struct.request** %3, align 8
  %1511 = getelementptr inbounds %struct.request, %struct.request* %1510, i32 0, i32 6
  %1512 = load %struct._IO_FILE*, %struct._IO_FILE** %1511, align 8
  %1513 = call i64 @ftell(%struct._IO_FILE* %1512)
  store i64 %1513, i64* %15, align 8
  %1514 = load i64, i64* %15, align 8
  %1515 = icmp sgt i64 %1514, 0
  br i1 %1515, label %1516, label %1569

1516:                                             ; preds = %1509
  %1517 = load %struct.request*, %struct.request** %3, align 8
  %1518 = getelementptr inbounds %struct.request, %struct.request* %1517, i32 0, i32 6
  %1519 = load %struct._IO_FILE*, %struct._IO_FILE** %1518, align 8
  %1520 = call i32 @fseek(%struct._IO_FILE* %1519, i64 0, i32 0)
  %1521 = icmp ne i32 %1520, 0
  br i1 %1521, label %1522, label %1568

1522:                                             ; preds = %1516
  %1523 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1524 = load %struct.request*, %struct.request** %3, align 8
  %1525 = getelementptr inbounds %struct.request, %struct.request* %1524, i32 0, i32 21
  %1526 = bitcast %union.anon.9* %1525 to %struct.tftperror*
  %1527 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1526, i32 0, i32 0
  store i16 %1523, i16* %1527, align 8
  %1528 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1529 = load %struct.request*, %struct.request** %3, align 8
  %1530 = getelementptr inbounds %struct.request, %struct.request* %1529, i32 0, i32 21
  %1531 = bitcast %union.anon.9* %1530 to %struct.tftperror*
  %1532 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1531, i32 0, i32 1
  store i16 %1528, i16* %1532, align 2
  %1533 = load %struct.request*, %struct.request** %3, align 8
  %1534 = getelementptr inbounds %struct.request, %struct.request* %1533, i32 0, i32 21
  %1535 = bitcast %union.anon.9* %1534 to %struct.tftperror*
  %1536 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1535, i32 0, i32 2
  %1537 = getelementptr inbounds [508 x i8], [508 x i8]* %1536, i32 0, i32 0
  %1538 = call i8* @strcpy(i8* %1537, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #2
  %1539 = load %struct.request*, %struct.request** %3, align 8
  %1540 = getelementptr inbounds %struct.request, %struct.request* %1539, i32 0, i32 3
  %1541 = load i8, i8* %1540, align 2
  %1542 = zext i8 %1541 to i64
  %1543 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1542
  %1544 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1543, i32 0, i32 0
  %1545 = load i32, i32* %1544, align 4
  %1546 = load %struct.request*, %struct.request** %3, align 8
  %1547 = getelementptr inbounds %struct.request, %struct.request* %1546, i32 0, i32 21
  %1548 = bitcast %union.anon.9* %1547 to %struct.tftperror*
  %1549 = bitcast %struct.tftperror* %1548 to i8*
  %1550 = load %struct.request*, %struct.request** %3, align 8
  %1551 = getelementptr inbounds %struct.request, %struct.request* %1550, i32 0, i32 21
  %1552 = bitcast %union.anon.9* %1551 to %struct.tftperror*
  %1553 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1552, i32 0, i32 2
  %1554 = getelementptr inbounds [508 x i8], [508 x i8]* %1553, i32 0, i32 0
  %1555 = call i64 @strlen(i8* %1554) #16
  %1556 = add i64 %1555, 5
  %1557 = load %struct.request*, %struct.request** %3, align 8
  %1558 = getelementptr inbounds %struct.request, %struct.request* %1557, i32 0, i32 18
  %1559 = bitcast %struct.sockaddr_in* %1558 to %struct.sockaddr*
  %1560 = load %struct.request*, %struct.request** %3, align 8
  %1561 = getelementptr inbounds %struct.request, %struct.request* %1560, i32 0, i32 19
  %1562 = load i32, i32* %1561, align 8
  %1563 = call i64 @sendto(i32 %1545, i8* %1549, i64 %1556, i32 0, %struct.sockaddr* %1559, i32 %1562)
  %1564 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1564, i8 zeroext 1)
  %1565 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1565)
  %1566 = call i32* @__errno_location() #18
  %1567 = load i32, i32* %1566, align 4
  store i32 %1567, i32* %2, align 4
  br label %1824

1568:                                             ; preds = %1516
  br label %1619

1569:                                             ; preds = %1509
  %1570 = load i64, i64* %15, align 8
  %1571 = icmp slt i64 %1570, 0
  br i1 %1571, label %1572, label %1618

1572:                                             ; preds = %1569
  %1573 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1574 = load %struct.request*, %struct.request** %3, align 8
  %1575 = getelementptr inbounds %struct.request, %struct.request* %1574, i32 0, i32 21
  %1576 = bitcast %union.anon.9* %1575 to %struct.tftperror*
  %1577 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1576, i32 0, i32 0
  store i16 %1573, i16* %1577, align 8
  %1578 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1579 = load %struct.request*, %struct.request** %3, align 8
  %1580 = getelementptr inbounds %struct.request, %struct.request* %1579, i32 0, i32 21
  %1581 = bitcast %union.anon.9* %1580 to %struct.tftperror*
  %1582 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1581, i32 0, i32 1
  store i16 %1578, i16* %1582, align 2
  %1583 = load %struct.request*, %struct.request** %3, align 8
  %1584 = getelementptr inbounds %struct.request, %struct.request* %1583, i32 0, i32 21
  %1585 = bitcast %union.anon.9* %1584 to %struct.tftperror*
  %1586 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1585, i32 0, i32 2
  %1587 = getelementptr inbounds [508 x i8], [508 x i8]* %1586, i32 0, i32 0
  %1588 = call i8* @strcpy(i8* %1587, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #2
  %1589 = load %struct.request*, %struct.request** %3, align 8
  %1590 = getelementptr inbounds %struct.request, %struct.request* %1589, i32 0, i32 3
  %1591 = load i8, i8* %1590, align 2
  %1592 = zext i8 %1591 to i64
  %1593 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1592
  %1594 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1593, i32 0, i32 0
  %1595 = load i32, i32* %1594, align 4
  %1596 = load %struct.request*, %struct.request** %3, align 8
  %1597 = getelementptr inbounds %struct.request, %struct.request* %1596, i32 0, i32 21
  %1598 = bitcast %union.anon.9* %1597 to %struct.tftperror*
  %1599 = bitcast %struct.tftperror* %1598 to i8*
  %1600 = load %struct.request*, %struct.request** %3, align 8
  %1601 = getelementptr inbounds %struct.request, %struct.request* %1600, i32 0, i32 21
  %1602 = bitcast %union.anon.9* %1601 to %struct.tftperror*
  %1603 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1602, i32 0, i32 2
  %1604 = getelementptr inbounds [508 x i8], [508 x i8]* %1603, i32 0, i32 0
  %1605 = call i64 @strlen(i8* %1604) #16
  %1606 = add i64 %1605, 5
  %1607 = load %struct.request*, %struct.request** %3, align 8
  %1608 = getelementptr inbounds %struct.request, %struct.request* %1607, i32 0, i32 18
  %1609 = bitcast %struct.sockaddr_in* %1608 to %struct.sockaddr*
  %1610 = load %struct.request*, %struct.request** %3, align 8
  %1611 = getelementptr inbounds %struct.request, %struct.request* %1610, i32 0, i32 19
  %1612 = load i32, i32* %1611, align 8
  %1613 = call i64 @sendto(i32 %1595, i8* %1599, i64 %1606, i32 0, %struct.sockaddr* %1609, i32 %1612)
  %1614 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1614, i8 zeroext 1)
  %1615 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1615)
  %1616 = call i32* @__errno_location() #18
  %1617 = load i32, i32* %1616, align 4
  store i32 %1617, i32* %2, align 4
  br label %1824

1618:                                             ; preds = %1569
  br label %1619

1619:                                             ; preds = %1618, %1568
  %1620 = call zeroext i16 @htons(i16 zeroext 3) #18
  %1621 = load %struct.request*, %struct.request** %3, align 8
  %1622 = getelementptr inbounds %struct.request, %struct.request* %1621, i32 0, i32 20
  %1623 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1622, i64 0, i64 0
  %1624 = load %struct.packet*, %struct.packet** %1623, align 8
  %1625 = getelementptr inbounds %struct.packet, %struct.packet* %1624, i32 0, i32 0
  store i16 %1620, i16* %1625, align 2
  %1626 = call zeroext i16 @htons(i16 zeroext 1) #18
  %1627 = load %struct.request*, %struct.request** %3, align 8
  %1628 = getelementptr inbounds %struct.request, %struct.request* %1627, i32 0, i32 20
  %1629 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1628, i64 0, i64 0
  %1630 = load %struct.packet*, %struct.packet** %1629, align 8
  %1631 = getelementptr inbounds %struct.packet, %struct.packet* %1630, i32 0, i32 1
  store i16 %1626, i16* %1631, align 2
  %1632 = load %struct.request*, %struct.request** %3, align 8
  %1633 = getelementptr inbounds %struct.request, %struct.request* %1632, i32 0, i32 20
  %1634 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1633, i64 0, i64 0
  %1635 = load %struct.packet*, %struct.packet** %1634, align 8
  %1636 = getelementptr inbounds %struct.packet, %struct.packet* %1635, i32 0, i32 2
  %1637 = load %struct.request*, %struct.request** %3, align 8
  %1638 = getelementptr inbounds %struct.request, %struct.request* %1637, i32 0, i32 10
  %1639 = load i32, i32* %1638, align 4
  %1640 = zext i32 %1639 to i64
  %1641 = load %struct.request*, %struct.request** %3, align 8
  %1642 = getelementptr inbounds %struct.request, %struct.request* %1641, i32 0, i32 6
  %1643 = load %struct._IO_FILE*, %struct._IO_FILE** %1642, align 8
  %1644 = call i64 @fread(i8* %1636, i64 1, i64 %1640, %struct._IO_FILE* %1643)
  %1645 = trunc i64 %1644 to i16
  %1646 = load %struct.request*, %struct.request** %3, align 8
  %1647 = getelementptr inbounds %struct.request, %struct.request* %1646, i32 0, i32 16
  %1648 = getelementptr inbounds [2 x i16], [2 x i16]* %1647, i64 0, i64 0
  store i16 %1645, i16* %1648, align 8
  %1649 = call i32* @__errno_location() #18
  %1650 = load i32, i32* %1649, align 4
  %1651 = icmp ne i32 %1650, 0
  br i1 %1651, label %1652, label %1698

1652:                                             ; preds = %1619
  %1653 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1654 = load %struct.request*, %struct.request** %3, align 8
  %1655 = getelementptr inbounds %struct.request, %struct.request* %1654, i32 0, i32 21
  %1656 = bitcast %union.anon.9* %1655 to %struct.tftperror*
  %1657 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1656, i32 0, i32 0
  store i16 %1653, i16* %1657, align 8
  %1658 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1659 = load %struct.request*, %struct.request** %3, align 8
  %1660 = getelementptr inbounds %struct.request, %struct.request* %1659, i32 0, i32 21
  %1661 = bitcast %union.anon.9* %1660 to %struct.tftperror*
  %1662 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1661, i32 0, i32 1
  store i16 %1658, i16* %1662, align 2
  %1663 = load %struct.request*, %struct.request** %3, align 8
  %1664 = getelementptr inbounds %struct.request, %struct.request* %1663, i32 0, i32 21
  %1665 = bitcast %union.anon.9* %1664 to %struct.tftperror*
  %1666 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1665, i32 0, i32 2
  %1667 = getelementptr inbounds [508 x i8], [508 x i8]* %1666, i32 0, i32 0
  %1668 = call i8* @strcpy(i8* %1667, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #2
  %1669 = load %struct.request*, %struct.request** %3, align 8
  %1670 = getelementptr inbounds %struct.request, %struct.request* %1669, i32 0, i32 3
  %1671 = load i8, i8* %1670, align 2
  %1672 = zext i8 %1671 to i64
  %1673 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1672
  %1674 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1673, i32 0, i32 0
  %1675 = load i32, i32* %1674, align 4
  %1676 = load %struct.request*, %struct.request** %3, align 8
  %1677 = getelementptr inbounds %struct.request, %struct.request* %1676, i32 0, i32 21
  %1678 = bitcast %union.anon.9* %1677 to %struct.tftperror*
  %1679 = bitcast %struct.tftperror* %1678 to i8*
  %1680 = load %struct.request*, %struct.request** %3, align 8
  %1681 = getelementptr inbounds %struct.request, %struct.request* %1680, i32 0, i32 21
  %1682 = bitcast %union.anon.9* %1681 to %struct.tftperror*
  %1683 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1682, i32 0, i32 2
  %1684 = getelementptr inbounds [508 x i8], [508 x i8]* %1683, i32 0, i32 0
  %1685 = call i64 @strlen(i8* %1684) #16
  %1686 = add i64 %1685, 5
  %1687 = load %struct.request*, %struct.request** %3, align 8
  %1688 = getelementptr inbounds %struct.request, %struct.request* %1687, i32 0, i32 18
  %1689 = bitcast %struct.sockaddr_in* %1688 to %struct.sockaddr*
  %1690 = load %struct.request*, %struct.request** %3, align 8
  %1691 = getelementptr inbounds %struct.request, %struct.request* %1690, i32 0, i32 19
  %1692 = load i32, i32* %1691, align 8
  %1693 = call i64 @sendto(i32 %1675, i8* %1679, i64 %1686, i32 0, %struct.sockaddr* %1689, i32 %1692)
  %1694 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1694, i8 zeroext 1)
  %1695 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1695)
  %1696 = call i32* @__errno_location() #18
  %1697 = load i32, i32* %1696, align 4
  store i32 %1697, i32* %2, align 4
  br label %1824

1698:                                             ; preds = %1619
  %1699 = load %struct.request*, %struct.request** %3, align 8
  %1700 = getelementptr inbounds %struct.request, %struct.request* %1699, i32 0, i32 16
  %1701 = getelementptr inbounds [2 x i16], [2 x i16]* %1700, i64 0, i64 0
  %1702 = load i16, i16* %1701, align 8
  %1703 = zext i16 %1702 to i32
  %1704 = load %struct.request*, %struct.request** %3, align 8
  %1705 = getelementptr inbounds %struct.request, %struct.request* %1704, i32 0, i32 10
  %1706 = load i32, i32* %1705, align 4
  %1707 = icmp eq i32 %1703, %1706
  br i1 %1707, label %1708, label %1805

1708:                                             ; preds = %1698
  %1709 = call zeroext i16 @htons(i16 zeroext 3) #18
  %1710 = load %struct.request*, %struct.request** %3, align 8
  %1711 = getelementptr inbounds %struct.request, %struct.request* %1710, i32 0, i32 20
  %1712 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1711, i64 0, i64 1
  %1713 = load %struct.packet*, %struct.packet** %1712, align 8
  %1714 = getelementptr inbounds %struct.packet, %struct.packet* %1713, i32 0, i32 0
  store i16 %1709, i16* %1714, align 2
  %1715 = call zeroext i16 @htons(i16 zeroext 2) #18
  %1716 = load %struct.request*, %struct.request** %3, align 8
  %1717 = getelementptr inbounds %struct.request, %struct.request* %1716, i32 0, i32 20
  %1718 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1717, i64 0, i64 1
  %1719 = load %struct.packet*, %struct.packet** %1718, align 8
  %1720 = getelementptr inbounds %struct.packet, %struct.packet* %1719, i32 0, i32 1
  store i16 %1715, i16* %1720, align 2
  %1721 = load %struct.request*, %struct.request** %3, align 8
  %1722 = getelementptr inbounds %struct.request, %struct.request* %1721, i32 0, i32 20
  %1723 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1722, i64 0, i64 1
  %1724 = load %struct.packet*, %struct.packet** %1723, align 8
  %1725 = getelementptr inbounds %struct.packet, %struct.packet* %1724, i32 0, i32 2
  %1726 = load %struct.request*, %struct.request** %3, align 8
  %1727 = getelementptr inbounds %struct.request, %struct.request* %1726, i32 0, i32 10
  %1728 = load i32, i32* %1727, align 4
  %1729 = zext i32 %1728 to i64
  %1730 = load %struct.request*, %struct.request** %3, align 8
  %1731 = getelementptr inbounds %struct.request, %struct.request* %1730, i32 0, i32 6
  %1732 = load %struct._IO_FILE*, %struct._IO_FILE** %1731, align 8
  %1733 = call i64 @fread(i8* %1725, i64 1, i64 %1729, %struct._IO_FILE* %1732)
  %1734 = trunc i64 %1733 to i16
  %1735 = load %struct.request*, %struct.request** %3, align 8
  %1736 = getelementptr inbounds %struct.request, %struct.request* %1735, i32 0, i32 16
  %1737 = getelementptr inbounds [2 x i16], [2 x i16]* %1736, i64 0, i64 1
  store i16 %1734, i16* %1737, align 2
  %1738 = call i32* @__errno_location() #18
  %1739 = load i32, i32* %1738, align 4
  %1740 = icmp ne i32 %1739, 0
  br i1 %1740, label %1741, label %1787

1741:                                             ; preds = %1708
  %1742 = call zeroext i16 @htons(i16 zeroext 5) #18
  %1743 = load %struct.request*, %struct.request** %3, align 8
  %1744 = getelementptr inbounds %struct.request, %struct.request* %1743, i32 0, i32 21
  %1745 = bitcast %union.anon.9* %1744 to %struct.tftperror*
  %1746 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1745, i32 0, i32 0
  store i16 %1742, i16* %1746, align 8
  %1747 = call zeroext i16 @htons(i16 zeroext 4) #18
  %1748 = load %struct.request*, %struct.request** %3, align 8
  %1749 = getelementptr inbounds %struct.request, %struct.request* %1748, i32 0, i32 21
  %1750 = bitcast %union.anon.9* %1749 to %struct.tftperror*
  %1751 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1750, i32 0, i32 1
  store i16 %1747, i16* %1751, align 2
  %1752 = load %struct.request*, %struct.request** %3, align 8
  %1753 = getelementptr inbounds %struct.request, %struct.request* %1752, i32 0, i32 21
  %1754 = bitcast %union.anon.9* %1753 to %struct.tftperror*
  %1755 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1754, i32 0, i32 2
  %1756 = getelementptr inbounds [508 x i8], [508 x i8]* %1755, i32 0, i32 0
  %1757 = call i8* @strcpy(i8* %1756, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #2
  %1758 = load %struct.request*, %struct.request** %3, align 8
  %1759 = getelementptr inbounds %struct.request, %struct.request* %1758, i32 0, i32 3
  %1760 = load i8, i8* %1759, align 2
  %1761 = zext i8 %1760 to i64
  %1762 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1761
  %1763 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1762, i32 0, i32 0
  %1764 = load i32, i32* %1763, align 4
  %1765 = load %struct.request*, %struct.request** %3, align 8
  %1766 = getelementptr inbounds %struct.request, %struct.request* %1765, i32 0, i32 21
  %1767 = bitcast %union.anon.9* %1766 to %struct.tftperror*
  %1768 = bitcast %struct.tftperror* %1767 to i8*
  %1769 = load %struct.request*, %struct.request** %3, align 8
  %1770 = getelementptr inbounds %struct.request, %struct.request* %1769, i32 0, i32 21
  %1771 = bitcast %union.anon.9* %1770 to %struct.tftperror*
  %1772 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1771, i32 0, i32 2
  %1773 = getelementptr inbounds [508 x i8], [508 x i8]* %1772, i32 0, i32 0
  %1774 = call i64 @strlen(i8* %1773) #16
  %1775 = add i64 %1774, 5
  %1776 = load %struct.request*, %struct.request** %3, align 8
  %1777 = getelementptr inbounds %struct.request, %struct.request* %1776, i32 0, i32 18
  %1778 = bitcast %struct.sockaddr_in* %1777 to %struct.sockaddr*
  %1779 = load %struct.request*, %struct.request** %3, align 8
  %1780 = getelementptr inbounds %struct.request, %struct.request* %1779, i32 0, i32 19
  %1781 = load i32, i32* %1780, align 8
  %1782 = call i64 @sendto(i32 %1764, i8* %1768, i64 %1775, i32 0, %struct.sockaddr* %1778, i32 %1781)
  %1783 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z7logMessP7requesth(%struct.request* %1783, i8 zeroext 1)
  %1784 = load %struct.request*, %struct.request** %3, align 8
  call void @_Z8cleanReqP7request(%struct.request* %1784)
  %1785 = call i32* @__errno_location() #18
  %1786 = load i32, i32* %1785, align 4
  store i32 %1786, i32* %2, align 4
  br label %1824

1787:                                             ; preds = %1708
  %1788 = load %struct.request*, %struct.request** %3, align 8
  %1789 = getelementptr inbounds %struct.request, %struct.request* %1788, i32 0, i32 16
  %1790 = getelementptr inbounds [2 x i16], [2 x i16]* %1789, i64 0, i64 1
  %1791 = load i16, i16* %1790, align 2
  %1792 = zext i16 %1791 to i32
  %1793 = load %struct.request*, %struct.request** %3, align 8
  %1794 = getelementptr inbounds %struct.request, %struct.request* %1793, i32 0, i32 10
  %1795 = load i32, i32* %1794, align 4
  %1796 = icmp ult i32 %1792, %1795
  br i1 %1796, label %1797, label %1804

1797:                                             ; preds = %1787
  %1798 = load %struct.request*, %struct.request** %3, align 8
  %1799 = getelementptr inbounds %struct.request, %struct.request* %1798, i32 0, i32 6
  %1800 = load %struct._IO_FILE*, %struct._IO_FILE** %1799, align 8
  %1801 = call i32 @fclose(%struct._IO_FILE* %1800)
  %1802 = load %struct.request*, %struct.request** %3, align 8
  %1803 = getelementptr inbounds %struct.request, %struct.request* %1802, i32 0, i32 6
  store %struct._IO_FILE* null, %struct._IO_FILE** %1803, align 8
  br label %1804

1804:                                             ; preds = %1797, %1787
  br label %1812

1805:                                             ; preds = %1698
  %1806 = load %struct.request*, %struct.request** %3, align 8
  %1807 = getelementptr inbounds %struct.request, %struct.request* %1806, i32 0, i32 6
  %1808 = load %struct._IO_FILE*, %struct._IO_FILE** %1807, align 8
  %1809 = call i32 @fclose(%struct._IO_FILE* %1808)
  %1810 = load %struct.request*, %struct.request** %3, align 8
  %1811 = getelementptr inbounds %struct.request, %struct.request* %1810, i32 0, i32 6
  store %struct._IO_FILE* null, %struct._IO_FILE** %1811, align 8
  br label %1812

1812:                                             ; preds = %1805, %1804
  %1813 = load %struct.request*, %struct.request** %3, align 8
  %1814 = getelementptr inbounds %struct.request, %struct.request* %1813, i32 0, i32 17
  %1815 = load i32, i32* %1814, align 4
  %1816 = icmp ne i32 %1815, 0
  br i1 %1816, label %1822, label %1817

1817:                                             ; preds = %1812
  %1818 = load %struct.request*, %struct.request** %3, align 8
  %1819 = getelementptr inbounds %struct.request, %struct.request* %1818, i32 0, i32 13
  store i16 1, i16* %1819, align 8
  %1820 = load %struct.request*, %struct.request** %3, align 8
  %1821 = call i32 @_Z11processSendP7request(%struct.request* %1820)
  store i32 %1821, i32* %2, align 4
  br label %1824

1822:                                             ; preds = %1812
  br label %1823

1823:                                             ; preds = %1822, %1456
  store i32 0, i32* %2, align 4
  br label %1824

1824:                                             ; preds = %1823, %1817, %1741, %1652, %1572, %1522, %1500, %1445, %1029, %948, %900, %836, %785, %659, %596, %526, %448, %379, %309, %220, %156, %62
  %1825 = load i32, i32* %2, align 4
  ret i32 %1825
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE6insertIS4_IlS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueESt17_Rb_tree_iteratorIS6_EE4typeEOSC_(%"class.std::multimap"* %0, %"struct.std::pair"* dereferenceable(16) %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"class.std::multimap"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  store %"class.std::multimap"* %0, %"class.std::multimap"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  %6 = load %"class.std::multimap"*, %"class.std::multimap"** %4, align 8
  %7 = getelementptr inbounds %"class.std::multimap", %"class.std::multimap"* %6, i32 0, i32 0
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %9 = call dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::pair"* dereferenceable(16) %8) #2
  %10 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE16_M_emplace_equalIJS0_IlS3_EEEESt17_Rb_tree_iteratorIS4_EDpOT_(%"class.std::_Rb_tree.0"* %7, %"struct.std::pair"* dereferenceable(16) %9)
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIlP7requestEC2IRlRS1_Lb1EEEOT_OT0_(%"struct.std::pair"* %0, i64* dereferenceable(8) %1, %struct.request** dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.request**, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.request** %2, %struct.request*** %6, align 8
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %8 = bitcast %"struct.std::pair"* %7 to %"class.std::__pair_base"*
  %9 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %7, i32 0, i32 0
  %10 = load i64*, i64** %5, align 8
  %11 = call dereferenceable(8) i64* @_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE(i64* dereferenceable(8) %10) #2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %7, i32 0, i32 1
  %14 = load %struct.request**, %struct.request*** %6, align 8
  %15 = call dereferenceable(8) %struct.request** @_ZSt7forwardIRP7requestEOT_RNSt16remove_referenceIS3_E4typeE(%struct.request** dereferenceable(8) %14) #2
  %16 = load %struct.request*, %struct.request** %15, align 8
  store %struct.request* %16, %struct.request** %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5beginEv(%"class.std::multimap"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::multimap"*, align 8
  store %"class.std::multimap"* %0, %"class.std::multimap"** %3, align 8
  %4 = load %"class.std::multimap"*, %"class.std::multimap"** %3, align 8
  %5 = getelementptr inbounds %"class.std::multimap", %"class.std::multimap"* %4, i32 0, i32 0
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE5beginEv(%"class.std::_Rb_tree.0"* %5) #2
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2Ev(%"struct.std::_Rb_tree_iterator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEneERKS5_(%"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %1) #1 comdat align 2 {
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
  %11 = icmp ne %"struct.std::_Rb_tree_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE3endEv(%"class.std::multimap"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::multimap"*, align 8
  store %"class.std::multimap"* %0, %"class.std::multimap"** %3, align 8
  %4 = load %"class.std::multimap"*, %"class.std::multimap"** %3, align 8
  %5 = getelementptr inbounds %"class.std::multimap", %"class.std::multimap"* %4, i32 0, i32 0
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE3endEv(%"class.std::_Rb_tree.0"* %5) #2
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.14"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKlP7requestEEptEv(%"struct.std::_Rb_tree_iterator"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node.21"*
  %7 = invoke %"struct.std::pair.14"* @_ZNSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node.21"* %6)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret %"struct.std::pair.14"* %7

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEi(%"struct.std::_Rb_tree_iterator"* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %5 = alloca i32, align 4
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %7 = bitcast %"struct.std::_Rb_tree_iterator"* %3 to i8*
  %8 = bitcast %"struct.std::_Rb_tree_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 8, i1 false)
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %10) #16
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %12, align 8
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %13, align 8
  ret %"struct.std::_Rb_tree_node_base"* %14
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8multimapIlP7requestSt4lessIlESaISt4pairIKlS1_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS6_E(%"class.std::multimap"* %0, %"struct.std::_Rb_tree_node_base"* %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"class.std::multimap"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store %"class.std::multimap"* %0, %"class.std::multimap"** %5, align 8
  %8 = load %"class.std::multimap"*, %"class.std::multimap"** %5, align 8
  %9 = getelementptr inbounds %"class.std::multimap", %"class.std::multimap"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Rb_tree_iterator"* %6 to i8*
  %11 = bitcast %"struct.std::_Rb_tree_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  %14 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS4_E(%"class.std::_Rb_tree.0"* %9, %"struct.std::_Rb_tree_node_base"* %13)
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %15, align 8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %17 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %16, align 8
  ret %"struct.std::_Rb_tree_node_base"* %17
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline optnone uwtable
define void @_Z9closeConnv() #8 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %29, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %7
  %9 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %8, i32 0, i32 5
  %10 = load i8, i8* %9, align 1
  %11 = trunc i8 %10 to i1
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i1 [ false, %2 ], [ %11, %5 ]
  br i1 %13, label %14, label %32

14:                                               ; preds = %12
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %16
  %18 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %17, i32 0, i32 4
  %19 = load i8, i8* %18, align 2
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %23
  %25 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %21, %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %2

32:                                               ; preds = %12
  ret void
}

declare i32 @close(i32) #6

declare i32 @fclose(%struct._IO_FILE*) #6

declare void @syslog(i32, i8*, ...) #6

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: nounwind
declare i32 @umask(i32) #4

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #9

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #6

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #4

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #6

declare i64 @ftell(%struct._IO_FILE*) #6

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #6

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #6

; Function Attrs: noinline optnone uwtable
define zeroext i1 @_Z10getSectionPKcPchS1_(i8* %0, i8* %1, i8 zeroext %2, i8* %3) #8 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* %14) #2
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0
  %17 = call i8* @_Z7myUpperPc(i8* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %10, align 8
  store i8 0, i8* %12, align 1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %21 = icmp ne %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %118

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %114, %22
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %26 = call i8* @fgets(i8* %24, i32 511, %struct._IO_FILE* %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %115

28:                                               ; preds = %23
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %30 = call i8* @_Z7myUpperPc(i8* %29)
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %33 = call i8* @_Z6myTrimPcS_(i8* %31, i8* %32)
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0
  %36 = call i8* @strstr(i8* %34, i8* %35) #16
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %114

39:                                               ; preds = %28
  %40 = load i8, i8* %12, align 1
  %41 = add i8 %40, 1
  store i8 %41, i8* %12, align 1
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %111, %47
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %51 = call i8* @fgets(i8* %49, i32 511, %struct._IO_FILE* %50)
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %112

53:                                               ; preds = %48
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %56 = call i8* @_Z6myTrimPcS_(i8* %54, i8* %55)
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %58 = call i8* @strstr(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0)) #16
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %112

62:                                               ; preds = %53
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %64 = load i8, i8* %63, align 16
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 57
  br i1 %71, label %102, label %72

72:                                               ; preds = %67, %62
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 65
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %79 = load i8, i8* %78, align 16
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 90
  br i1 %81, label %102, label %82

82:                                               ; preds = %77, %72
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %84 = load i8, i8* %83, align 16
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 97
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp sle i32 %90, 122
  br i1 %91, label %102, label %92

92:                                               ; preds = %87, %82
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %94 = load i8, i8* %93, align 16
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %98 = load i8, i8* %97, align 16
  %99 = sext i8 %98 to i32
  %100 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 %99) #16
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %96, %87, %77, %67
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* %104) #2
  %106 = load i8*, i8** %6, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  br label %111

111:                                              ; preds = %102, %96, %92
  br label %48

112:                                              ; preds = %61, %48
  br label %115

113:                                              ; preds = %39
  br label %114

114:                                              ; preds = %113, %28
  br label %23

115:                                              ; preds = %112, %23
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %117 = call i32 @fclose(%struct._IO_FILE* %116)
  br label %118

118:                                              ; preds = %115, %4
  %119 = load i8*, i8** %6, align 8
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8 0, i8* %121, align 1
  %122 = load i8, i8* %12, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %7, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %123, %125
  ret i1 %126
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z7myUpperPc(i8* %0) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 32, i8* %3, align 1
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #16
  %8 = trunc i64 %7 to i16
  store i16 %8, i16* %4, align 2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 97
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 122
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i8, i8* %3, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, %32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  br label %41

41:                                               ; preds = %30, %22, %14
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #6

; Function Attrs: noinline optnone uwtable
define %struct._IO_FILE* @_Z11openSectionPKchPc(i8* %0, i8 zeroext %1, i8* %2) #8 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* %13) #2
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %16 = call i8* @_Z7myUpperPc(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %9, align 8
  store i8 0, i8* %11, align 1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %49, %21
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %25 = call i8* @fgets(i8* %23, i32 511, %struct._IO_FILE* %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %29 = call i8* @_Z7myUpperPc(i8* %28)
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %32 = call i8* @_Z6myTrimPcS_(i8* %30, i8* %31)
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %35 = call i8* @strstr(i8* %33, i8* %34) #16
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %27
  %39 = load i8, i8* %11, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  store %struct._IO_FILE* %47, %struct._IO_FILE** %4, align 8
  br label %54

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %27
  br label %22

50:                                               ; preds = %22
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %52 = call i32 @fclose(%struct._IO_FILE* %51)
  br label %53

53:                                               ; preds = %50, %3
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  ret %struct._IO_FILE* %55
}

; Function Attrs: noinline optnone uwtable
define i8* @_Z11readSectionPcP8_IO_FILE(i8* %0, %struct._IO_FILE* %1) #8 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  br label %6

6:                                                ; preds = %62, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %9 = call i8* @fgets(i8* %7, i32 511, %struct._IO_FILE* %8)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %63

11:                                               ; preds = %6
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @_Z6myTrimPcS_(i8* %12, i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 91
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %63

20:                                               ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 57
  br i1 %29, label %60, label %30

30:                                               ; preds = %25, %20
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 65
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 90
  br i1 %39, label %60, label %40

40:                                               ; preds = %35, %30
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 97
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 122
  br i1 %49, label %60, label %50

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 %57) #16
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %45, %35, %25
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %3, align 8
  br label %66

62:                                               ; preds = %54, %50
  br label %6

63:                                               ; preds = %19, %6
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %65 = call i32 @fclose(%struct._IO_FILE* %64)
  store i8* null, i8** %3, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z10myGetTokenPch(i8* %0, i8 zeroext %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  br label %5

5:                                                ; preds = %16, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i8, i8* %4, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, i8* %4, align 1
  %14 = add i8 %13, -1
  store i8 %14, i8* %4, align 1
  br label %16

15:                                               ; preds = %9
  br label %22

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17) #16
  %19 = add i64 %18, 1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 %19
  store i8* %21, i8** %3, align 8
  br label %5

22:                                               ; preds = %15, %5
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i16 @_Z10myTokenizePcS_S_b(i8* %0, i8* %1, i8* %2, i1 zeroext %3) #1 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  store i8 1, i8* %9, align 1
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %10, align 8
  store i16 0, i16* %11, align 2
  br label %14

14:                                               ; preds = %62, %44, %33, %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = call i8* @strchr(i8* %27, i32 %30) #16
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  store i8 1, i8* %9, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %14

36:                                               ; preds = %26, %21, %18
  %37 = load i8, i8* %8, align 1
  %38 = trunc i8 %37 to i1
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 32
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  store i8 1, i8* %9, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  br label %14

47:                                               ; preds = %39, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i8, i8* %9, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %10, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i16, i16* %11, align 2
  %61 = add i16 %60, 1
  store i16 %61, i16* %11, align 2
  br label %62

62:                                               ; preds = %59, %48
  store i8 0, i8* %9, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %10, align 8
  store i8 %64, i8* %65, align 1
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %14

70:                                               ; preds = %14
  %71 = load i8*, i8** %10, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  store i8 0, i8* %74, align 1
  %75 = load i16, i16* %11, align 2
  ret i16 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z7mySplitPcS_S_c(i8* %0, i8* %1, i8* %2, i8 signext %3) #1 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %44, %4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 510
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br label %32

32:                                               ; preds = %22, %19, %12
  %33 = phi i1 [ false, %19 ], [ false, %12 ], [ %31, %22 ]
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %12

49:                                               ; preds = %32
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %81, %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp sle i32 %60, 510
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br label %69

69:                                               ; preds = %62, %59
  %70 = phi i1 [ false, %59 ], [ %68, %62 ]
  br i1 %70, label %71, label %86

71:                                               ; preds = %69
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %59

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @_Z6myTrimPcS_(i8* %96, i8* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i8* @_Z6myTrimPcS_(i8* %99, i8* %100)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z9IP2StringPcj(i8* %0, i32 %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.data15, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %8 = bitcast %union.anon.17* %7 to i32*
  store i32 %6, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %11 = bitcast %union.anon.17* %10 to [4 x i8]*
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %13 = load i8, i8* %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %16 = bitcast %union.anon.17* %15 to [4 x i8]*
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %21 = bitcast %union.anon.17* %20 to [4 x i8]*
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 2
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %26 = bitcast %union.anon.17* %25 to [4 x i8]*
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 %14, i32 %19, i32 %24, i32 %29) #2
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z7myLowerPc(i8* %0) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 32, i8* %3, align 1
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #16
  %8 = trunc i64 %7 to i16
  store i16 %8, i16* %4, align 2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 65
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 90
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i8, i8* %3, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, %32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  br label %41

41:                                               ; preds = %30, %22, %14
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i1 @_Z4isIPPc(i8* %0) #1 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 46
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 46
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %14, %9
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %26, 48
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sgt i32 %31, 57
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23
  store i1 false, i1* %2, align 1
  br label %44

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  br label %5

39:                                               ; preds = %5
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i1 true, i1* %2, align 1
  br label %44

43:                                               ; preds = %39
  store i1 false, i1* %2, align 1
  br label %44

44:                                               ; preds = %43, %42, %33
  %45 = load i1, i1* %2, align 1
  ret i1 %45
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #4

declare %struct.passwd* @getpwnam(i8*) #6

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #9

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z12my_inet_addrPc(i8* %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %15

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @inet_addr(i8* %13) #2
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare %struct.passwd* @getpwuid(i32) #6

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32* @_Z10findServerPjj(i32* %0, i32 %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  store i8 0, i8* %6, align 1
  br label %10

10:                                               ; preds = %37, %9
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = load i32*, i32** %4, align 8
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %3, align 8
  br label %42

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i8, i8* %6, align 1
  %39 = add i8 %38, 1
  store i8 %39, i8* %6, align 1
  br label %10

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40, %2
  store i32* null, i32** %3, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

; Function Attrs: noinline optnone uwtable
define void @_Z13getInterfacesP5data1(%struct.data1* %0) #8 {
  %2 = alloca %struct.data1*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.ifreq, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.data1* %0, %struct.data1** %2, align 8
  %9 = load %struct.data1*, %struct.data1** %2, align 8
  %10 = bitcast %struct.data1* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 344, i1 false)
  store i32 320, i32* getelementptr inbounds (%struct.ifconf, %struct.ifconf* @Ifc, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([8 x %struct.ifreq], [8 x %struct.ifreq]* @IfcBuf, i32 0, i32 0, i32 0, i32 0, i32 0), i8** getelementptr inbounds (%struct.ifconf, %struct.ifconf* @Ifc, i32 0, i32 1, i32 0), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %12 = call i32 (i32, i64, ...) @ioctl(i32 %11, i64 35090, %struct.ifconf* @Ifc) #2
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %104

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.ifconf, %struct.ifconf* @Ifc, i32 0, i32 0), align 8
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 40
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %7, align 1
  store i8 0, i8* %8, align 1
  br label %19

19:                                               ; preds = %100, %14
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %19
  %26 = bitcast %struct.ifreq* %6 to i8*
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [8 x %struct.ifreq], [8 x %struct.ifreq]* @IfcBuf, i64 0, i64 %28
  %30 = bitcast %struct.ifreq* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %30, i64 40, i1 false)
  %31 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %32 = call i32 (i32, i64, ...) @ioctl(i32 %31, i64 35093, %struct.ifreq* %6) #2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %36 = bitcast %union.anon.7* %35 to %struct.sockaddr*
  %37 = bitcast %struct.sockaddr* %36 to %struct.sockaddr_in*
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %44 = call i32 (i32, i64, ...) @ioctl(i32 %43, i64 35099, %struct.ifreq* %6) #2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %48 = bitcast %union.anon.7* %47 to %struct.sockaddr*
  %49 = bitcast %struct.sockaddr* %48 to %struct.sockaddr_in*
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 15), align 4
  %56 = call i32 (i32, i64, ...) @ioctl(i32 %55, i64 35091, %struct.ifreq* %6) #2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %60 = bitcast %union.anon.7* %59 to i16*
  %61 = load i16, i16* %60, align 8
  store i16 %61, i16* %5, align 2
  br label %63

62:                                               ; preds = %54
  store i16 0, i16* %5, align 2
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.data1*, %struct.data1** %2, align 8
  %68 = getelementptr inbounds %struct.data1, %struct.data1* %67, i32 0, i32 1
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %68, i32 0, i32 0
  %70 = load i32, i32* %3, align 4
  %71 = call zeroext i1 @_Z9addServerPjj(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load i16, i16* %5, align 2
  %80 = sext i16 %79 to i32
  %81 = and i32 %80, 16
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %78
  %84 = load i16, i16* %5, align 2
  %85 = sext i16 %84 to i32
  %86 = and i32 %85, 64
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i16, i16* %5, align 2
  %90 = sext i16 %89 to i32
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.data1*, %struct.data1** %2, align 8
  %95 = getelementptr inbounds %struct.data1, %struct.data1* %94, i32 0, i32 2
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i32 0, i32 0
  %97 = load i32, i32* %3, align 4
  %98 = call zeroext i1 @_Z9addServerPjj(i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %88, %83, %78, %75, %72
  br label %100

100:                                              ; preds = %99
  %101 = load i8, i8* %8, align 1
  %102 = add i8 %101, 1
  store i8 %102, i8* %8, align 1
  br label %19

103:                                              ; preds = %19
  br label %104

104:                                              ; preds = %103, %1
  ret void
}

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #4

; Function Attrs: noinline optnone uwtable
define zeroext i1 @_Z12detectChangev() #8 {
  %1 = alloca i1, align 1
  %2 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 8
  %6 = trunc i8 %5 to i1
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4
  store i1 false, i1* %1, align 1
  br label %51

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %0
  br label %13

13:                                               ; preds = %43, %12
  %14 = call i32 @sleep(i32 20)
  %15 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 8
  %16 = trunc i8 %15 to i1
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_Z13getInterfacesP5data1(%struct.data1* @newNetwork)
  br label %19

18:                                               ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i32 0) to i8*), i8* align 4 bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i32 0) to i8*), i64 32, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i16* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4, i32 0) to i8*), i8* align 4 bitcast (i16* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4, i32 0) to i8*), i64 16, i1 false)
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 8
  %21 = trunc i8 %20 to i1
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = call i32 @memcmp(i8* bitcast (i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 16, i32 0) to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2, i32 0) to i8*), i64 32) #16
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 16, i32 0) to i8*), i8* align 4 bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2, i32 0) to i8*), i64 32, i1 false)
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.103, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %44

27:                                               ; preds = %22, %19
  %28 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %32 = add i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  %35 = call double @_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 2, i32 %34)
  %36 = fptoui double %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.104, i32 0, i32 0)) #2
  call void @_Z7logMessPch(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %44

40:                                               ; preds = %30
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42
  br label %13

44:                                               ; preds = %38, %25
  store i8 0, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %47 = trunc i8 %46 to i1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @sleep(i32 1)
  br label %45

50:                                               ; preds = %45
  store i1 true, i1* %1, align 1
  br label %51

51:                                               ; preds = %50, %10
  %52 = load i1, i1* %1, align 1
  ret i1 %52
}

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #10

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr double @_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %0, i32 %1) #1 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sitofp i32 %5 to double
  %7 = load i32, i32* %4, align 4
  %8 = uitofp i32 %7 to double
  %9 = call double @pow(double %6, double %8) #2
  ret double %9
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i1 @_Z9addServerPjj(i32* %0, i32 %1) #1 {
  %3 = alloca i1, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %11
  store i1 false, i1* %3, align 1
  br label %42

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  store i1 true, i1* %3, align 1
  br label %42

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load i8, i8* %6, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %6, align 1
  br label %7

41:                                               ; preds = %7
  store i1 false, i1* %3, align 1
  br label %42

42:                                               ; preds = %41, %30, %22
  %43 = load i1, i1* %3, align 1
  ret i1 %43
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #6

declare i32 @fflush(%struct._IO_FILE*) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev(%"class.std::_Rb_tree"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEC2Ev(%"class.std::allocator"* %4) #2
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %3 to %"struct.std::_Rb_tree_key_compare"*
  call void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %5) #2
  %6 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %3 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  call void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %8) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEC2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(%"struct.std::_Rb_tree_key_compare"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_key_compare"*, align 8
  store %"struct.std::_Rb_tree_key_compare"* %0, %"struct.std::_Rb_tree_key_compare"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_key_compare"*, %"struct.std::_Rb_tree_key_compare"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %3, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @__clang_call_terminate(i8* %10) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* %0) #1 comdat align 2 {
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

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #11 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #17
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(%"class.std::_Rb_tree"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(%"class.std::_Rb_tree"* %5) #2
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %6)
          to label %7 unwind label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %8) #2
  ret void

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %13) #2
  br label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %15) #17
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #8 comdat align 2 {
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
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12) #2
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %13)
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %15) #2
  store %"struct.std::_Rb_tree_node"* %16, %"struct.std::_Rb_tree_node"** %5, align 8
  %17 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %17) #2
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  br label %7

19:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node_base"* %10 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEED2Ev(%"class.std::allocator"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 3
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #1 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %6) #2
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %7) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %5) #2
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %8 = invoke %"struct.std::pair.18"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %7)
          to label %9 unwind label %12

9:                                                ; preds = %2
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE7destroyISB_EEvRSD_PT_(%"class.std::allocator"* dereferenceable(1) %6, %"struct.std::pair.18"* %8)
          to label %10 unwind label %12

10:                                               ; preds = %9
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  ret void

12:                                               ; preds = %9, %2
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %5) #2
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE10deallocateERSD_PSC_m(%"class.std::allocator"* dereferenceable(1) %6, %"struct.std::_Rb_tree_node"* %7, i64 1)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #17
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE7destroyISB_EEvRSD_PT_(%"class.std::allocator"* dereferenceable(1) %0, %"struct.std::pair.18"* %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"struct.std::pair.18"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"struct.std::pair.18"* %1, %"struct.std::pair.18"** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE7destroyISC_EEvPT_(%"class.__gnu_cxx::new_allocator"* %6, %"struct.std::pair.18"* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.18"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  %5 = call %"struct.std::pair.18"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %4) #2
  ret %"struct.std::pair.18"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE7destroyISC_EEvPT_(%"class.__gnu_cxx::new_allocator"* %0, %"struct.std::pair.18"* %1) #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca %"struct.std::pair.18"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  store %"struct.std::pair.18"* %1, %"struct.std::pair.18"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  %6 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %4, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestED2Ev(%"struct.std::pair.18"* %6) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestED2Ev(%"struct.std::pair.18"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::pair.18"*, align 8
  store %"struct.std::pair.18"* %0, %"struct.std::pair.18"** %2, align 8
  %3 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::pair.18", %"struct.std::pair.18"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.18"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #2
  %5 = bitcast i8* %4 to %"struct.std::pair.18"*
  ret %"struct.std::pair.18"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [40 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE10deallocateERSD_PSC_m(%"class.std::allocator"* dereferenceable(1) %0, %"struct.std::_Rb_tree_node"* %1, i64 %2) #8 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE10deallocateEPSD_m(%"class.__gnu_cxx::new_allocator"* %8, %"struct.std::_Rb_tree_node"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE10deallocateEPSD_m(%"class.__gnu_cxx::new_allocator"* %0, %"struct.std::_Rb_tree_node"* %1, i64 %2) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to i8*
  call void @_ZdlPv(i8* %9) #2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEED2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEED2Ev(%"class.__gnu_cxx::new_allocator"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EEC2Ev(%"class.std::_Rb_tree.0"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree.0"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %2, align 8
  %3 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2Ev(%"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2Ev(%"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %3 to %"class.std::allocator.1"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEC2Ev(%"class.std::allocator.1"* %4) #2
  %5 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %3 to %"struct.std::_Rb_tree_key_compare.4"*
  call void @_ZNSt20_Rb_tree_key_compareISt4lessIlEEC2Ev(%"struct.std::_Rb_tree_key_compare.4"* %5) #2
  %6 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %3 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  call void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* %8) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEC2Ev(%"class.std::allocator.1"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %2, align 8
  %3 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %2, align 8
  %4 = bitcast %"class.std::allocator.1"* %3 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt20_Rb_tree_key_compareISt4lessIlEEC2Ev(%"struct.std::_Rb_tree_key_compare.4"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_key_compare.4"*, align 8
  store %"struct.std::_Rb_tree_key_compare.4"* %0, %"struct.std::_Rb_tree_key_compare.4"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_key_compare.4"*, %"struct.std::_Rb_tree_key_compare.4"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare.4", %"struct.std::_Rb_tree_key_compare.4"* %3, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EED2Ev(%"class.std::_Rb_tree.0"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Rb_tree.0"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %2, align 8
  %5 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %2, align 8
  %6 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree.0"* %5) #2
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %5, %"struct.std::_Rb_tree_node.21"* %6)
          to label %7 unwind label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev(%"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %8) #2
  ret void

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev(%"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %13) #2
  br label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %15) #17
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node.21"* %1) #8 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree.0"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %3, align 8
  store %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %6 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %3, align 8
  br label %7

7:                                                ; preds = %10, %2
  %8 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node.21"* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node.21"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12) #2
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %6, %"struct.std::_Rb_tree_node.21"* %13)
  %14 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node.21"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %15) #2
  store %"struct.std::_Rb_tree_node.21"* %16, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %17 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %6, %"struct.std::_Rb_tree_node.21"* %17) #2
  %18 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  store %"struct.std::_Rb_tree_node.21"* %18, %"struct.std::_Rb_tree_node.21"** %4, align 8
  br label %7

19:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree.0"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree.0"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %2, align 8
  %3 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node_base"* %10 to %"struct.std::_Rb_tree_node.21"*
  ret %"struct.std::_Rb_tree_node.21"* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev(%"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %3 to %"class.std::allocator.1"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKlP7requestEEED2Ev(%"class.std::allocator.1"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 3
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node.21"*
  ret %"struct.std::_Rb_tree_node.21"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node.21"*
  ret %"struct.std::_Rb_tree_node.21"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node.21"* %1) #1 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree.0"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %3, align 8
  store %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %5 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %3, align 8
  %6 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %5, %"struct.std::_Rb_tree_node.21"* %6) #2
  %7 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %5, %"struct.std::_Rb_tree_node.21"* %7) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node.21"* %1) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree.0"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %3, align 8
  store %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %5 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %3, align 8
  %6 = call dereferenceable(1) %"class.std::allocator.1"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree.0"* %5) #2
  %7 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %8 = invoke %"struct.std::pair.14"* @_ZNSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node.21"* %7)
          to label %9 unwind label %12

9:                                                ; preds = %2
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE7destroyIS5_EEvRS7_PT_(%"class.std::allocator.1"* dereferenceable(1) %6, %"struct.std::pair.14"* %8)
          to label %10 unwind label %12

10:                                               ; preds = %9
  %11 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  ret void

12:                                               ; preds = %9, %2
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node.21"* %1) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree.0"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %3, align 8
  store %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::_Rb_tree_node.21"** %4, align 8
  %5 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %3, align 8
  %6 = call dereferenceable(1) %"class.std::allocator.1"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree.0"* %5) #2
  %7 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %4, align 8
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE10deallocateERS7_PS6_m(%"class.std::allocator.1"* dereferenceable(1) %6, %"struct.std::_Rb_tree_node.21"* %7, i64 1)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #17
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE7destroyIS5_EEvRS7_PT_(%"class.std::allocator.1"* dereferenceable(1) %0, %"struct.std::pair.14"* %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator.1"*, align 8
  %4 = alloca %"struct.std::pair.14"*, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %3, align 8
  store %"struct.std::pair.14"* %1, %"struct.std::pair.14"** %4, align 8
  %5 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %3, align 8
  %6 = bitcast %"class.std::allocator.1"* %5 to %"class.__gnu_cxx::new_allocator.2"*
  %7 = load %"struct.std::pair.14"*, %"struct.std::pair.14"** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE7destroyIS6_EEvPT_(%"class.__gnu_cxx::new_allocator.2"* %6, %"struct.std::pair.14"* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator.1"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree.0"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree.0"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %2, align 8
  %3 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %4 to %"class.std::allocator.1"*
  ret %"class.std::allocator.1"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.14"* @_ZNSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node.21"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"struct.std::_Rb_tree_node.21"* %0, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node.21", %"struct.std::_Rb_tree_node.21"* %3, i32 0, i32 1
  %5 = call %"struct.std::pair.14"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %4) #2
  ret %"struct.std::pair.14"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE7destroyIS6_EEvPT_(%"class.__gnu_cxx::new_allocator.2"* %0, %"struct.std::pair.14"* %1) #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %4 = alloca %"struct.std::pair.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %3, align 8
  store %"struct.std::pair.14"* %1, %"struct.std::pair.14"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %3, align 8
  %6 = load %"struct.std::pair.14"*, %"struct.std::pair.14"** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.14"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf.22"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf.22"* %0, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf.22"*, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %4 = call i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %3) #2
  %5 = bitcast i8* %4 to %"struct.std::pair.14"*
  ret %"struct.std::pair.14"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf.22"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf.22"* %0, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf.22"*, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf.22", %"struct.__gnu_cxx::__aligned_membuf.22"* %3, i32 0, i32 0
  %5 = bitcast [16 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE10deallocateERS7_PS6_m(%"class.std::allocator.1"* dereferenceable(1) %0, %"struct.std::_Rb_tree_node.21"* %1, i64 %2) #8 comdat align 2 {
  %4 = alloca %"class.std::allocator.1"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %4, align 8
  store %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::_Rb_tree_node.21"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %4, align 8
  %8 = bitcast %"class.std::allocator.1"* %7 to %"class.__gnu_cxx::new_allocator.2"*
  %9 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE10deallocateEPS7_m(%"class.__gnu_cxx::new_allocator.2"* %8, %"struct.std::_Rb_tree_node.21"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE10deallocateEPS7_m(%"class.__gnu_cxx::new_allocator.2"* %0, %"struct.std::_Rb_tree_node.21"* %1, i64 %2) #1 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %4, align 8
  store %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::_Rb_tree_node.21"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %4, align 8
  %8 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node.21"* %8 to i8*
  call void @_ZdlPv(i8* %9) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKlP7requestEEED2Ev(%"class.std::allocator.1"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %2, align 8
  %3 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %2, align 8
  %4 = bitcast %"class.std::allocator.1"* %3 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEED2Ev(%"class.__gnu_cxx::new_allocator.2"* %4) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEED2Ev(%"class.__gnu_cxx::new_allocator.2"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE(i64* dereferenceable(8) %0) #1 comdat {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  ret i64* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %struct.request** @_ZSt7forwardIRP7requestEOT_RNSt16remove_referenceIS3_E4typeE(%struct.request** dereferenceable(8) %0) #1 comdat {
  %2 = alloca %struct.request**, align 8
  store %struct.request** %0, %struct.request*** %2, align 8
  %3 = load %struct.request**, %struct.request*** %2, align 8
  ret %struct.request** %3
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_(%"class.std::map"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %4 = alloca %"class.std::map"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %6 = load %"class.std::map"*, %"class.std::map"** %4, align 8
  %7 = getelementptr inbounds %"class.std::map", %"class.std::map"* %6, i32 0, i32 0
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_(%"class.std::_Rb_tree"* %7, %"class.std::__cxx11::basic_string"* dereferenceable(32) %8)
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %11, align 8
  ret %"struct.std::_Rb_tree_node_base"* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_(%"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_iterator.23"** %3, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %1, %"struct.std::_Rb_tree_iterator.23"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = icmp eq %"struct.std::_Rb_tree_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv(%"class.std::map"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %3 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  %4 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %5 = getelementptr inbounds %"class.std::map", %"class.std::map"* %4, i32 0, i32 0
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(%"class.std::_Rb_tree"* %5) #2
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %2, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv(%"class.std::map"* %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::less", align 1
  %3 = alloca %"class.std::map"*, align 8
  %4 = alloca %"struct.std::less", align 1
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  %5 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %6 = getelementptr inbounds %"class.std::map", %"class.std::map"* %5, i32 0, i32 0
  call void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv(%"class.std::_Rb_tree"* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %10 = call zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* dereferenceable(32) %9) #2
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(40) %"struct.std::pair.18"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEdeEv(%"struct.std::_Rb_tree_iterator.23"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  %7 = invoke %"struct.std::pair.18"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %6)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret %"struct.std::pair.18"* %7

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #17
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::piecewise_construct_t"* dereferenceable(1) %2, %"class.std::tuple"* dereferenceable(8) %3, %"class.std::tuple.24"* dereferenceable(1) %4) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %8 = alloca %"class.std::_Rb_tree"*, align 8
  %9 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %10 = alloca %"class.std::tuple"*, align 8
  %11 = alloca %"class.std::tuple.24"*, align 8
  %12 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %13 = alloca %"struct.std::pair.25", align 8
  %14 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %15 = alloca i8*
  %16 = alloca i32
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %17, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %8, align 8
  store %"struct.std::piecewise_construct_t"* %2, %"struct.std::piecewise_construct_t"** %9, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %10, align 8
  store %"class.std::tuple.24"* %4, %"class.std::tuple.24"** %11, align 8
  %18 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %8, align 8
  %19 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %9, align 8
  %20 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %19) #2
  %21 = load %"class.std::tuple"*, %"class.std::tuple"** %10, align 8
  %22 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE(%"class.std::tuple"* dereferenceable(8) %21) #2
  %23 = load %"class.std::tuple.24"*, %"class.std::tuple.24"** %11, align 8
  %24 = call dereferenceable(1) %"class.std::tuple.24"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.24"* dereferenceable(1) %23) #2
  %25 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_(%"class.std::_Rb_tree"* %18, %"struct.std::piecewise_construct_t"* dereferenceable(1) %20, %"class.std::tuple"* dereferenceable(8) %22, %"class.std::tuple.24"* dereferenceable(1) %24)
  store %"struct.std::_Rb_tree_node"* %25, %"struct.std::_Rb_tree_node"** %12, align 8
  %26 = bitcast %"struct.std::_Rb_tree_const_iterator"* %14 to i8*
  %27 = bitcast %"struct.std::_Rb_tree_const_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  %29 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %28)
          to label %30 unwind label %52

30:                                               ; preds = %5
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %14, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = invoke { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(%"class.std::_Rb_tree"* %18, %"struct.std::_Rb_tree_node_base"* %32, %"class.std::__cxx11::basic_string"* dereferenceable(32) %29)
          to label %34 unwind label %52

34:                                               ; preds = %30
  %35 = bitcast %"struct.std::pair.25"* %13 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %36 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 0
  %37 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 0
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %36, align 8
  %38 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 1
  %39 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 1
  store %"struct.std::_Rb_tree_node_base"* %39, %"struct.std::_Rb_tree_node_base"** %38, align 8
  %40 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %13, i32 0, i32 1
  %41 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %40, align 8
  %42 = icmp ne %"struct.std::_Rb_tree_node_base"* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %34
  %44 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %13, i32 0, i32 0
  %45 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %44, align 8
  %46 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %13, i32 0, i32 1
  %47 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %46, align 8
  %48 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  %49 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %18, %"struct.std::_Rb_tree_node_base"* %45, %"struct.std::_Rb_tree_node_base"* %47, %"struct.std::_Rb_tree_node"* %48)
          to label %50 unwind label %52

50:                                               ; preds = %43
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %49, %"struct.std::_Rb_tree_node_base"** %51, align 8
  br label %70

52:                                               ; preds = %43, %30, %5
  %53 = landingpad { i8*, i32 }
          catch i8* null
  %54 = extractvalue { i8*, i32 } %53, 0
  store i8* %54, i8** %15, align 8
  %55 = extractvalue { i8*, i32 } %53, 1
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %15, align 8
  %58 = call i8* @__cxa_begin_catch(i8* %57) #2
  %59 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %18, %"struct.std::_Rb_tree_node"* %59) #2
  invoke void @__cxa_rethrow() #19
          to label %81 unwind label %64

60:                                               ; preds = %34
  %61 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %12, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %18, %"struct.std::_Rb_tree_node"* %61) #2
  %62 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %13, i32 0, i32 0
  %63 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %62, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %6, %"struct.std::_Rb_tree_node_base"* %63) #2
  br label %70

64:                                               ; preds = %56
  %65 = landingpad { i8*, i32 }
          cleanup
  %66 = extractvalue { i8*, i32 } %65, 0
  store i8* %66, i8** %15, align 8
  %67 = extractvalue { i8*, i32 } %65, 1
  store i32 %67, i32* %16, align 4
  invoke void @__cxa_end_catch()
          to label %68 unwind label %78

68:                                               ; preds = %64
  br label %73

69:                                               ; No predecessors!
  call void @llvm.trap()
  unreachable

70:                                               ; preds = %60, %50
  %71 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %6, i32 0, i32 0
  %72 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %71, align 8
  ret %"struct.std::_Rb_tree_node_base"* %72

73:                                               ; preds = %68
  %74 = load i8*, i8** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = insertvalue { i8*, i32 } undef, i8* %74, 0
  %77 = insertvalue { i8*, i32 } %76, i32 %75, 1
  resume { i8*, i32 } %77

78:                                               ; preds = %64
  %79 = landingpad { i8*, i32 }
          catch i8* null
  %80 = extractvalue { i8*, i32 } %79, 0
  call void @__clang_call_terminate(i8* %80) #17
  unreachable

81:                                               ; preds = %56
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2ERKSt17_Rb_tree_iteratorISA_E(%"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %1, %"struct.std::_Rb_tree_iterator.23"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %7, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_(%"class.std::tuple"* noalias sret %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #1 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %3, align 8
  %4 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %5 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %4) #2
  invoke void @_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJS5_ELb1EEEDpOT_(%"class.std::tuple"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret void

7:                                                ; preds = %2
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %0) #1 comdat {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  ret %"class.std::__cxx11::basic_string"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_(%"class.std::_Rb_tree"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(%"class.std::_Rb_tree"* %6) #2
  %8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(%"class.std::_Rb_tree"* %6) #2
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %10 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %7, %"struct.std::_Rb_tree_node_base"* %8, %"class.std::__cxx11::basic_string"* dereferenceable(32) %9)
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node_base"* %2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %3) #8 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"** %9, align 8
  %10 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  br label %11

11:                                               ; preds = %32, %4
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node"* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %16 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %15 to %"struct.std::_Rb_tree_key_compare"*
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %16, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %19 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %18)
  %20 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %9, align 8
  %21 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %19, %"class.std::__cxx11::basic_string"* dereferenceable(32) %20)
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %25 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %26 = bitcast %"struct.std::_Rb_tree_node"* %25 to %"struct.std::_Rb_tree_node_base"*
  %27 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %26) #2
  store %"struct.std::_Rb_tree_node"* %27, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %30 = bitcast %"struct.std::_Rb_tree_node"* %29 to %"struct.std::_Rb_tree_node_base"*
  %31 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %30) #2
  store %"struct.std::_Rb_tree_node"* %31, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %11

33:                                               ; preds = %11
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %5, %"struct.std::_Rb_tree_node_base"* %34) #2
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %5, i32 0, i32 0
  %36 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %35, align 8
  ret %"struct.std::_Rb_tree_node_base"* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %5 = call dereferenceable(40) %"struct.std::pair.18"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_valueEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %4)
  %6 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEclERKSA_(%"struct.std::_Select1st"* %3, %"struct.std::pair.18"* dereferenceable(40) %5)
  ret %"class.std::__cxx11::basic_string"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_node_base"* %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_iterator.23"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEclERKSA_(%"struct.std::_Select1st"* %0, %"struct.std::pair.18"* dereferenceable(40) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Select1st"*, align 8
  %4 = alloca %"struct.std::pair.18"*, align 8
  store %"struct.std::_Select1st"* %0, %"struct.std::_Select1st"** %3, align 8
  store %"struct.std::pair.18"* %1, %"struct.std::pair.18"** %4, align 8
  %5 = load %"struct.std::_Select1st"*, %"struct.std::_Select1st"** %3, align 8
  %6 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %4, align 8
  %7 = getelementptr inbounds %"struct.std::pair.18", %"struct.std::pair.18"* %6, i32 0, i32 0
  ret %"class.std::__cxx11::basic_string"* %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dereferenceable(40) %"struct.std::pair.18"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_valueEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = call %"struct.std::pair.18"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %3)
  ret %"struct.std::pair.18"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.18"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  %5 = call %"struct.std::pair.18"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %4) #2
  ret %"struct.std::pair.18"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.18"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #2
  %5 = bitcast i8* %4 to %"struct.std::pair.18"*
  ret %"struct.std::pair.18"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [40 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  %4 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %2, %"struct.std::_Rb_tree_node_base"* %9) #2
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %2, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::less", align 1
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  %4 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %5 to %"struct.std::_Rb_tree_key_compare"*
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %6, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #1 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %7 = invoke i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(%"class.std::__cxx11::basic_string"* %5, %"class.std::__cxx11::basic_string"* dereferenceable(32) %6)
          to label %8 unwind label %10

8:                                                ; preds = %2
  %9 = icmp slt i32 %7, 0
  ret i1 %9

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #17
  unreachable
}

declare i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::piecewise_construct_t"* dereferenceable(1) %1, %"class.std::tuple"* dereferenceable(8) %2, %"class.std::tuple.24"* dereferenceable(1) %3) #8 comdat align 2 {
  %5 = alloca %"class.std::_Rb_tree"*, align 8
  %6 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %7 = alloca %"class.std::tuple"*, align 8
  %8 = alloca %"class.std::tuple.24"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %5, align 8
  store %"struct.std::piecewise_construct_t"* %1, %"struct.std::piecewise_construct_t"** %6, align 8
  store %"class.std::tuple"* %2, %"class.std::tuple"** %7, align 8
  store %"class.std::tuple.24"* %3, %"class.std::tuple.24"** %8, align 8
  %10 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %5, align 8
  %11 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %10)
  store %"struct.std::_Rb_tree_node"* %11, %"struct.std::_Rb_tree_node"** %9, align 8
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %13 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %6, align 8
  %14 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %13) #2
  %15 = load %"class.std::tuple"*, %"class.std::tuple"** %7, align 8
  %16 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE(%"class.std::tuple"* dereferenceable(8) %15) #2
  %17 = load %"class.std::tuple.24"*, %"class.std::tuple.24"** %8, align 8
  %18 = call dereferenceable(1) %"class.std::tuple.24"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.24"* dereferenceable(1) %17) #2
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(%"class.std::_Rb_tree"* %10, %"struct.std::_Rb_tree_node"* %12, %"struct.std::piecewise_construct_t"* dereferenceable(1) %14, %"class.std::tuple"* dereferenceable(8) %16, %"class.std::tuple.24"* dereferenceable(1) %18)
  %19 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  ret %"struct.std::_Rb_tree_node"* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %0) #1 comdat {
  %2 = alloca %"struct.std::piecewise_construct_t"*, align 8
  store %"struct.std::piecewise_construct_t"* %0, %"struct.std::piecewise_construct_t"** %2, align 8
  %3 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %2, align 8
  ret %"struct.std::piecewise_construct_t"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE(%"class.std::tuple"* dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  ret %"class.std::tuple"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(1) %"class.std::tuple.24"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.24"* dereferenceable(1) %0) #1 comdat {
  %2 = alloca %"class.std::tuple.24"*, align 8
  store %"class.std::tuple.24"* %0, %"class.std::tuple.24"** %2, align 8
  %3 = load %"class.std::tuple.24"*, %"class.std::tuple.24"** %2, align 8
  ret %"class.std::tuple.24"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %2) #8 comdat align 2 {
  %4 = alloca %"struct.std::pair.25", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %9 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %12 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %13 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %14 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %15 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %16, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %7, align 8
  %17 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %18 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %5) #2
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %18, %"struct.std::_Rb_tree_node_base"** %19, align 8
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %22 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(%"class.std::_Rb_tree"* %17) #2
  %23 = icmp eq %"struct.std::_Rb_tree_node_base"* %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = call i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv(%"class.std::_Rb_tree"* %17) #2
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %29 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %28 to %"struct.std::_Rb_tree_key_compare"*
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %29, i32 0, i32 0
  %31 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #2
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %32)
  %34 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %35 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %30, %"class.std::__cxx11::basic_string"* dereferenceable(32) %33, %"class.std::__cxx11::basic_string"* dereferenceable(32) %34)
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %37 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #2
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %9, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %37)
  br label %143

38:                                               ; preds = %27, %24
  %39 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %40 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %39)
  %41 = bitcast %"struct.std::pair.25"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %42 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %41, i32 0, i32 0
  %43 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %40, 0
  store %"struct.std::_Rb_tree_node_base"* %43, %"struct.std::_Rb_tree_node_base"** %42, align 8
  %44 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %41, i32 0, i32 1
  %45 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %40, 1
  store %"struct.std::_Rb_tree_node_base"* %45, %"struct.std::_Rb_tree_node_base"** %44, align 8
  br label %143

46:                                               ; preds = %3
  %47 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %48 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %47 to %"struct.std::_Rb_tree_key_compare"*
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %48, i32 0, i32 0
  %50 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %52 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %51, align 8
  %53 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %52)
  %54 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %49, %"class.std::__cxx11::basic_string"* dereferenceable(32) %50, %"class.std::__cxx11::basic_string"* dereferenceable(32) %53)
  br i1 %54, label %55, label %94

55:                                               ; preds = %46
  %56 = bitcast %"struct.std::_Rb_tree_iterator.23"* %10 to i8*
  %57 = bitcast %"struct.std::_Rb_tree_iterator.23"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %59 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %58, align 8
  %60 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %17) #2
  %61 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %60, align 8
  %62 = icmp eq %"struct.std::_Rb_tree_node_base"* %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %17) #2
  %65 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %17) #2
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %64, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %65)
  br label %143

66:                                               ; preds = %55
  %67 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %68 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %67 to %"struct.std::_Rb_tree_key_compare"*
  %69 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %68, i32 0, i32 0
  %70 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEmmEv(%"struct.std::_Rb_tree_iterator.23"* %10) #2
  %71 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %70, i32 0, i32 0
  %72 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %71, align 8
  %73 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %72)
  %74 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %75 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %69, %"class.std::__cxx11::basic_string"* dereferenceable(32) %73, %"class.std::__cxx11::basic_string"* dereferenceable(32) %74)
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %10, i32 0, i32 0
  %78 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %77, align 8
  %79 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %78) #2
  %80 = icmp eq %"struct.std::_Rb_tree_node"* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %82 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %10, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %11, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %82)
  br label %143

83:                                               ; preds = %76
  %84 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %85 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %84, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %85)
  br label %143

86:                                               ; preds = %66
  %87 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %88 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %87)
  %89 = bitcast %"struct.std::pair.25"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %90 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %89, i32 0, i32 0
  %91 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %88, 0
  store %"struct.std::_Rb_tree_node_base"* %91, %"struct.std::_Rb_tree_node_base"** %90, align 8
  %92 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %89, i32 0, i32 1
  %93 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %88, 1
  store %"struct.std::_Rb_tree_node_base"* %93, %"struct.std::_Rb_tree_node_base"** %92, align 8
  br label %143

94:                                               ; preds = %46
  %95 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %96 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %95 to %"struct.std::_Rb_tree_key_compare"*
  %97 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %96, i32 0, i32 0
  %98 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %99 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %98, align 8
  %100 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %99)
  %101 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %102 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %97, %"class.std::__cxx11::basic_string"* dereferenceable(32) %100, %"class.std::__cxx11::basic_string"* dereferenceable(32) %101)
  br i1 %102, label %103, label %141

103:                                              ; preds = %94
  %104 = bitcast %"struct.std::_Rb_tree_iterator.23"* %12 to i8*
  %105 = bitcast %"struct.std::_Rb_tree_iterator.23"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 8, i1 false)
  %106 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %107 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %106, align 8
  %108 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #2
  %109 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %108, align 8
  %110 = icmp eq %"struct.std::_Rb_tree_node_base"* %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %112 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %17) #2
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %13, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %112)
  br label %143

113:                                              ; preds = %103
  %114 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %115 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %114 to %"struct.std::_Rb_tree_key_compare"*
  %116 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %115, i32 0, i32 0
  %117 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %118 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEppEv(%"struct.std::_Rb_tree_iterator.23"* %12) #2
  %119 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %118, i32 0, i32 0
  %120 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %119, align 8
  %121 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %120)
  %122 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %116, %"class.std::__cxx11::basic_string"* dereferenceable(32) %117, %"class.std::__cxx11::basic_string"* dereferenceable(32) %121)
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  %125 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %124, align 8
  %126 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %125) #2
  %127 = icmp eq %"struct.std::_Rb_tree_node"* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %14, align 8
  %129 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %14, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %129)
  br label %143

130:                                              ; preds = %123
  %131 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %12, i32 0, i32 0
  %132 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %12, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %131, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %132)
  br label %143

133:                                              ; preds = %113
  %134 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %135 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %134)
  %136 = bitcast %"struct.std::pair.25"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %137 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %136, i32 0, i32 0
  %138 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %135, 0
  store %"struct.std::_Rb_tree_node_base"* %138, %"struct.std::_Rb_tree_node_base"** %137, align 8
  %139 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %136, i32 0, i32 1
  %140 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %135, 1
  store %"struct.std::_Rb_tree_node_base"* %140, %"struct.std::_Rb_tree_node_base"** %139, align 8
  br label %143

141:                                              ; preds = %94
  %142 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %15, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(%"struct.std::pair.25"* %4, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %142, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %15)
  br label %143

143:                                              ; preds = %141, %133, %130, %128, %111, %86, %83, %81, %63, %38, %36
  %144 = bitcast %"struct.std::pair.25"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %145 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %144, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %145
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node"* %3) #8 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
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
  %16 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(%"class.std::_Rb_tree"* %11) #2
  %17 = icmp eq %"struct.std::_Rb_tree_node_base"* %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %11, i32 0, i32 0
  %20 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %19 to %"struct.std::_Rb_tree_key_compare"*
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %20, i32 0, i32 0
  %22 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %23 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %22)
  %24 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %25 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %24)
  %26 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %21, %"class.std::__cxx11::basic_string"* dereferenceable(32) %23, %"class.std::__cxx11::basic_string"* dereferenceable(32) %25)
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
  %36 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  %38 = bitcast i8* %37 to %"struct.std::_Rb_tree_header"*
  %39 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %38, i32 0, i32 0
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %31, %"struct.std::_Rb_tree_node_base"* %33, %"struct.std::_Rb_tree_node_base"* %34, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %39) #2
  %40 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %11, i32 0, i32 0
  %41 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = bitcast i8* %42 to %"struct.std::_Rb_tree_header"*
  %44 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %9, align 8
  %48 = bitcast %"struct.std::_Rb_tree_node"* %47 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %5, %"struct.std::_Rb_tree_node_base"* %48) #2
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %5, i32 0, i32 0
  %50 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %49, align 8
  ret %"struct.std::_Rb_tree_node_base"* %50
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #13

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %0) #8 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %3) #2
  %5 = call %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE8allocateERSD_m(%"class.std::allocator"* dereferenceable(1) %4, i64 1)
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::piecewise_construct_t"* dereferenceable(1) %2, %"class.std::tuple"* dereferenceable(8) %3, %"class.std::tuple.24"* dereferenceable(1) %4) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %8 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %9 = alloca %"class.std::tuple"*, align 8
  %10 = alloca %"class.std::tuple.24"*, align 8
  %11 = alloca i8*
  %12 = alloca i32
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %7, align 8
  store %"struct.std::piecewise_construct_t"* %2, %"struct.std::piecewise_construct_t"** %8, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %9, align 8
  store %"class.std::tuple.24"* %4, %"class.std::tuple.24"** %10, align 8
  %13 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to i8*
  %16 = bitcast i8* %15 to %"struct.std::_Rb_tree_node"*
  %17 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %13) #2
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %19 = invoke %"struct.std::pair.18"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %18)
          to label %20 unwind label %28

20:                                               ; preds = %5
  %21 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %8, align 8
  %22 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %21) #2
  %23 = load %"class.std::tuple"*, %"class.std::tuple"** %9, align 8
  %24 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE(%"class.std::tuple"* dereferenceable(8) %23) #2
  %25 = load %"class.std::tuple.24"*, %"class.std::tuple.24"** %10, align 8
  %26 = call dereferenceable(1) %"class.std::tuple.24"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.24"* dereferenceable(1) %25) #2
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESJ_IJEEEEEvRSD_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %17, %"struct.std::pair.18"* %19, %"struct.std::piecewise_construct_t"* dereferenceable(1) %22, %"class.std::tuple"* dereferenceable(8) %24, %"class.std::tuple.24"* dereferenceable(1) %26)
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
  %34 = call i8* @__cxa_begin_catch(i8* %33) #2
  %35 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %36 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %13, %"struct.std::_Rb_tree_node"* %36) #2
  invoke void @__cxa_rethrow() #19
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
  call void @__clang_call_terminate(i8* %50) #17
  unreachable

51:                                               ; preds = %32
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE8allocateERSD_m(%"class.std::allocator"* dereferenceable(1) %0, i64 %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %6, i64 %7, i8* null)
  ret %"struct.std::_Rb_tree_node"* %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %0, i64 %1, i8* %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %7) #2
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 72
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 256204778801521550
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #14

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESJ_IJEEEEEvRSD_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %0, %"struct.std::pair.18"* %1, %"struct.std::piecewise_construct_t"* dereferenceable(1) %2, %"class.std::tuple"* dereferenceable(8) %3, %"class.std::tuple.24"* dereferenceable(1) %4) #8 comdat align 2 {
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::pair.18"*, align 8
  %8 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %9 = alloca %"class.std::tuple"*, align 8
  %10 = alloca %"class.std::tuple.24"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %6, align 8
  store %"struct.std::pair.18"* %1, %"struct.std::pair.18"** %7, align 8
  store %"struct.std::piecewise_construct_t"* %2, %"struct.std::piecewise_construct_t"** %8, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %9, align 8
  store %"class.std::tuple.24"* %4, %"class.std::tuple.24"** %10, align 8
  %11 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %12 = bitcast %"class.std::allocator"* %11 to %"class.__gnu_cxx::new_allocator"*
  %13 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %7, align 8
  %14 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %8, align 8
  %15 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %14) #2
  %16 = load %"class.std::tuple"*, %"class.std::tuple"** %9, align 8
  %17 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE(%"class.std::tuple"* dereferenceable(8) %16) #2
  %18 = load %"class.std::tuple.24"*, %"class.std::tuple.24"** %10, align 8
  %19 = call dereferenceable(1) %"class.std::tuple.24"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.24"* dereferenceable(1) %18) #2
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESJ_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %12, %"struct.std::pair.18"* %13, %"struct.std::piecewise_construct_t"* dereferenceable(1) %15, %"class.std::tuple"* dereferenceable(8) %17, %"class.std::tuple.24"* dereferenceable(1) %19)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESJ_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %0, %"struct.std::pair.18"* %1, %"struct.std::piecewise_construct_t"* dereferenceable(1) %2, %"class.std::tuple"* dereferenceable(8) %3, %"class.std::tuple.24"* dereferenceable(1) %4) #8 comdat align 2 {
  %6 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %7 = alloca %"struct.std::pair.18"*, align 8
  %8 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %9 = alloca %"class.std::tuple"*, align 8
  %10 = alloca %"class.std::tuple.24"*, align 8
  %11 = alloca %"struct.std::piecewise_construct_t", align 1
  %12 = alloca %"class.std::tuple", align 8
  %13 = alloca %"class.std::tuple.24", align 1
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %6, align 8
  store %"struct.std::pair.18"* %1, %"struct.std::pair.18"** %7, align 8
  store %"struct.std::piecewise_construct_t"* %2, %"struct.std::piecewise_construct_t"** %8, align 8
  store %"class.std::tuple"* %3, %"class.std::tuple"** %9, align 8
  store %"class.std::tuple.24"* %4, %"class.std::tuple.24"** %10, align 8
  %14 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %6, align 8
  %15 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %7, align 8
  %16 = bitcast %"struct.std::pair.18"* %15 to i8*
  %17 = bitcast i8* %16 to %"struct.std::pair.18"*
  %18 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %8, align 8
  %19 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %18) #2
  %20 = load %"class.std::tuple"*, %"class.std::tuple"** %9, align 8
  %21 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE(%"class.std::tuple"* dereferenceable(8) %20) #2
  call void @_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_(%"class.std::tuple"* %12, %"class.std::tuple"* dereferenceable(8) %21) #2
  %22 = load %"class.std::tuple.24"*, %"class.std::tuple.24"** %10, align 8
  %23 = call dereferenceable(1) %"class.std::tuple.24"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.24"* dereferenceable(1) %22) #2
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEC2IJOS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE(%"struct.std::pair.18"* %17, %"class.std::tuple"* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_(%"class.std::tuple"* %0, %"class.std::tuple"* dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::tuple"*, align 8
  %4 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %3, align 8
  store %"class.std::tuple"* %1, %"class.std::tuple"** %4, align 8
  %5 = load %"class.std::tuple"*, %"class.std::tuple"** %3, align 8
  %6 = bitcast %"class.std::tuple"* %5 to %"struct.std::_Tuple_impl"*
  %7 = load %"class.std::tuple"*, %"class.std::tuple"** %4, align 8
  %8 = bitcast %"class.std::tuple"* %7 to %"struct.std::_Tuple_impl"*
  call void @_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_(%"struct.std::_Tuple_impl"* %6, %"struct.std::_Tuple_impl"* dereferenceable(8) %8) #2
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEC2IJOS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE(%"struct.std::pair.18"* %0, %"class.std::tuple"* %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca %"struct.std::piecewise_construct_t", align 1
  %4 = alloca %"class.std::tuple.24", align 1
  %5 = alloca %"struct.std::pair.18"*, align 8
  %6 = alloca %"struct.std::_Index_tuple", align 1
  %7 = alloca %"struct.std::_Index_tuple.28", align 1
  store %"struct.std::pair.18"* %0, %"struct.std::pair.18"** %5, align 8
  %8 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %5, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEC2IJOS5_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE(%"struct.std::pair.18"* %8, %"class.std::tuple"* dereferenceable(8) %1, %"class.std::tuple.24"* dereferenceable(1) %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_(%"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"* dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Tuple_impl"*, align 8
  %4 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %3, align 8
  store %"struct.std::_Tuple_impl"* %1, %"struct.std::_Tuple_impl"** %4, align 8
  %5 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %3, align 8
  %6 = bitcast %"struct.std::_Tuple_impl"* %5 to %"struct.std::_Head_base"*
  %7 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %4, align 8
  %8 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_(%"struct.std::_Tuple_impl"* dereferenceable(8) %7) #2
  %9 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %8) #2
  invoke void @_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_(%"struct.std::_Head_base"* %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %9)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret void

11:                                               ; preds = %2
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %0) #1 comdat {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  ret %"class.std::__cxx11::basic_string"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_(%"struct.std::_Tuple_impl"* dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Tuple_impl"* %3 to %"struct.std::_Head_base"*
  %5 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS7_(%"struct.std::_Head_base"* dereferenceable(8) %4) #2
  ret %"class.std::__cxx11::basic_string"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_(%"struct.std::_Head_base"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Head_base"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.std::_Head_base"* %0, %"struct.std::_Head_base"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %5, i32 0, i32 0
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %8 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %7) #2
  store %"class.std::__cxx11::basic_string"* %8, %"class.std::__cxx11::basic_string"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS7_(%"struct.std::_Head_base"* dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %0, %"struct.std::_Head_base"** %2, align 8
  %3 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %3, i32 0, i32 0
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  ret %"class.std::__cxx11::basic_string"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %0) #1 comdat {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  ret %"class.std::__cxx11::basic_string"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEC2IJOS5_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE(%"struct.std::pair.18"* %0, %"class.std::tuple"* dereferenceable(8) %1, %"class.std::tuple.24"* dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::_Index_tuple", align 1
  %5 = alloca %"struct.std::_Index_tuple.28", align 1
  %6 = alloca %"struct.std::pair.18"*, align 8
  %7 = alloca %"class.std::tuple"*, align 8
  %8 = alloca %"class.std::tuple.24"*, align 8
  store %"struct.std::pair.18"* %0, %"struct.std::pair.18"** %6, align 8
  store %"class.std::tuple"* %1, %"class.std::tuple"** %7, align 8
  store %"class.std::tuple.24"* %2, %"class.std::tuple.24"** %8, align 8
  %9 = load %"struct.std::pair.18"*, %"struct.std::pair.18"** %6, align 8
  %10 = bitcast %"struct.std::pair.18"* %9 to %"class.std::__pair_base.19"*
  %11 = getelementptr inbounds %"struct.std::pair.18", %"struct.std::pair.18"* %9, i32 0, i32 0
  %12 = load %"class.std::tuple"*, %"class.std::tuple"** %7, align 8
  %13 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt3getILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* dereferenceable(8) %12) #2
  %14 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %13) #2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* %11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %14) #2
  %15 = getelementptr inbounds %"struct.std::pair.18", %"struct.std::pair.18"* %9, i32 0, i32 1
  store %struct.request* null, %struct.request** %15, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt3getILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl"*
  %5 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt12__get_helperILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(8) %4) #2
  ret %"class.std::__cxx11::basic_string"* %5
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt12__get_helperILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_(%"struct.std::_Tuple_impl"* dereferenceable(8) %3) #2
  ret %"class.std::__cxx11::basic_string"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %4 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %5, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %2, %"struct.std::_Rb_tree_node_base"* %6) #2
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %2, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  ret i64 %9
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %3 = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %5 = call dereferenceable(40) %"struct.std::pair.18"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %6 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEclERKSA_(%"struct.std::_Select1st"* %3, %"struct.std::pair.18"* dereferenceable(40) %5)
  ret %"class.std::__cxx11::basic_string"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(%"struct.std::pair.25"* %0, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.25"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.25"* %0, %"struct.std::pair.25"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"** %1, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.25"*, %"struct.std::pair.25"** %4, align 8
  %8 = bitcast %"struct.std::pair.25"* %7 to %"class.std::__pair_base.26"*
  %9 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %12 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 1
  %13 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %14 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %13) #2
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %14, align 8
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::pair.25", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(%"class.std::_Rb_tree"* %12) #2
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %6, align 8
  %14 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(%"class.std::_Rb_tree"* %12) #2
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
  %22 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %21 to %"struct.std::_Rb_tree_key_compare"*
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %22, i32 0, i32 0
  %24 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %25 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %26 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %25)
  %27 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %23, %"class.std::__cxx11::basic_string"* dereferenceable(32) %24, %"class.std::__cxx11::basic_string"* dereferenceable(32) %26)
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = load i8, i8* %8, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %33 = bitcast %"struct.std::_Rb_tree_node"* %32 to %"struct.std::_Rb_tree_node_base"*
  %34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %33) #2
  br label %39

35:                                               ; preds = %18
  %36 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %37 = bitcast %"struct.std::_Rb_tree_node"* %36 to %"struct.std::_Rb_tree_node_base"*
  %38 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %37) #2
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi %"struct.std::_Rb_tree_node"* [ %34, %31 ], [ %38, %35 ]
  store %"struct.std::_Rb_tree_node"* %40, %"struct.std::_Rb_tree_node"** %6, align 8
  br label %15

41:                                               ; preds = %15
  %42 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %9, %"struct.std::_Rb_tree_node_base"* %42) #2
  %43 = load i8, i8* %8, align 1
  %44 = trunc i8 %43 to i1
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv(%"class.std::_Rb_tree"* %12) #2
  %47 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %46, %"struct.std::_Rb_tree_node_base"** %47, align 8
  %48 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_(%"struct.std::_Rb_tree_iterator.23"* %9, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %10) #2
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %3, %"struct.std::_Rb_tree_node"** dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %7)
  br label %65

50:                                               ; preds = %45
  %51 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEmmEv(%"struct.std::_Rb_tree_iterator.23"* %9) #2
  br label %52

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %41
  %54 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %12, i32 0, i32 0
  %55 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %54 to %"struct.std::_Rb_tree_key_compare"*
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %55, i32 0, i32 0
  %57 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %9, i32 0, i32 0
  %58 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %57, align 8
  %59 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %58)
  %60 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %61 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %56, %"class.std::__cxx11::basic_string"* dereferenceable(32) %59, %"class.std::__cxx11::basic_string"* dereferenceable(32) %60)
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %3, %"struct.std::_Rb_tree_node"** dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %7)
  br label %65

63:                                               ; preds = %53
  %64 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %11, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(%"struct.std::pair.25"* %3, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %64, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %11)
  br label %65

65:                                               ; preds = %63, %62, %49
  %66 = bitcast %"struct.std::pair.25"* %3 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %67 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %66, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %67
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %0, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.25"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.25"* %0, %"struct.std::pair.25"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"** %1, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.25"*, %"struct.std::pair.25"** %4, align 8
  %8 = bitcast %"struct.std::pair.25"* %7 to %"class.std::__pair_base.26"*
  %9 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  %11 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %10) #2
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %11, align 8
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %13 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 1
  %14 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %15 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %14) #2
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %15, align 8
  store %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node_base"** %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEmmEv(%"struct.std::_Rb_tree_iterator.23"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5) #16
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_iterator.23"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEppEv(%"struct.std::_Rb_tree_iterator.23"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5) #16
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_iterator.23"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(%"struct.std::pair.25"* %0, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.25"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.25"* %0, %"struct.std::pair.25"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"** %1, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.25"*, %"struct.std::pair.25"** %4, align 8
  %8 = bitcast %"struct.std::pair.25"* %7 to %"class.std::__pair_base.26"*
  %9 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  %11 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %10) #2
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %11, align 8
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %13 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 1
  %14 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %14, align 8
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(40) %"struct.std::pair.18"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node_base"* %3 to %"struct.std::_Rb_tree_node"*
  %5 = call %"struct.std::pair.18"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %4)
  ret %"struct.std::pair.18"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::_Rb_tree_node_base"** %0, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  ret %"struct.std::_Rb_tree_node_base"** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  %4 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %9, i32 0, i32 2
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %2, %"struct.std::_Rb_tree_node_base"* %11) #2
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %2, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %0, %"struct.std::_Rb_tree_node"** dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.25"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.25"* %0, %"struct.std::pair.25"** %4, align 8
  store %"struct.std::_Rb_tree_node"** %1, %"struct.std::_Rb_tree_node"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.25"*, %"struct.std::pair.25"** %4, align 8
  %8 = bitcast %"struct.std::pair.25"* %7 to %"class.std::__pair_base.26"*
  %9 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %5, align 8
  %11 = call dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEOT_RNSt16remove_referenceISF_E4typeE(%"struct.std::_Rb_tree_node"** dereferenceable(8) %10) #2
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %11, align 8
  %13 = bitcast %"struct.std::_Rb_tree_node"* %12 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %13, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %14 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 1
  %15 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %16 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %15) #2
  %17 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %16, align 8
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEOT_RNSt16remove_referenceISF_E4typeE(%"struct.std::_Rb_tree_node"** dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::_Rb_tree_node"** %0, %"struct.std::_Rb_tree_node"*** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %2, align 8
  ret %"struct.std::_Rb_tree_node"** %3
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #5

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #5

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* dereferenceable(32)) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJS5_ELb1EEEDpOT_(%"class.std::tuple"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca %"class.std::tuple"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.std::tuple"*, %"class.std::tuple"** %3, align 8
  %6 = bitcast %"class.std::tuple"* %5 to %"struct.std::_Tuple_impl"*
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %8 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %7) #2
  call void @_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_(%"struct.std::_Tuple_impl"* %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_(%"struct.std::_Tuple_impl"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Tuple_impl"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %3, align 8
  %6 = bitcast %"struct.std::_Tuple_impl"* %5 to %"struct.std::_Head_base"*
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %8 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %7) #2
  call void @_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_(%"struct.std::_Head_base"* %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %8)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr i64 @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5eraseERS7_(%"class.std::_Rb_tree"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca %"struct.std::pair.29", align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %8 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %9 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11equal_rangeERS7_(%"class.std::_Rb_tree"* %9, %"class.std::__cxx11::basic_string"* dereferenceable(32) %10)
  %12 = bitcast %"struct.std::pair.29"* %5 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %13 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %12, i32 0, i32 0
  %14 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %11, 0
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %15 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %12, i32 0, i32 1
  %16 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %11, 1
  store %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node_base"** %15, align 8
  %17 = call i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv(%"class.std::_Rb_tree"* %9) #2
  store i64 %17, i64* %6, align 8
  %18 = getelementptr inbounds %"struct.std::pair.29", %"struct.std::pair.29"* %5, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2ERKSt17_Rb_tree_iteratorISA_E(%"struct.std::_Rb_tree_const_iterator"* %7, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %18) #2
  %19 = getelementptr inbounds %"struct.std::pair.29", %"struct.std::pair.29"* %5, i32 0, i32 1
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2ERKSt17_Rb_tree_iteratorISA_E(%"struct.std::_Rb_tree_const_iterator"* %8, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %19) #2
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %7, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %8, i32 0, i32 0
  %23 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %22, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_(%"class.std::_Rb_tree"* %9, %"struct.std::_Rb_tree_node_base"* %21, %"struct.std::_Rb_tree_node_base"* %23)
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv(%"class.std::_Rb_tree"* %9) #2
  %26 = sub i64 %24, %25
  ret i64 %26
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11equal_rangeERS7_(%"class.std::_Rb_tree"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::pair.29", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %11 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %12 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %13 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %14 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %15 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(%"class.std::_Rb_tree"* %14) #2
  store %"struct.std::_Rb_tree_node"* %15, %"struct.std::_Rb_tree_node"** %6, align 8
  %16 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(%"class.std::_Rb_tree"* %14) #2
  store %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node_base"** %7, align 8
  br label %17

17:                                               ; preds = %68, %2
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %19 = icmp ne %"struct.std::_Rb_tree_node"* %18, null
  br i1 %19, label %20, label %69

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %14, i32 0, i32 0
  %22 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %21 to %"struct.std::_Rb_tree_key_compare"*
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %22, i32 0, i32 0
  %24 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %25 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %24)
  %26 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %27 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %23, %"class.std::__cxx11::basic_string"* dereferenceable(32) %25, %"class.std::__cxx11::basic_string"* dereferenceable(32) %26)
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %30 = bitcast %"struct.std::_Rb_tree_node"* %29 to %"struct.std::_Rb_tree_node_base"*
  %31 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %30) #2
  store %"struct.std::_Rb_tree_node"* %31, %"struct.std::_Rb_tree_node"** %6, align 8
  br label %68

32:                                               ; preds = %20
  %33 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %14, i32 0, i32 0
  %34 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %33 to %"struct.std::_Rb_tree_key_compare"*
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %34, i32 0, i32 0
  %36 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %37 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %38 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %37)
  %39 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %35, %"class.std::__cxx11::basic_string"* dereferenceable(32) %36, %"class.std::__cxx11::basic_string"* dereferenceable(32) %38)
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %42 = bitcast %"struct.std::_Rb_tree_node"* %41 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %42, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %43 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %44 = bitcast %"struct.std::_Rb_tree_node"* %43 to %"struct.std::_Rb_tree_node_base"*
  %45 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %44) #2
  store %"struct.std::_Rb_tree_node"* %45, %"struct.std::_Rb_tree_node"** %6, align 8
  br label %67

46:                                               ; preds = %32
  %47 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %47, %"struct.std::_Rb_tree_node"** %8, align 8
  %48 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %48, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %49 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %50 = bitcast %"struct.std::_Rb_tree_node"* %49 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %50, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %51 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %52 = bitcast %"struct.std::_Rb_tree_node"* %51 to %"struct.std::_Rb_tree_node_base"*
  %53 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %52) #2
  store %"struct.std::_Rb_tree_node"* %53, %"struct.std::_Rb_tree_node"** %6, align 8
  %54 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %8, align 8
  %55 = bitcast %"struct.std::_Rb_tree_node"* %54 to %"struct.std::_Rb_tree_node_base"*
  %56 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %55) #2
  store %"struct.std::_Rb_tree_node"* %56, %"struct.std::_Rb_tree_node"** %8, align 8
  %57 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %58 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %59 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %60 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(%"class.std::_Rb_tree"* %14, %"struct.std::_Rb_tree_node"* %57, %"struct.std::_Rb_tree_node_base"* %58, %"class.std::__cxx11::basic_string"* dereferenceable(32) %59)
  %61 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %60, %"struct.std::_Rb_tree_node_base"** %61, align 8
  %62 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %8, align 8
  %63 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %64 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %65 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(%"class.std::_Rb_tree"* %14, %"struct.std::_Rb_tree_node"* %62, %"struct.std::_Rb_tree_node_base"* %63, %"class.std::__cxx11::basic_string"* dereferenceable(32) %64)
  %66 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %11, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %65, %"struct.std::_Rb_tree_node_base"** %66, align 8
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEESB_EC2ISB_SB_Lb1EEEOT_OT0_(%"struct.std::pair.29"* %3, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %10, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %11)
  br label %72

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %28
  br label %17

69:                                               ; preds = %17
  %70 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %12, %"struct.std::_Rb_tree_node_base"* %70) #2
  %71 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %13, %"struct.std::_Rb_tree_node_base"* %71) #2
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEESB_EC2ISB_SB_Lb1EEEOT_OT0_(%"struct.std::pair.29"* %3, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %12, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %13)
  br label %72

72:                                               ; preds = %69, %46
  %73 = bitcast %"struct.std::pair.29"* %3 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %74 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %73, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %74
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"* %2) #8 comdat align 2 {
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %8 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %9 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %11 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %12, align 8
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %13, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  %14 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %15 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv(%"class.std::_Rb_tree"* %14) #2
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %16, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2ERKSt17_Rb_tree_iteratorISA_E(%"struct.std::_Rb_tree_const_iterator"* %7, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %8) #2
  %17 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_(%"struct.std::_Rb_tree_const_iterator"* %4, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %7) #2
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(%"class.std::_Rb_tree"* %14) #2
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %19, %"struct.std::_Rb_tree_node_base"** %20, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2ERKSt17_Rb_tree_iteratorISA_E(%"struct.std::_Rb_tree_const_iterator"* %9, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %10) #2
  %21 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_(%"struct.std::_Rb_tree_const_iterator"* %5, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %9) #2
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ false, %3 ], [ %21, %18 ]
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv(%"class.std::_Rb_tree"* %14) #2
  br label %34

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %28, %25
  %27 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEneERKSB_(%"struct.std::_Rb_tree_const_iterator"* %4, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %5) #2
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEppEi(%"struct.std::_Rb_tree_const_iterator"* %4, i32 0) #2
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %11, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %29, %"struct.std::_Rb_tree_node_base"** %30, align 8
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %11, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E(%"class.std::_Rb_tree"* %14, %"struct.std::_Rb_tree_node_base"* %32)
  br label %26

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %24
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_upper_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node_base"* %2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %3) #8 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator.23", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"** %9, align 8
  %10 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  br label %11

11:                                               ; preds = %32, %4
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node"* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %16 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %15 to %"struct.std::_Rb_tree_key_compare"*
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %16, i32 0, i32 0
  %18 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %9, align 8
  %19 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %20 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(%"struct.std::_Rb_tree_node"* %19)
  %21 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %18, %"class.std::__cxx11::basic_string"* dereferenceable(32) %20)
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %25 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %26 = bitcast %"struct.std::_Rb_tree_node"* %25 to %"struct.std::_Rb_tree_node_base"*
  %27 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %26) #2
  store %"struct.std::_Rb_tree_node"* %27, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %30 = bitcast %"struct.std::_Rb_tree_node"* %29 to %"struct.std::_Rb_tree_node_base"*
  %31 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %30) #2
  store %"struct.std::_Rb_tree_node"* %31, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %11

33:                                               ; preds = %11
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator.23"* %5, %"struct.std::_Rb_tree_node_base"* %34) #2
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_iterator.23", %"struct.std::_Rb_tree_iterator.23"* %5, i32 0, i32 0
  %36 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %35, align 8
  ret %"struct.std::_Rb_tree_node_base"* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEESB_EC2ISB_SB_Lb1EEEOT_OT0_(%"struct.std::pair.29"* %0, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %1, %"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.29"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  store %"struct.std::pair.29"* %0, %"struct.std::pair.29"** %4, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %1, %"struct.std::_Rb_tree_iterator.23"** %5, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %2, %"struct.std::_Rb_tree_iterator.23"** %6, align 8
  %7 = load %"struct.std::pair.29"*, %"struct.std::pair.29"** %4, align 8
  %8 = bitcast %"struct.std::pair.29"* %7 to %"class.std::__pair_base.30"*
  %9 = getelementptr inbounds %"struct.std::pair.29", %"struct.std::pair.29"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %5, align 8
  %11 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZSt7forwardISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEOT_RNSt16remove_referenceISD_E4typeE(%"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %10) #2
  %12 = bitcast %"struct.std::_Rb_tree_iterator.23"* %9 to i8*
  %13 = bitcast %"struct.std::_Rb_tree_iterator.23"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = getelementptr inbounds %"struct.std::pair.29", %"struct.std::pair.29"* %7, i32 0, i32 1
  %15 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %6, align 8
  %16 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZSt7forwardISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEOT_RNSt16remove_referenceISD_E4typeE(%"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %15) #2
  %17 = bitcast %"struct.std::_Rb_tree_iterator.23"* %14 to i8*
  %18 = bitcast %"struct.std::_Rb_tree_iterator.23"* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_iterator.23"* @_ZSt7forwardISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEEOT_RNSt16remove_referenceISD_E4typeE(%"struct.std::_Rb_tree_iterator.23"* dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Rb_tree_iterator.23"*, align 8
  store %"struct.std::_Rb_tree_iterator.23"* %0, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator.23"*, %"struct.std::_Rb_tree_iterator.23"** %2, align 8
  ret %"struct.std::_Rb_tree_iterator.23"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEeqERKSB_(%"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_const_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %8, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = icmp eq %"struct.std::_Rb_tree_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv(%"class.std::_Rb_tree"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(%"class.std::_Rb_tree"* %3) #2
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %4)
          to label %5 unwind label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %7 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %6 to i8*
  %8 = getelementptr inbounds i8, i8* %7, i64 8
  %9 = bitcast i8* %8 to %"struct.std::_Rb_tree_header"*
  invoke void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* %9)
          to label %10 unwind label %11

10:                                               ; preds = %5
  ret void

11:                                               ; preds = %5, %1
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEneERKSB_(%"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_const_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %8, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = icmp ne %"struct.std::_Rb_tree_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E(%"class.std::_Rb_tree"* %0, %"struct.std::_Rb_tree_node_base"* %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %6, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  %7 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %10 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %7, i32 0, i32 0
  %11 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 8
  %13 = bitcast i8* %12 to %"struct.std::_Rb_tree_header"*
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %13, i32 0, i32 0
  %15 = call %"struct.std::_Rb_tree_node_base"* @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(%"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %14) #2
  %16 = bitcast %"struct.std::_Rb_tree_node_base"* %15 to %"struct.std::_Rb_tree_node"*
  store %"struct.std::_Rb_tree_node"* %16, %"struct.std::_Rb_tree_node"** %5, align 8
  %17 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7requestESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(%"class.std::_Rb_tree"* %7, %"struct.std::_Rb_tree_node"* %17) #2
  %18 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %7, i32 0, i32 0
  %19 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, request *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, request *> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, request *> > >::_Rb_tree_impl"* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  %21 = bitcast i8* %20 to %"struct.std::_Rb_tree_header"*
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7requestEEppEi(%"struct.std::_Rb_tree_const_iterator"* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %5 = alloca i32, align 4
  store %"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %4, align 8
  %7 = bitcast %"struct.std::_Rb_tree_const_iterator"* %3 to i8*
  %8 = bitcast %"struct.std::_Rb_tree_const_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 8, i1 false)
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %10) #16
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %12, align 8
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %13, align 8
  ret %"struct.std::_Rb_tree_node_base"* %14
}

; Function Attrs: nounwind
declare %"struct.std::_Rb_tree_node_base"* @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(%"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* dereferenceable(32)) #4

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE16_M_emplace_equalIJS0_IlS3_EEEESt17_Rb_tree_iteratorIS4_EDpOT_(%"class.std::_Rb_tree.0"* %0, %"struct.std::pair"* dereferenceable(16) %1) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"class.std::_Rb_tree.0"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %7 = alloca %"struct.std::pair.25", align 8
  %8 = alloca i8*
  %9 = alloca i32
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  %10 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %4, align 8
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %12 = call dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::pair"* dereferenceable(16) %11) #2
  %13 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE14_M_create_nodeIJS0_IlS3_EEEEPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree.0"* %10, %"struct.std::pair"* dereferenceable(16) %12)
  store %"struct.std::_Rb_tree_node.21"* %13, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %14 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %15 = invoke dereferenceable(8) i64* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node.21"* %14)
          to label %16 unwind label %34

16:                                               ; preds = %2
  %17 = invoke { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE23_M_get_insert_equal_posERS1_(%"class.std::_Rb_tree.0"* %10, i64* dereferenceable(8) %15)
          to label %18 unwind label %34

18:                                               ; preds = %16
  %19 = bitcast %"struct.std::pair.25"* %7 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %20 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %19, i32 0, i32 0
  %21 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %17, 0
  store %"struct.std::_Rb_tree_node_base"* %21, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %22 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %19, i32 0, i32 1
  %23 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %17, 1
  store %"struct.std::_Rb_tree_node_base"* %23, %"struct.std::_Rb_tree_node_base"** %22, align 8
  %24 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 0
  %25 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %24, align 8
  %26 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 1
  %27 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %26, align 8
  %28 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %29 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %10, %"struct.std::_Rb_tree_node_base"* %25, %"struct.std::_Rb_tree_node_base"* %27, %"struct.std::_Rb_tree_node.21"* %28)
          to label %30 unwind label %34

30:                                               ; preds = %18
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %29, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %33 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %32, align 8
  ret %"struct.std::_Rb_tree_node_base"* %33

34:                                               ; preds = %18, %16, %2
  %35 = landingpad { i8*, i32 }
          catch i8* null
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %8, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @__cxa_begin_catch(i8* %39) #2
  %41 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %10, %"struct.std::_Rb_tree_node.21"* %41) #2
  invoke void @__cxa_rethrow() #19
          to label %56 unwind label %42

42:                                               ; preds = %38
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %8, align 8
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %46 unwind label %53

46:                                               ; preds = %42
  br label %48

47:                                               ; No predecessors!
  call void @llvm.trap()
  unreachable

48:                                               ; preds = %46
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = insertvalue { i8*, i32 } undef, i8* %49, 0
  %52 = insertvalue { i8*, i32 } %51, i32 %50, 1
  resume { i8*, i32 } %52

53:                                               ; preds = %42
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #17
  unreachable

56:                                               ; preds = %38
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::pair"* dereferenceable(16) %0) #1 comdat {
  %2 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %2, align 8
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  ret %"struct.std::pair"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE14_M_create_nodeIJS0_IlS3_EEEEPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree.0"* %0, %"struct.std::pair"* dereferenceable(16) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree.0"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %6 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %3, align 8
  %7 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE11_M_get_nodeEv(%"class.std::_Rb_tree.0"* %6)
  store %"struct.std::_Rb_tree_node.21"* %7, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %8 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %10 = call dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::pair"* dereferenceable(16) %9) #2
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE17_M_construct_nodeIJS0_IlS3_EEEEvPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree.0"* %6, %"struct.std::_Rb_tree_node.21"* %8, %"struct.std::pair"* dereferenceable(16) %10)
  %11 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  ret %"struct.std::_Rb_tree_node.21"* %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE23_M_get_insert_equal_posERS1_(%"class.std::_Rb_tree.0"* %0, i64* dereferenceable(8) %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::pair.25", align 8
  %4 = alloca %"class.std::_Rb_tree.0"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %4, align 8
  %9 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree.0"* %8) #2
  store %"struct.std::_Rb_tree_node.21"* %9, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %10 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_M_endEv(%"class.std::_Rb_tree.0"* %8) #2
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %7, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node.21"* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %16 = bitcast %"struct.std::_Rb_tree_node.21"* %15 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %16, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %17 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %8, i32 0, i32 0
  %18 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %17 to %"struct.std::_Rb_tree_key_compare.4"*
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare.4", %"struct.std::_Rb_tree_key_compare.4"* %18, i32 0, i32 0
  %20 = load i64*, i64** %5, align 8
  %21 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %22 = call dereferenceable(8) i64* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node.21"* %21)
  %23 = call zeroext i1 @_ZNKSt4lessIlEclERKlS2_(%"struct.std::less.5"* %19, i64* dereferenceable(8) %20, i64* dereferenceable(8) %22)
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %26 = bitcast %"struct.std::_Rb_tree_node.21"* %25 to %"struct.std::_Rb_tree_node_base"*
  %27 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %26) #2
  br label %32

28:                                               ; preds = %14
  %29 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %6, align 8
  %30 = bitcast %"struct.std::_Rb_tree_node.21"* %29 to %"struct.std::_Rb_tree_node_base"*
  %31 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %30) #2
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi %"struct.std::_Rb_tree_node.21"* [ %27, %24 ], [ %31, %28 ]
  store %"struct.std::_Rb_tree_node.21"* %33, %"struct.std::_Rb_tree_node.21"** %6, align 8
  br label %11

34:                                               ; preds = %11
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKlP7requestEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %3, %"struct.std::_Rb_tree_node.21"** dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %7)
  %35 = bitcast %"struct.std::pair.25"* %3 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %36 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %36
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node.21"* %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %3 = alloca %"struct.std::_Select1st.32", align 1
  store %"struct.std::_Rb_tree_node.21"* %0, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %4 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %5 = call dereferenceable(16) %"struct.std::pair.14"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node.21"* %4)
  %6 = call dereferenceable(8) i64* @_ZNKSt10_Select1stISt4pairIKlP7requestEEclERKS4_(%"struct.std::_Select1st.32"* %3, %"struct.std::pair.14"* dereferenceable(16) %5)
  ret i64* %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node.21"* %3) #8 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree.0"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %10 = alloca i8, align 1
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"struct.std::_Rb_tree_node.21"* %3, %"struct.std::_Rb_tree_node.21"** %9, align 8
  %11 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %6, align 8
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node_base"* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %16 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_M_endEv(%"class.std::_Rb_tree.0"* %11) #2
  %17 = icmp eq %"struct.std::_Rb_tree_node_base"* %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %11, i32 0, i32 0
  %20 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %19 to %"struct.std::_Rb_tree_key_compare.4"*
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare.4", %"struct.std::_Rb_tree_key_compare.4"* %20, i32 0, i32 0
  %22 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %9, align 8
  %23 = call dereferenceable(8) i64* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node.21"* %22)
  %24 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %25 = call dereferenceable(8) i64* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %24)
  %26 = call zeroext i1 @_ZNKSt4lessIlEclERKlS2_(%"struct.std::less.5"* %21, i64* dereferenceable(8) %23, i64* dereferenceable(8) %25)
  br label %27

27:                                               ; preds = %18, %14, %4
  %28 = phi i1 [ true, %14 ], [ true, %4 ], [ %26, %18 ]
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %10, align 1
  %30 = load i8, i8* %10, align 1
  %31 = trunc i8 %30 to i1
  %32 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %9, align 8
  %33 = bitcast %"struct.std::_Rb_tree_node.21"* %32 to %"struct.std::_Rb_tree_node_base"*
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %35 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %11, i32 0, i32 0
  %36 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  %38 = bitcast i8* %37 to %"struct.std::_Rb_tree_header"*
  %39 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %38, i32 0, i32 0
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %31, %"struct.std::_Rb_tree_node_base"* %33, %"struct.std::_Rb_tree_node_base"* %34, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %39) #2
  %40 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %11, i32 0, i32 0
  %41 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = bitcast i8* %42 to %"struct.std::_Rb_tree_header"*
  %44 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %9, align 8
  %48 = bitcast %"struct.std::_Rb_tree_node.21"* %47 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %5, %"struct.std::_Rb_tree_node_base"* %48) #2
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %50 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %49, align 8
  ret %"struct.std::_Rb_tree_node_base"* %50
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node.21"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE11_M_get_nodeEv(%"class.std::_Rb_tree.0"* %0) #8 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree.0"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %2, align 8
  %3 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %2, align 8
  %4 = call dereferenceable(1) %"class.std::allocator.1"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree.0"* %3) #2
  %5 = call %"struct.std::_Rb_tree_node.21"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE8allocateERS7_m(%"class.std::allocator.1"* dereferenceable(1) %4, i64 1)
  ret %"struct.std::_Rb_tree_node.21"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE17_M_construct_nodeIJS0_IlS3_EEEEvPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::pair"* dereferenceable(16) %2) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Rb_tree.0"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %4, align 8
  store %"struct.std::_Rb_tree_node.21"* %1, %"struct.std::_Rb_tree_node.21"** %5, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %6, align 8
  %9 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %4, align 8
  %10 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node.21"* %10 to i8*
  %12 = bitcast i8* %11 to %"struct.std::_Rb_tree_node.21"*
  %13 = call dereferenceable(1) %"class.std::allocator.1"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree.0"* %9) #2
  %14 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %15 = invoke %"struct.std::pair.14"* @_ZNSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node.21"* %14)
          to label %16 unwind label %20

16:                                               ; preds = %3
  %17 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %18 = call dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::pair"* dereferenceable(16) %17) #2
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE9constructIS5_JS1_IlS4_EEEEvRS7_PT_DpOT0_(%"class.std::allocator.1"* dereferenceable(1) %13, %"struct.std::pair.14"* %15, %"struct.std::pair"* dereferenceable(16) %18)
          to label %19 unwind label %20

19:                                               ; preds = %16
  br label %34

20:                                               ; preds = %16, %3
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %7, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @__cxa_begin_catch(i8* %25) #2
  %27 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %28 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %9, %"struct.std::_Rb_tree_node.21"* %28) #2
  invoke void @__cxa_rethrow() #19
          to label %43 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %7, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %8, align 4
  invoke void @__cxa_end_catch()
          to label %33 unwind label %40

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %19
  ret void

35:                                               ; preds = %33
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = insertvalue { i8*, i32 } undef, i8* %36, 0
  %39 = insertvalue { i8*, i32 } %38, i32 %37, 1
  resume { i8*, i32 } %39

40:                                               ; preds = %29
  %41 = landingpad { i8*, i32 }
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  call void @__clang_call_terminate(i8* %42) #17
  unreachable

43:                                               ; preds = %24
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node.21"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE8allocateERS7_m(%"class.std::allocator.1"* dereferenceable(1) %0, i64 %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator.1"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %3, align 8
  %6 = bitcast %"class.std::allocator.1"* %5 to %"class.__gnu_cxx::new_allocator.2"*
  %7 = load i64, i64* %4, align 8
  %8 = call %"struct.std::_Rb_tree_node.21"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %6, i64 %7, i8* null)
  ret %"struct.std::_Rb_tree_node.21"* %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node.21"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %0, i64 %1, i8* %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %7) #2
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 48
  %15 = call i8* @_Znwm(i64 %14)
  %16 = bitcast i8* %15 to %"struct.std::_Rb_tree_node.21"*
  ret %"struct.std::_Rb_tree_node.21"* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  ret i64 384307168202282325
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKlP7requestEEEE9constructIS5_JS1_IlS4_EEEEvRS7_PT_DpOT0_(%"class.std::allocator.1"* dereferenceable(1) %0, %"struct.std::pair.14"* %1, %"struct.std::pair"* dereferenceable(16) %2) #8 comdat align 2 {
  %4 = alloca %"class.std::allocator.1"*, align 8
  %5 = alloca %"struct.std::pair.14"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %4, align 8
  store %"struct.std::pair.14"* %1, %"struct.std::pair.14"** %5, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %6, align 8
  %7 = load %"class.std::allocator.1"*, %"class.std::allocator.1"** %4, align 8
  %8 = bitcast %"class.std::allocator.1"* %7 to %"class.__gnu_cxx::new_allocator.2"*
  %9 = load %"struct.std::pair.14"*, %"struct.std::pair.14"** %5, align 8
  %10 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %11 = call dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::pair"* dereferenceable(16) %10) #2
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE9constructIS6_JS2_IlS5_EEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.2"* %8, %"struct.std::pair.14"* %9, %"struct.std::pair"* dereferenceable(16) %11)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKlP7requestEEE9constructIS6_JS2_IlS5_EEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.2"* %0, %"struct.std::pair.14"* %1, %"struct.std::pair"* dereferenceable(16) %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %5 = alloca %"struct.std::pair.14"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %0, %"class.__gnu_cxx::new_allocator.2"** %4, align 8
  store %"struct.std::pair.14"* %1, %"struct.std::pair.14"** %5, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.2"*, %"class.__gnu_cxx::new_allocator.2"** %4, align 8
  %8 = load %"struct.std::pair.14"*, %"struct.std::pair.14"** %5, align 8
  %9 = bitcast %"struct.std::pair.14"* %8 to i8*
  %10 = bitcast i8* %9 to %"struct.std::pair.14"*
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %12 = call dereferenceable(16) %"struct.std::pair"* @_ZSt7forwardISt4pairIlP7requestEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::pair"* dereferenceable(16) %11) #2
  call void @_ZNSt4pairIKlP7requestEC2IlS2_Lb1EEEOS_IT_T0_E(%"struct.std::pair.14"* %10, %"struct.std::pair"* dereferenceable(16) %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIKlP7requestEC2IlS2_Lb1EEEOS_IT_T0_E(%"struct.std::pair.14"* %0, %"struct.std::pair"* dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::pair.14"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair.14"* %0, %"struct.std::pair.14"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::pair.14"*, %"struct.std::pair.14"** %3, align 8
  %6 = bitcast %"struct.std::pair.14"* %5 to %"class.std::__pair_base.15"*
  %7 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %5, i32 0, i32 0
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %8, i32 0, i32 0
  %10 = call dereferenceable(8) i64* @_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE(i64* dereferenceable(8) %9) #2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %5, i32 0, i32 1
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %14 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %13, i32 0, i32 1
  %15 = call dereferenceable(8) %struct.request** @_ZSt7forwardIP7requestEOT_RNSt16remove_referenceIS2_E4typeE(%struct.request** dereferenceable(8) %14) #2
  %16 = load %struct.request*, %struct.request** %15, align 8
  store %struct.request* %16, %struct.request** %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt7forwardIlEOT_RNSt16remove_referenceIS0_E4typeE(i64* dereferenceable(8) %0) #1 comdat {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  ret i64* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %struct.request** @_ZSt7forwardIP7requestEOT_RNSt16remove_referenceIS2_E4typeE(%struct.request** dereferenceable(8) %0) #1 comdat {
  %2 = alloca %struct.request**, align 8
  store %struct.request** %0, %struct.request*** %2, align 8
  %3 = load %struct.request**, %struct.request*** %2, align 8
  ret %struct.request** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_M_endEv(%"class.std::_Rb_tree.0"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree.0"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %2, align 8
  %3 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessIlEclERKlS2_(%"struct.std::less.5"* %0, i64* dereferenceable(8) %1, i64* dereferenceable(8) %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less.5"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %"struct.std::less.5"* %0, %"struct.std::less.5"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %"struct.std::less.5"*, %"struct.std::less.5"** %4, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %9, %11
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKlP7requestEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.25"* %0, %"struct.std::_Rb_tree_node.21"** dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.25"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node.21"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.25"* %0, %"struct.std::pair.25"** %4, align 8
  store %"struct.std::_Rb_tree_node.21"** %1, %"struct.std::_Rb_tree_node.21"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.25"*, %"struct.std::pair.25"** %4, align 8
  %8 = bitcast %"struct.std::pair.25"* %7 to %"class.std::__pair_base.26"*
  %9 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node.21"**, %"struct.std::_Rb_tree_node.21"*** %5, align 8
  %11 = call dereferenceable(8) %"struct.std::_Rb_tree_node.21"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKlP7requestEEEOT_RNSt16remove_referenceIS9_E4typeE(%"struct.std::_Rb_tree_node.21"** dereferenceable(8) %10) #2
  %12 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %11, align 8
  %13 = bitcast %"struct.std::_Rb_tree_node.21"* %12 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %13, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %14 = getelementptr inbounds %"struct.std::pair.25", %"struct.std::pair.25"* %7, i32 0, i32 1
  %15 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %16 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %15) #2
  %17 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %16, align 8
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_node.21"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKlP7requestEEEOT_RNSt16remove_referenceIS9_E4typeE(%"struct.std::_Rb_tree_node.21"** dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Rb_tree_node.21"**, align 8
  store %"struct.std::_Rb_tree_node.21"** %0, %"struct.std::_Rb_tree_node.21"*** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node.21"**, %"struct.std::_Rb_tree_node.21"*** %2, align 8
  ret %"struct.std::_Rb_tree_node.21"** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZNKSt10_Select1stISt4pairIKlP7requestEEclERKS4_(%"struct.std::_Select1st.32"* %0, %"struct.std::pair.14"* dereferenceable(16) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Select1st.32"*, align 8
  %4 = alloca %"struct.std::pair.14"*, align 8
  store %"struct.std::_Select1st.32"* %0, %"struct.std::_Select1st.32"** %3, align 8
  store %"struct.std::pair.14"* %1, %"struct.std::pair.14"** %4, align 8
  %5 = load %"struct.std::_Select1st.32"*, %"struct.std::_Select1st.32"** %3, align 8
  %6 = load %"struct.std::pair.14"*, %"struct.std::pair.14"** %4, align 8
  %7 = getelementptr inbounds %"struct.std::pair.14", %"struct.std::pair.14"* %6, i32 0, i32 0
  ret i64* %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair.14"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node.21"* %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"struct.std::_Rb_tree_node.21"* %0, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %4 = call %"struct.std::pair.14"* @_ZNKSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node.21"* %3)
  ret %"struct.std::pair.14"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.14"* @_ZNKSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node.21"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  store %"struct.std::_Rb_tree_node.21"* %0, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node.21", %"struct.std::_Rb_tree_node.21"* %3, i32 0, i32 1
  %5 = call %"struct.std::pair.14"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %4) #2
  ret %"struct.std::pair.14"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::pair.14"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf.22"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf.22"* %0, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf.22"*, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %4 = call i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %3) #2
  %5 = bitcast i8* %4 to %"struct.std::pair.14"*
  ret %"struct.std::pair.14"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKlP7requestEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.22"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf.22"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf.22"* %0, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf.22"*, %"struct.__gnu_cxx::__aligned_membuf.22"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf.22", %"struct.__gnu_cxx::__aligned_membuf.22"* %3, i32 0, i32 0
  %5 = bitcast [16 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dereferenceable(8) i64* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %3 = alloca %"struct.std::_Select1st.32", align 1
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %5 = call dereferenceable(16) %"struct.std::pair.14"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %6 = call dereferenceable(8) i64* @_ZNKSt10_Select1stISt4pairIKlP7requestEEclERKS4_(%"struct.std::_Select1st.32"* %3, %"struct.std::pair.14"* dereferenceable(16) %5)
  ret i64* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_node_base"* %1) unnamed_addr #1 comdat align 2 {
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(16) %"struct.std::pair.14"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node_base"* %3 to %"struct.std::_Rb_tree_node.21"*
  %5 = call %"struct.std::pair.14"* @_ZNKSt13_Rb_tree_nodeISt4pairIKlP7requestEE9_M_valptrEv(%"struct.std::_Rb_tree_node.21"* %4)
  ret %"struct.std::pair.14"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE5beginEv(%"class.std::_Rb_tree.0"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::_Rb_tree.0"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %3, align 8
  %4 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %9, i32 0, i32 2
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %2, %"struct.std::_Rb_tree_node_base"* %11) #2
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE3endEv(%"class.std::_Rb_tree.0"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::_Rb_tree.0"*, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %3, align 8
  %4 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %2, %"struct.std::_Rb_tree_node_base"* %9) #2
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS4_E(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node_base"* %1) #8 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"class.std::_Rb_tree.0"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator.34", align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %5, align 8
  %8 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %5, align 8
  %9 = bitcast %"struct.std::_Rb_tree_iterator"* %3 to i8*
  %10 = bitcast %"struct.std::_Rb_tree_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEv(%"struct.std::_Rb_tree_iterator"* %3) #2
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKlP7requestEEC2ERKSt17_Rb_tree_iteratorIS4_E(%"struct.std::_Rb_tree_const_iterator.34"* %6, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %4) #2
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator.34", %"struct.std::_Rb_tree_const_iterator.34"* %6, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS4_E(%"class.std::_Rb_tree.0"* %8, %"struct.std::_Rb_tree_node_base"* %13)
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %14, align 8
  ret %"struct.std::_Rb_tree_node_base"* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKlP7requestEEppEv(%"struct.std::_Rb_tree_iterator"* %0) #1 comdat align 2 {
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS4_E(%"class.std::_Rb_tree.0"* %0, %"struct.std::_Rb_tree_node_base"* %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator.34", align 8
  %4 = alloca %"class.std::_Rb_tree.0"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node.21"*, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator.34", %"struct.std::_Rb_tree_const_iterator.34"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %6, align 8
  store %"class.std::_Rb_tree.0"* %0, %"class.std::_Rb_tree.0"** %4, align 8
  %7 = load %"class.std::_Rb_tree.0"*, %"class.std::_Rb_tree.0"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator.34", %"struct.std::_Rb_tree_const_iterator.34"* %3, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %10 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %7, i32 0, i32 0
  %11 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 8
  %13 = bitcast i8* %12 to %"struct.std::_Rb_tree_header"*
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %13, i32 0, i32 0
  %15 = call %"struct.std::_Rb_tree_node_base"* @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(%"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %14) #2
  %16 = bitcast %"struct.std::_Rb_tree_node_base"* %15 to %"struct.std::_Rb_tree_node.21"*
  store %"struct.std::_Rb_tree_node.21"* %16, %"struct.std::_Rb_tree_node.21"** %5, align 8
  %17 = load %"struct.std::_Rb_tree_node.21"*, %"struct.std::_Rb_tree_node.21"** %5, align 8
  call void @_ZNSt8_Rb_treeIlSt4pairIKlP7requestESt10_Select1stIS4_ESt4lessIlESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree.0"* %7, %"struct.std::_Rb_tree_node.21"* %17) #2
  %18 = getelementptr inbounds %"class.std::_Rb_tree.0", %"class.std::_Rb_tree.0"* %7, i32 0, i32 0
  %19 = bitcast %"struct.std::_Rb_tree<long, std::pair<const long, request *>, std::_Select1st<std::pair<const long, request *> >, std::less<long>, std::allocator<std::pair<const long, request *> > >::_Rb_tree_impl"* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  %21 = bitcast i8* %20 to %"struct.std::_Rb_tree_header"*
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKlP7requestEEC2ERKSt17_Rb_tree_iteratorIS4_E(%"struct.std::_Rb_tree_const_iterator.34"* %0, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator.34"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator.34"* %0, %"struct.std::_Rb_tree_const_iterator.34"** %3, align 8
  store %"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_const_iterator.34"*, %"struct.std::_Rb_tree_const_iterator.34"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator.34", %"struct.std::_Rb_tree_const_iterator.34"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %7, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_opentftpd.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nounwind willreturn }
attributes #16 = { nounwind readonly }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{i32 -2144664523}
!3 = !{i32 -2144663127}
