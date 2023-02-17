; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_const_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"class.std::allocator" = type { i8 }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"struct.std::__allocated_ptr" = type { %"class.std::allocator"*, %"struct.std::_List_node"* }

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_ = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2ERKS4_ = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE8_M_clearEv = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implD2Ev = comdat any

$_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEED2Ev = comdat any

$_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE7destroyIS2_EEvRS4_PT_ = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE10deallocateEPS3_m = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE7destroyIS2_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv = comdat any

$_ZNKSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP12TwoIntsClassEES4_E17_S_select_on_copyERKS5_ = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2EOSaISt10_List_nodeIS2_EE = comdat any

$_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE5beginEv = comdat any

$_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type = comdat any

$_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_ = comdat any

$_ZNKSt20_List_const_iteratorIP12TwoIntsClassEdeEv = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE12emplace_backIJRKS2_EEEvDpOT_ = comdat any

$_ZNSt20_List_const_iteratorIP12TwoIntsClassEppEv = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv = comdat any

$_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_ = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_ = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_get_nodeEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEC2ERS4_PS3_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_ = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEED2Ev = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE9constructIS2_JRKS2_EEEvPT_DpOT0_ = comdat any

$_ZSt11__addressofISaISt10_List_nodeIP12TwoIntsClassEEEPT_RS5_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE8allocateERS4_m = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE11_M_max_sizeEv = comdat any

$_ZNSt14_List_iteratorIP12TwoIntsClassEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNKSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv = comdat any

$_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE = comdat any

$_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_ = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE = comdat any

$_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_ = comdat any

$_ZNSt8__detail17_List_node_headerC2Ev = comdat any

$_ZNSt8__detail17_List_node_header7_M_initEv = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2ERKS4_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE37select_on_container_copy_constructionERKS4_ = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2Ev = comdat any

$_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2Ev = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2Ev = comdat any

$_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv = comdat any

$_ZNSt14_List_iteratorIP12TwoIntsClassEmmEv = comdat any

$_ZNKSt14_List_iteratorIP12TwoIntsClassEdeEv = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_734goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_73L7goodG2BEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_73L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_73L7goodG2BEv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %"class.std::__cxx11::list", align 8
  %3 = alloca %class.TwoIntsClass*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::__cxx11::list", align 8
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev(%"class.std::__cxx11::list"* %2) #9
  %7 = invoke noalias nonnull i8* @_Znwm(i64 8) #10
          to label %8 unwind label %20

8:                                                ; preds = %0
  %9 = bitcast i8* %7 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %9, %class.TwoIntsClass** %3, align 8
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %11 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %13 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  store %class.TwoIntsClass* %14, %class.TwoIntsClass** %1, align 8
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %2, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1)
          to label %15 unwind label %20

15:                                               ; preds = %8
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %2, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1)
          to label %16 unwind label %20

16:                                               ; preds = %15
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %2, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1)
          to label %17 unwind label %20

17:                                               ; preds = %16
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2ERKS4_(%"class.std::__cxx11::list"* %6, %"class.std::__cxx11::list"* nonnull align 8 dereferenceable(24) %2)
          to label %18 unwind label %20

18:                                               ; preds = %17
  invoke void @_ZN41CWE476_NULL_Pointer_Dereference__class_7311goodG2BSinkENSt7__cxx114listIP12TwoIntsClassSaIS3_EEE(%"class.std::__cxx11::list"* %6)
          to label %19 unwind label %24

19:                                               ; preds = %18
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %6) #9
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %2) #9
  ret void

20:                                               ; preds = %17, %16, %15, %8, %0
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
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %6) #9
  br label %28

28:                                               ; preds = %24, %20
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %2) #9
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_73L7goodB2GEv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %"class.std::__cxx11::list", align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__cxx11::list", align 8
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev(%"class.std::__cxx11::list"* %2) #9
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %2, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %11

6:                                                ; preds = %0
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %2, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %11

7:                                                ; preds = %6
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %2, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1)
          to label %8 unwind label %11

8:                                                ; preds = %7
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2ERKS4_(%"class.std::__cxx11::list"* %5, %"class.std::__cxx11::list"* nonnull align 8 dereferenceable(24) %2)
          to label %9 unwind label %11

9:                                                ; preds = %8
  invoke void @_ZN41CWE476_NULL_Pointer_Dereference__class_7311goodB2GSinkENSt7__cxx114listIP12TwoIntsClassSaIS3_EEE(%"class.std::__cxx11::list"* %5)
          to label %10 unwind label %15

10:                                               ; preds = %9
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %5) #9
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %2) #9
  ret void

11:                                               ; preds = %8, %7, %6, %0
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %3, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %9
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %3, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %4, align 4
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %5) #9
  br label %19

19:                                               ; preds = %15, %11
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %2) #9
  br label %20

20:                                               ; preds = %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2Ev(%"class.std::__cxx11::list"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2Ev(%"class.std::__cxx11::_List_base"* %4) #9
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %0, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca %class.TwoIntsClass**, align 8
  %5 = alloca %"struct.std::_List_const_iterator", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %4, align 8
  %6 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %7 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(%"class.std::__cxx11::list"* %6) #9
  %8 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %10, align 8
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(%"class.std::__cxx11::list"* %6, %"struct.std::__detail::_List_node_base"* %11, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %9)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EEC2ERKS4_(%"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca %"class.std::__cxx11::list"*, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"struct.std::_List_const_iterator", align 8
  %9 = alloca %"struct.std::_List_const_iterator", align 8
  %10 = alloca %"class.std::allocator", align 1
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store %"class.std::__cxx11::list"* %1, %"class.std::__cxx11::list"** %4, align 8
  %11 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %12 = bitcast %"class.std::__cxx11::list"* %11 to %"class.std::__cxx11::_List_base"*
  %13 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %4, align 8
  %14 = bitcast %"class.std::__cxx11::list"* %13 to %"class.std::__cxx11::_List_base"*
  %15 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %14) #9
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP12TwoIntsClassEES4_E17_S_select_on_copyERKS5_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %5, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %15)
  invoke void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(%"class.std::__cxx11::_List_base"* %12, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
          to label %16 unwind label %28

16:                                               ; preds = %2
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(%"class.std::allocator"* %5) #9
  %17 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %4, align 8
  %18 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE5beginEv(%"class.std::__cxx11::list"* %17) #9
  %19 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %8, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %18, %"struct.std::__detail::_List_node_base"** %19, align 8
  %20 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %4, align 8
  %21 = call %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(%"class.std::__cxx11::list"* %20) #9
  %22 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %9, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %21, %"struct.std::__detail::_List_node_base"** %22, align 8
  %23 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %8, i32 0, i32 0
  %24 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %23, align 8
  %25 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %9, i32 0, i32 0
  %26 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %25, align 8
  invoke void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(%"class.std::__cxx11::list"* %11, %"struct.std::__detail::_List_node_base"* %24, %"struct.std::__detail::_List_node_base"* %26)
          to label %27 unwind label %32

27:                                               ; preds = %16
  ret void

28:                                               ; preds = %2
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %6, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %7, align 4
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(%"class.std::allocator"* %5) #9
  br label %37

32:                                               ; preds = %16
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %6, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %7, align 4
  %36 = bitcast %"class.std::__cxx11::list"* %11 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %36) #9
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = insertvalue { i8*, i32 } undef, i8* %38, 0
  %41 = insertvalue { i8*, i32 } %40, i32 %39, 1
  resume { i8*, i32 } %41
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::list"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %4) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* %3) #9
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %4) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %3 = alloca %"struct.std::__detail::_List_node_base"*, align 8
  %4 = alloca %"struct.std::_List_node"*, align 8
  %5 = alloca %class.TwoIntsClass**, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %6 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::__detail::_List_node_header"* %8 to %"struct.std::__detail::_List_node_base"*
  %10 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %9, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %10, align 8
  store %"struct.std::__detail::_List_node_base"* %11, %"struct.std::__detail::_List_node_base"** %3, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %3, align 8
  %14 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %6, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::__detail::_List_node_header"* %15 to %"struct.std::__detail::_List_node_base"*
  %17 = icmp ne %"struct.std::__detail::_List_node_base"* %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %3, align 8
  %20 = bitcast %"struct.std::__detail::_List_node_base"* %19 to %"struct.std::_List_node"*
  store %"struct.std::_List_node"* %20, %"struct.std::_List_node"** %4, align 8
  %21 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  %22 = bitcast %"struct.std::_List_node"* %21 to %"struct.std::__detail::_List_node_base"*
  %23 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %22, i32 0, i32 0
  %24 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %23, align 8
  store %"struct.std::__detail::_List_node_base"* %24, %"struct.std::__detail::_List_node_base"** %3, align 8
  %25 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  %26 = invoke %class.TwoIntsClass** @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(%"struct.std::_List_node"* %25)
          to label %27 unwind label %32

27:                                               ; preds = %18
  store %class.TwoIntsClass** %26, %class.TwoIntsClass*** %5, align 8
  %28 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %6) #9
  %29 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %5, align 8
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE7destroyIS2_EEvRS4_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %28, %class.TwoIntsClass** %29) #9
  %30 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %6, %"struct.std::_List_node"* %30) #9
  br label %12

31:                                               ; preds = %12
  ret void

32:                                               ; preds = %18
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"** %2, align 8
  %3 = load %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"*, %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(%"class.std::allocator"* %4) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeIP12TwoIntsClassEED2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.std::allocator"*
  call void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEED2Ev(%"class.std::allocator"* %4) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEED2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.TwoIntsClass** @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(%"struct.std::_List_node"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %0, %"struct.std::_List_node"** %2, align 8
  %3 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %3, i32 0, i32 1
  %5 = call %class.TwoIntsClass** @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %4) #9
  ret %class.TwoIntsClass** %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE7destroyIS2_EEvRS4_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.TwoIntsClass** %1) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %class.TwoIntsClass**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.std::allocator"*
  %7 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %4, align 8
  call void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE7destroyIS2_EEvPT_(%"class.std::allocator"* %6, %class.TwoIntsClass** %7) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %0, %"struct.std::_List_node"* %1) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %4 = alloca %"struct.std::_List_node"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %3, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %6 to %"class.std::allocator"*
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %7, %"struct.std::_List_node"* %8, i64 1)
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #11
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #2 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #9
  call void @_ZSt9terminatev() #11
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"struct.std::_List_node"* %1, i64 %2) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::allocator"*
  %9 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE10deallocateEPS3_m(%"class.std::allocator"* %8, %"struct.std::_List_node"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE10deallocateEPS3_m(%"class.std::allocator"* %0, %"struct.std::_List_node"* %1, i64 %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %9 = bitcast %"struct.std::_List_node"* %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE7destroyIS2_EEvPT_(%"class.std::allocator"* %0, %class.TwoIntsClass** %1) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %class.TwoIntsClass**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.TwoIntsClass** @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #9
  %5 = bitcast i8* %4 to %class.TwoIntsClass**
  ret %class.TwoIntsClass** %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [8 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIP12TwoIntsClassEES4_E17_S_select_on_copyERKS5_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE37select_on_container_copy_constructionERKS4_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2EOSaISt10_List_nodeIS2_EE(%"class.std::__cxx11::_List_base"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %7) #9
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(%"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %6, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %8) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE5beginEv(%"class.std::__cxx11::list"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_List_const_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %8, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  call void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %2, %"struct.std::__detail::_List_node_base"* %10) #9
  %11 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %2, i32 0, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %11, align 8
  ret %"struct.std::__detail::_List_node_base"* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNKSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(%"class.std::__cxx11::list"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_List_const_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %2, %"struct.std::__detail::_List_node_base"* %8) #9
  %9 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %2, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  ret %"struct.std::__detail::_List_node_base"* %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE22_M_initialize_dispatchISt20_List_const_iteratorIS2_EEEvT_S8_St12__false_type(%"class.std::__cxx11::list"* %0, %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"* %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::_List_const_iterator", align 8
  %5 = alloca %"struct.std::_List_const_iterator", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::__cxx11::list"*, align 8
  %8 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %9, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %7, align 8
  %10 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %7, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = call zeroext i1 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(%"struct.std::_List_const_iterator"* nonnull align 8 dereferenceable(8) %4, %"struct.std::_List_const_iterator"* nonnull align 8 dereferenceable(8) %5) #9
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZNKSt20_List_const_iteratorIP12TwoIntsClassEdeEv(%"struct.std::_List_const_iterator"* %4) #9
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE12emplace_backIJRKS2_EEEvDpOT_(%"class.std::__cxx11::list"* %10, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %14)
  br label %15

15:                                               ; preds = %13
  %16 = call nonnull align 8 dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt20_List_const_iteratorIP12TwoIntsClassEppEv(%"struct.std::_List_const_iterator"* %4) #9
  br label %11

17:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZStneRKSt20_List_const_iteratorIP12TwoIntsClassES4_(%"struct.std::_List_const_iterator"* nonnull align 8 dereferenceable(8) %0, %"struct.std::_List_const_iterator"* nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"struct.std::_List_const_iterator"*, align 8
  %4 = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %0, %"struct.std::_List_const_iterator"** %3, align 8
  store %"struct.std::_List_const_iterator"* %1, %"struct.std::_List_const_iterator"** %4, align 8
  %5 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %6, align 8
  %8 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %8, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  %11 = icmp ne %"struct.std::__detail::_List_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZNKSt20_List_const_iteratorIP12TwoIntsClassEdeEv(%"struct.std::_List_const_iterator"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %0, %"struct.std::_List_const_iterator"** %2, align 8
  %3 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %7 = invoke %class.TwoIntsClass** @_ZNKSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(%"struct.std::_List_node"* %6)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret %class.TwoIntsClass** %7

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #11
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE12emplace_backIJRKS2_EEEvDpOT_(%"class.std::__cxx11::list"* %0, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca %class.TwoIntsClass**, align 8
  %5 = alloca %"struct.std::_List_const_iterator", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %4, align 8
  %6 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %7 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(%"class.std::__cxx11::list"* %6) #9
  %8 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %4, align 8
  %10 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(%class.TwoIntsClass** nonnull align 8 dereferenceable(8) %9) #9
  %11 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %11, align 8
  call void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(%"class.std::__cxx11::list"* %6, %"struct.std::__detail::_List_node_base"* %12, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt20_List_const_iteratorIP12TwoIntsClassEppEv(%"struct.std::_List_const_iterator"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %0, %"struct.std::_List_const_iterator"** %2, align 8
  %3 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  ret %"struct.std::_List_const_iterator"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(%"class.std::__cxx11::list"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_List_const_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIP12TwoIntsClassEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %2, %"struct.std::__detail::_List_node_base"* %8) #9
  %9 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %2, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  ret %"struct.std::__detail::_List_node_base"* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(%class.TwoIntsClass** nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %class.TwoIntsClass**, align 8
  store %class.TwoIntsClass** %0, %class.TwoIntsClass*** %2, align 8
  %3 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %2, align 8
  ret %class.TwoIntsClass** %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(%"class.std::__cxx11::list"* %0, %"struct.std::__detail::_List_node_base"* %1, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::_List_const_iterator", align 8
  %5 = alloca %"class.std::__cxx11::list"*, align 8
  %6 = alloca %class.TwoIntsClass**, align 8
  %7 = alloca %"struct.std::_List_node"*, align 8
  %8 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %8, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %5, align 8
  store %class.TwoIntsClass** %2, %class.TwoIntsClass*** %6, align 8
  %9 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %5, align 8
  %10 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %6, align 8
  %11 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(%class.TwoIntsClass** nonnull align 8 dereferenceable(8) %10) #9
  %12 = call %"struct.std::_List_node"* @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(%"class.std::__cxx11::list"* %9, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %11)
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %7, align 8
  %13 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8
  %14 = bitcast %"struct.std::_List_node"* %13 to %"struct.std::__detail::_List_node_base"*
  %15 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %4, i32 0, i32 0
  %16 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %15, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* %14, %"struct.std::__detail::_List_node_base"* %16) #9
  %17 = bitcast %"class.std::__cxx11::list"* %9 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %17, i64 1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(%"class.std::__cxx11::list"* %0, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca %class.TwoIntsClass**, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::__allocated_ptr", align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %4, align 8
  %10 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %11 = bitcast %"class.std::__cxx11::list"* %10 to %"class.std::__cxx11::_List_base"*
  %12 = call %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %11)
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %5, align 8
  %13 = bitcast %"class.std::__cxx11::list"* %10 to %"class.std::__cxx11::_List_base"*
  %14 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %13) #9
  store %"class.std::allocator"* %14, %"class.std::allocator"** %6, align 8
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %16 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEC2ERS4_PS3_(%"struct.std::__allocated_ptr"* %7, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %15, %"struct.std::_List_node"* %16) #9
  %17 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %18 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %19 = invoke %class.TwoIntsClass** @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(%"struct.std::_List_node"* %18)
          to label %20 unwind label %25

20:                                               ; preds = %2
  %21 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %4, align 8
  %22 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(%class.TwoIntsClass** nonnull align 8 dereferenceable(8) %21) #9
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %17, %class.TwoIntsClass** %19, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %22) #9
  %23 = call nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEaSEDn(%"struct.std::__allocated_ptr"* %7, i8* null) #9
  %24 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEED2Ev(%"struct.std::__allocated_ptr"* %7) #9
  ret %"struct.std::_List_node"* %24

25:                                               ; preds = %2
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %8, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %9, align 4
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEED2Ev(%"struct.std::__allocated_ptr"* %7) #9
  br label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %0, i64 %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_header", %"struct.std::__detail::_List_node_header"* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, %6
  store i64 %11, i64* %9, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %0) #0 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %4 to %"class.std::allocator"*
  %6 = call %"struct.std::_List_node"* @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE8allocateERS4_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5, i64 1)
  ret %"struct.std::_List_node"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEC2ERS4_PS3_(%"struct.std::__allocated_ptr"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1, %"struct.std::_List_node"* %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::__allocated_ptr"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %4, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %5, align 8
  store %"struct.std::_List_node"* %2, %"struct.std::_List_node"** %6, align 8
  %7 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 0
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %10 = call %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIP12TwoIntsClassEEEPT_RS5_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9) #9
  store %"class.std::allocator"* %10, %"class.std::allocator"** %8, align 8
  %11 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 1
  %12 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %6, align 8
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.TwoIntsClass** %1, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %class.TwoIntsClass**, align 8
  %6 = alloca %class.TwoIntsClass**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %5, align 8
  store %class.TwoIntsClass** %2, %class.TwoIntsClass*** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::allocator"*
  %9 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %5, align 8
  %10 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %6, align 8
  %11 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(%class.TwoIntsClass** nonnull align 8 dereferenceable(8) %10) #9
  call void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.std::allocator"* %8, %class.TwoIntsClass** %9, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %11) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEEaSEDn(%"struct.std::__allocated_ptr"* %0, i8* %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::__allocated_ptr"*, align 8
  %4 = alloca i8*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %5, i32 0, i32 1
  store %"struct.std::_List_node"* null, %"struct.std::_List_node"** %6, align 8
  ret %"struct.std::__allocated_ptr"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIP12TwoIntsClassEEED2Ev(%"struct.std::__allocated_ptr"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::__allocated_ptr"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %2, align 8
  %3 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 1
  %5 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  %6 = icmp ne %"struct.std::_List_node"* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 0
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 1
  %11 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %10, align 8
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE10deallocateERS4_PS3_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9, %"struct.std::_List_node"* %11, i64 1)
          to label %12 unwind label %14

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %1
  ret void

14:                                               ; preds = %7
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.std::allocator"* %0, %class.TwoIntsClass** %1, %class.TwoIntsClass** nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %class.TwoIntsClass**, align 8
  %6 = alloca %class.TwoIntsClass**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %5, align 8
  store %class.TwoIntsClass** %2, %class.TwoIntsClass*** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %5, align 8
  %9 = bitcast %class.TwoIntsClass** %8 to i8*
  %10 = bitcast i8* %9 to %class.TwoIntsClass**
  %11 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %6, align 8
  %12 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZSt7forwardIRKP12TwoIntsClassEOT_RNSt16remove_referenceIS4_E4typeE(%class.TwoIntsClass** nonnull align 8 dereferenceable(8) %11) #9
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %12, align 8
  store %class.TwoIntsClass* %13, %class.TwoIntsClass** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIP12TwoIntsClassEEEPT_RS5_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret %"class.std::allocator"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE8allocateERS4_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, i64 %1) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.std::allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call %"struct.std::_List_node"* @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE8allocateEmPKv(%"class.std::allocator"* %6, i64 %7, i8* null)
  ret %"struct.std::_List_node"* %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE8allocateEmPKv(%"class.std::allocator"* %0, i64 %1, i8* %2) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNKSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE11_M_max_sizeEv(%"class.std::allocator"* %7) #9
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 768614336404564650
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 24
  %19 = call noalias nonnull i8* @_Znwm(i64 %18) #10
  %20 = bitcast i8* %19 to %"struct.std::_List_node"*
  ret %"struct.std::_List_node"* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEE11_M_max_sizeEv(%"class.std::allocator"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret i64 384307168202282325
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #5

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #5

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIP12TwoIntsClassEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %0, %"struct.std::__detail::_List_node_base"* %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_List_const_iterator"*, align 8
  %4 = alloca %"struct.std::__detail::_List_node_base"*, align 8
  store %"struct.std::_List_const_iterator"* %0, %"struct.std::_List_const_iterator"** %3, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %4, align 8
  %5 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.TwoIntsClass** @_ZNKSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(%"struct.std::_List_node"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %0, %"struct.std::_List_node"** %2, align 8
  %3 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %3, i32 0, i32 1
  %5 = call %class.TwoIntsClass** @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %4) #9
  ret %class.TwoIntsClass** %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %class.TwoIntsClass** @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #9
  %5 = bitcast i8* %4 to %class.TwoIntsClass**
  ret %class.TwoIntsClass** %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK9__gnu_cxx16__aligned_membufIP12TwoIntsClassE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [8 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt20_List_const_iteratorIP12TwoIntsClassEC2EPKNSt8__detail15_List_node_baseE(%"struct.std::_List_const_iterator"* %0, %"struct.std::__detail::_List_node_base"* %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_List_const_iterator"*, align 8
  %4 = alloca %"struct.std::__detail::_List_node_base"*, align 8
  store %"struct.std::_List_const_iterator"* %0, %"struct.std::_List_const_iterator"** %3, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %4, align 8
  %5 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret %"class.std::allocator"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2EOSaISt10_List_nodeIS2_EE(%"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"*, %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"** %3, align 8
  %6 = bitcast %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %5 to %"class.std::allocator"*
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZSt4moveIRSaISt10_List_nodeIP12TwoIntsClassEEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %7) #9
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(%"class.std::allocator"* %6, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %8) #9
  %9 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %5, i32 0, i32 0
  call void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* %9) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(%"class.std::allocator"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.std::allocator"*
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::allocator"*
  call void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2ERKS4_(%"class.std::allocator"* %6, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %8) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::__detail::_List_node_header"*, align 8
  store %"struct.std::__detail::_List_node_header"* %0, %"struct.std::__detail::_List_node_header"** %2, align 8
  %3 = load %"struct.std::__detail::_List_node_header"*, %"struct.std::__detail::_List_node_header"** %2, align 8
  %4 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt8__detail17_List_node_header7_M_initEv(%"struct.std::__detail::_List_node_header"* %3) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_header7_M_initEv(%"struct.std::__detail::_List_node_header"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::__detail::_List_node_header"*, align 8
  store %"struct.std::__detail::_List_node_header"* %0, %"struct.std::__detail::_List_node_header"** %2, align 8
  %3 = load %"struct.std::__detail::_List_node_header"*, %"struct.std::__detail::_List_node_header"** %2, align 8
  %4 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  %5 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %5, i32 0, i32 1
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %6, align 8
  %7 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  %8 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %7, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_header", %"struct.std::__detail::_List_node_header"* %3, i32 0, i32 1
  store i64 0, i64* %9, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2ERKS4_(%"class.std::allocator"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIP12TwoIntsClassEEE37select_on_container_copy_constructionERKS4_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2ERKS3_(%"class.std::allocator"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %6) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EEC2Ev(%"class.std::__cxx11::_List_base"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %4) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIP12TwoIntsClassSaIS2_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"** %2, align 8
  %3 = load %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"*, %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2Ev(%"class.std::allocator"* %4) #9
  %5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl", %"struct.std::__cxx11::_List_base<TwoIntsClass *, std::allocator<TwoIntsClass *>>::_List_impl"* %3, i32 0, i32 0
  call void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* %5) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeIP12TwoIntsClassEEC2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.std::allocator"*
  call void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2Ev(%"class.std::allocator"* %4) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt10_List_nodeIP12TwoIntsClassEEC2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #9
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #9
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_734goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

declare dso_local void @printLine(i8*) #8

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_7311goodG2BSinkENSt7__cxx114listIP12TwoIntsClassSaIS3_EEE(%"class.std::__cxx11::list"* %0) #0 {
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(%"class.std::__cxx11::list"* %0) #9
  %4 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  store %class.TwoIntsClass* %4, %class.TwoIntsClass** %2, align 8
  %5 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %6 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %9 = icmp eq %class.TwoIntsClass* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = bitcast %class.TwoIntsClass* %8 to i8*
  call void @_ZdlPv(i8* %11) #12
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(%"class.std::__cxx11::list"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  %3 = alloca %"struct.std::_List_const_iterator", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %5 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE3endEv(%"class.std::__cxx11::list"* %4) #9
  %6 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %6, align 8
  %7 = call nonnull align 8 dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt14_List_iteratorIP12TwoIntsClassEmmEv(%"struct.std::_List_const_iterator"* %3) #9
  %8 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZNKSt14_List_iteratorIP12TwoIntsClassEdeEv(%"struct.std::_List_const_iterator"* %3) #9
  ret %class.TwoIntsClass** %8
}

declare dso_local void @printIntLine(i32) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_List_const_iterator"* @_ZNSt14_List_iteratorIP12TwoIntsClassEmmEv(%"struct.std::_List_const_iterator"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %0, %"struct.std::_List_const_iterator"** %2, align 8
  %3 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %5, i32 0, i32 1
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  ret %"struct.std::_List_const_iterator"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZNKSt14_List_iteratorIP12TwoIntsClassEdeEv(%"struct.std::_List_const_iterator"* %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_List_const_iterator"*, align 8
  store %"struct.std::_List_const_iterator"* %0, %"struct.std::_List_const_iterator"** %2, align 8
  %3 = load %"struct.std::_List_const_iterator"*, %"struct.std::_List_const_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_const_iterator", %"struct.std::_List_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %7 = invoke %class.TwoIntsClass** @_ZNSt10_List_nodeIP12TwoIntsClassE9_M_valptrEv(%"struct.std::_List_node"* %6)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret %class.TwoIntsClass** %7

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #11
  unreachable
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_7311goodB2GSinkENSt7__cxx114listIP12TwoIntsClassSaIS3_EEE(%"class.std::__cxx11::list"* %0) #0 {
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = call nonnull align 8 dereferenceable(8) %class.TwoIntsClass** @_ZNSt7__cxx114listIP12TwoIntsClassSaIS2_EE4backEv(%"class.std::__cxx11::list"* %0) #9
  %4 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  store %class.TwoIntsClass* %4, %class.TwoIntsClass** %2, align 8
  %5 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %6 = icmp ne %class.TwoIntsClass* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %9 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  call void @printIntLine(i32 %10)
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %12 = icmp eq %class.TwoIntsClass* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = bitcast %class.TwoIntsClass* %11 to i8*
  call void @_ZdlPv(i8* %14) #12
  br label %15

15:                                               ; preds = %13, %7
  br label %17

16:                                               ; preds = %1
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
