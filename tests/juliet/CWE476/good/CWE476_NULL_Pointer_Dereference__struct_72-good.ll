; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl" }
%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl" = type { %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data" = type { %struct._twoIntsStruct**, %struct._twoIntsStruct**, %struct._twoIntsStruct** }
%"class.__gnu_cxx::__normal_iterator.0" = type { %struct._twoIntsStruct** }
%"class.std::allocator" = type { i8 }
%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value" = type { %"class.std::vector"*, %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage" }
%"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage" = type { %struct._twoIntsStruct* }

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev = comdat any

$_ZNSaIP14_twoIntsStructED2Ev = comdat any

$_ZNSt15__new_allocatorIP14_twoIntsStructED2Ev = comdat any

$_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIP14_twoIntsStructE10deallocateEPS1_m = comdat any

$_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_ = comdat any

$_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv = comdat any

$_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_ = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_ = comdat any

$_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv = comdat any

$_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_ = comdat any

$_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE = comdat any

$_ZSt12__niter_baseIPP14_twoIntsStructET_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIP14_twoIntsStructE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIP14_twoIntsStructE11_M_max_sizeEv = comdat any

$_ZNSaIP14_twoIntsStructEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIP14_twoIntsStructEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_ = comdat any

$_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv = comdat any

$_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv = comdat any

$_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_ = comdat any

$_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev = comdat any

$_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E = comdat any

$_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_ = comdat any

$_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_ = comdat any

$_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_ = comdat any

$_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_ = comdat any

$_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv = comdat any

$_ZSt12__miter_baseIPP14_twoIntsStructET_S3_ = comdat any

$_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_ = comdat any

$_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIP14_twoIntsStructE8max_sizeEv = comdat any

$_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_ = comdat any

$_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_ = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_ = comdat any

$_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_ = comdat any

$_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv = comdat any

$_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value8_StorageD2Ev = comdat any

$_ZNSt15__new_allocatorIP14_twoIntsStructE7destroyIS1_EEvPT_ = comdat any

$_ZSt11__addressofIP14_twoIntsStructEPT_RS2_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_ = comdat any

$_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_ = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value8_StorageC2Ev = comdat any

$_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE = comdat any

$_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorIP14_twoIntsStructE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP14_twoIntsStructEC2Ev = comdat any

$_ZNSt15__new_allocatorIP14_twoIntsStructEC2Ev = comdat any

$_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN42CWE476_NULL_Pointer_Dereference__struct_724goodEv() #0 {
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_72L7goodG2BEv()
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_72L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN42CWE476_NULL_Pointer_Dereference__struct_72L7goodG2BEv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct, align 4
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %15 = alloca %"class.std::vector", align 8
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(%"class.std::vector"* %3) #10
  %16 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1
  store i32 0, i32* %17, align 4
  store %struct._twoIntsStruct* %2, %struct._twoIntsStruct** %1, align 8
  %18 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %3) #10
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %18, %struct._twoIntsStruct*** %19, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(%"class.__gnu_cxx::__normal_iterator.0"* %4, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %5) #10
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %22 = invoke %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(%"class.std::vector"* %3, %struct._twoIntsStruct** %21, i64 1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %1)
          to label %23 unwind label %41

23:                                               ; preds = %0
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  store %struct._twoIntsStruct** %22, %struct._twoIntsStruct*** %24, align 8
  %25 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %3) #10
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  store %struct._twoIntsStruct** %25, %struct._twoIntsStruct*** %26, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(%"class.__gnu_cxx::__normal_iterator.0"* %9, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %10) #10
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %28 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %27, align 8
  %29 = invoke %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(%"class.std::vector"* %3, %struct._twoIntsStruct** %28, i64 1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %1)
          to label %30 unwind label %41

30:                                               ; preds = %23
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %11, i32 0, i32 0
  store %struct._twoIntsStruct** %29, %struct._twoIntsStruct*** %31, align 8
  %32 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %3) #10
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %13, i32 0, i32 0
  store %struct._twoIntsStruct** %32, %struct._twoIntsStruct*** %33, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(%"class.__gnu_cxx::__normal_iterator.0"* %12, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %13) #10
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %12, i32 0, i32 0
  %35 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %34, align 8
  %36 = invoke %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(%"class.std::vector"* %3, %struct._twoIntsStruct** %35, i64 1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %1)
          to label %37 unwind label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %14, i32 0, i32 0
  store %struct._twoIntsStruct** %36, %struct._twoIntsStruct*** %38, align 8
  invoke void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(%"class.std::vector"* %15, %"class.std::vector"* nonnull align 8 dereferenceable(24) %3)
          to label %39 unwind label %41

39:                                               ; preds = %37
  invoke void @_ZN42CWE476_NULL_Pointer_Dereference__struct_7211goodG2BSinkESt6vectorIP14_twoIntsStructSaIS2_EE(%"class.std::vector"* %15)
          to label %40 unwind label %45

40:                                               ; preds = %39
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %15) #10
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %3) #10
  ret void

41:                                               ; preds = %37, %30, %23, %0
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %6, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %7, align 4
  br label %49

45:                                               ; preds = %39
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %6, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %7, align 4
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %15) #10
  br label %49

49:                                               ; preds = %45, %41
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %3) #10
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = insertvalue { i8*, i32 } undef, i8* %51, 0
  %54 = insertvalue { i8*, i32 } %53, i32 %52, 1
  resume { i8*, i32 } %54
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN42CWE476_NULL_Pointer_Dereference__struct_72L7goodB2GEv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %"class.std::vector", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %14 = alloca %"class.std::vector", align 8
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(%"class.std::vector"* %2) #10
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %1, align 8
  %15 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %2) #10
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %15, %struct._twoIntsStruct*** %16, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(%"class.__gnu_cxx::__normal_iterator.0"* %3, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %4) #10
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  %18 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %17, align 8
  %19 = invoke %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(%"class.std::vector"* %2, %struct._twoIntsStruct** %18, i64 1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %1)
          to label %20 unwind label %38

20:                                               ; preds = %0
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  store %struct._twoIntsStruct** %19, %struct._twoIntsStruct*** %21, align 8
  %22 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %2) #10
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  store %struct._twoIntsStruct** %22, %struct._twoIntsStruct*** %23, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(%"class.__gnu_cxx::__normal_iterator.0"* %8, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %9) #10
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  %25 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %24, align 8
  %26 = invoke %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(%"class.std::vector"* %2, %struct._twoIntsStruct** %25, i64 1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %1)
          to label %27 unwind label %38

27:                                               ; preds = %20
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  store %struct._twoIntsStruct** %26, %struct._twoIntsStruct*** %28, align 8
  %29 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %2) #10
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %12, i32 0, i32 0
  store %struct._twoIntsStruct** %29, %struct._twoIntsStruct*** %30, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(%"class.__gnu_cxx::__normal_iterator.0"* %11, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %12) #10
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %11, i32 0, i32 0
  %32 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %31, align 8
  %33 = invoke %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(%"class.std::vector"* %2, %struct._twoIntsStruct** %32, i64 1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %1)
          to label %34 unwind label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %13, i32 0, i32 0
  store %struct._twoIntsStruct** %33, %struct._twoIntsStruct*** %35, align 8
  invoke void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(%"class.std::vector"* %14, %"class.std::vector"* nonnull align 8 dereferenceable(24) %2)
          to label %36 unwind label %38

36:                                               ; preds = %34
  invoke void @_ZN42CWE476_NULL_Pointer_Dereference__struct_7211goodB2GSinkESt6vectorIP14_twoIntsStructSaIS2_EE(%"class.std::vector"* %14)
          to label %37 unwind label %42

37:                                               ; preds = %36
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %14) #10
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %2) #10
  ret void

38:                                               ; preds = %34, %27, %20, %0
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %5, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %6, align 4
  br label %46

42:                                               ; preds = %36
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %5, align 8
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %6, align 4
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %14) #10
  br label %46

46:                                               ; preds = %42, %38
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %2) #10
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = insertvalue { i8*, i32 } undef, i8* %48, 0
  %51 = insertvalue { i8*, i32 } %50, i32 %49, 1
  resume { i8*, i32 } %51
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(%"class.std::vector"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(%"struct.std::_Vector_base"* %4) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %8) #10
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(%"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %1, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  %7 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  %8 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %7) #10
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %8, align 8
  store %struct._twoIntsStruct** %9, %struct._twoIntsStruct*** %6, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(%"class.std::vector"* %0, %struct._twoIntsStruct** %1, i64 %2, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %7 = alloca %"class.std::vector"*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._twoIntsStruct**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %6, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %15, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct._twoIntsStruct** %3, %struct._twoIntsStruct*** %9, align 8
  %16 = load %"class.std::vector"*, %"class.std::vector"** %7, align 8
  %17 = call %struct._twoIntsStruct** @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv(%"class.std::vector"* %16) #10
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %11, i32 0, i32 0
  store %struct._twoIntsStruct** %17, %struct._twoIntsStruct*** %18, align 8
  %19 = call i64 @_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %6, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %11) #10
  store i64 %19, i64* %10, align 8
  %20 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(%"class.std::vector"* %16) #10
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %13, i32 0, i32 0
  store %struct._twoIntsStruct** %20, %struct._twoIntsStruct*** %21, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call %struct._twoIntsStruct** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(%"class.__gnu_cxx::__normal_iterator.0"* %13, i64 %22) #10
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %12, i32 0, i32 0
  store %struct._twoIntsStruct** %23, %struct._twoIntsStruct*** %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %12, i32 0, i32 0
  %28 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %27, align 8
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(%"class.std::vector"* %16, %struct._twoIntsStruct** %28, i64 %25, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %26)
  %29 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(%"class.std::vector"* %16) #10
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %14, i32 0, i32 0
  store %struct._twoIntsStruct** %29, %struct._twoIntsStruct*** %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call %struct._twoIntsStruct** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(%"class.__gnu_cxx::__normal_iterator.0"* %14, i64 %31) #10
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %32, %struct._twoIntsStruct*** %33, align 8
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  %35 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %34, align 8
  ret %struct._twoIntsStruct** %35
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(%"class.std::vector"* %0, %"class.std::vector"* nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %4, align 8
  %10 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %11 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %12 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %13 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(%"class.std::vector"* %12) #10
  %14 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %15 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %16 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %15) #10
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %5, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base"* %11, i64 %13, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %5)
          to label %17 unwind label %41

17:                                               ; preds = %2
  call void @_ZNSaIP14_twoIntsStructED2Ev(%"class.std::allocator"* %5) #10
  %18 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %19 = call %struct._twoIntsStruct** @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(%"class.std::vector"* %18) #10
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  store %struct._twoIntsStruct** %19, %struct._twoIntsStruct*** %20, align 8
  %21 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %22 = call %struct._twoIntsStruct** @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %21) #10
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  store %struct._twoIntsStruct** %22, %struct._twoIntsStruct*** %23, align 8
  %24 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %25 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %26, i32 0, i32 0
  %28 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %27, align 8
  %29 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %30 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %29) #10
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  %32 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %31, align 8
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %34 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %33, align 8
  %35 = invoke %struct._twoIntsStruct** @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(%struct._twoIntsStruct** %32, %struct._twoIntsStruct** %34, %struct._twoIntsStruct** %28, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %30)
          to label %36 unwind label %45

36:                                               ; preds = %17
  %37 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  %38 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %39 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %38 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %39, i32 0, i32 1
  store %struct._twoIntsStruct** %35, %struct._twoIntsStruct*** %40, align 8
  ret void

41:                                               ; preds = %2
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %6, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %7, align 4
  call void @_ZNSaIP14_twoIntsStructED2Ev(%"class.std::allocator"* %5) #10
  br label %50

45:                                               ; preds = %17
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %6, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %7, align 4
  %49 = bitcast %"class.std::vector"* %10 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(%"struct.std::_Vector_base"* %49) #10
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = insertvalue { i8*, i32 } undef, i8* %51, 0
  %54 = insertvalue { i8*, i32 } %53, i32 %52, 1
  resume { i8*, i32 } %54
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(%"class.std::vector"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %7 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  %11 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %12 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %14, align 8
  %16 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %17 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %16) #10
  invoke void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(%struct._twoIntsStruct** %10, %struct._twoIntsStruct** %15, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %17)
          to label %18 unwind label %20

18:                                               ; preds = %1
  %19 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(%"struct.std::_Vector_base"* %19) #10
  ret void

20:                                               ; preds = %1
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %3, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %4, align 4
  %24 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(%"struct.std::_Vector_base"* %24) #10
  br label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %26) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  call void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(%"struct.std::_Vector_base"* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %14 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %16, align 8
  %18 = ptrtoint %struct._twoIntsStruct** %13 to i64
  %19 = ptrtoint %struct._twoIntsStruct** %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  invoke void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %5, %struct._twoIntsStruct** %9, i64 %21)
          to label %22 unwind label %24

22:                                               ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %23) #10
  ret void

24:                                               ; preds = %1
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %28) #10
  br label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %30) #11
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #2 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #10
  call void @_ZSt9terminatev() #11
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %0, %struct._twoIntsStruct** %1, i64 %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = icmp ne %struct._twoIntsStruct** %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %11 to %"class.std::allocator"*
  %13 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %12, %struct._twoIntsStruct** %13, i64 %14)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %0, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"*, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaIP14_twoIntsStructED2Ev(%"class.std::allocator"* %4) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIP14_twoIntsStructED2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.std::allocator"*
  call void @_ZNSt15__new_allocatorIP14_twoIntsStructED2Ev(%"class.std::allocator"* %4) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP14_twoIntsStructED2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %struct._twoIntsStruct** %1, i64 %2) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::allocator"*
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZNSt15__new_allocatorIP14_twoIntsStructE10deallocateEPS1_m(%"class.std::allocator"* %8, %struct._twoIntsStruct** %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP14_twoIntsStructE10deallocateEPS1_m(%"class.std::allocator"* %0, %struct._twoIntsStruct** %1, i64 %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = bitcast %struct._twoIntsStruct** %8 to i8*
  call void @_ZdlPv(i8* %9) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1) #0 comdat {
  %3 = alloca %struct._twoIntsStruct**, align 8
  %4 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %3, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %4, align 8
  %5 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %3, align 8
  %6 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(%struct._twoIntsStruct** %5, %struct._twoIntsStruct** %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1) #1 comdat align 2 {
  %3 = alloca %struct._twoIntsStruct**, align 8
  %4 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %3, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(%"class.std::vector"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %12, align 8
  %14 = ptrtoint %struct._twoIntsStruct** %8 to i64
  %15 = ptrtoint %struct._twoIntsStruct** %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %6)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_(%"struct.std::_Vector_base"* %0, i64 %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %9 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %10, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %11) #10
  %12 = load i64, i64* %5, align 8
  invoke void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base"* %9, i64 %12)
          to label %13 unwind label %14

13:                                               ; preds = %3
  ret void

14:                                               ; preds = %3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %10) #10
  br label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(%"class.std::vector"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %8) #10
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %8) #10
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %7 = alloca %struct._twoIntsStruct**, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %6, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %12, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %9 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %10 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %22 = call %struct._twoIntsStruct** @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%struct._twoIntsStruct** %19, %struct._twoIntsStruct** %21, %struct._twoIntsStruct** %17)
  ret %struct._twoIntsStruct** %22
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %12, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  store i8 1, i8* %7, align 1
  store i8 1, i8* %8, align 1
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %9 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %10 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %22 = call %struct._twoIntsStruct** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(%struct._twoIntsStruct** %19, %struct._twoIntsStruct** %21, %struct._twoIntsStruct** %17)
  ret %struct._twoIntsStruct** %22
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %9, align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %10, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %7 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %8 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %16, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = call %struct._twoIntsStruct** @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%struct._twoIntsStruct** %17, %struct._twoIntsStruct** %19, %struct._twoIntsStruct** %15)
  ret %struct._twoIntsStruct** %20
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %12, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %8 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  %16 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %15, align 8
  %17 = call %struct._twoIntsStruct** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(%struct._twoIntsStruct** %16)
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  store %struct._twoIntsStruct** %17, %struct._twoIntsStruct*** %18, align 8
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %10 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  %22 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %21, align 8
  %23 = call %struct._twoIntsStruct** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(%struct._twoIntsStruct** %22)
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  store %struct._twoIntsStruct** %23, %struct._twoIntsStruct*** %24, align 8
  %25 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  %27 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %26, align 8
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %29 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %28, align 8
  %30 = call %struct._twoIntsStruct** @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(%struct._twoIntsStruct** %27, %struct._twoIntsStruct** %29, %struct._twoIntsStruct** %25)
  ret %struct._twoIntsStruct** %30
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(%struct._twoIntsStruct** %0) #1 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %2 to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  ret %struct._twoIntsStruct** %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %9, align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %10, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %7 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  %14 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %13, align 8
  %15 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(%struct._twoIntsStruct** %14) #10
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %8 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(%struct._twoIntsStruct** %19) #10
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %22 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %21) #10
  %23 = call %struct._twoIntsStruct** @_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(%struct._twoIntsStruct** %15, %struct._twoIntsStruct** %20, %struct._twoIntsStruct** %22)
  %24 = call %struct._twoIntsStruct** @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %6, %struct._twoIntsStruct** %23)
  ret %struct._twoIntsStruct** %24
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(%struct._twoIntsStruct** %0) #1 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %3, align 8
  %4 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %2) #10
  %5 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  ret %struct._twoIntsStruct** %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %0) #1 comdat {
  %2 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %2, align 8
  %3 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  ret %struct._twoIntsStruct** %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %10 = call %struct._twoIntsStruct** @_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** %9)
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %0, %struct._twoIntsStruct** %1) #1 comdat {
  %3 = alloca %struct._twoIntsStruct***, align 8
  %4 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct*** %0, %struct._twoIntsStruct**** %3, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %4, align 8
  %5 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  ret %struct._twoIntsStruct** %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %10 = call %struct._twoIntsStruct** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** %9)
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #1 comdat align 2 {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca i64, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %10 = ptrtoint %struct._twoIntsStruct** %8 to i64
  %11 = ptrtoint %struct._twoIntsStruct** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %18 = bitcast %struct._twoIntsStruct** %17 to i8*
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %20 = bitcast %struct._twoIntsStruct** %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 8, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %24, i64 %25
  ret %struct._twoIntsStruct** %26
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  ret %struct._twoIntsStruct*** %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.0"* %0, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %4 = alloca %struct._twoIntsStruct***, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  store %struct._twoIntsStruct*** %1, %struct._twoIntsStruct**** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  %7 = load %struct._twoIntsStruct***, %struct._twoIntsStruct**** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  store %struct._twoIntsStruct** %8, %struct._twoIntsStruct*** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %0, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"*, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"** %3, align 8
  %6 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %5 to %"class.std::allocator"*
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(%"class.std::allocator"* %6, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %7) #10
  %8 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %8) #10
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(%"struct.std::_Vector_base"* %0, i64 %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call %struct._twoIntsStruct** @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %5, i64 %6)
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %9, i32 0, i32 0
  store %struct._twoIntsStruct** %7, %struct._twoIntsStruct*** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %11 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %12, i32 0, i32 0
  %14 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %15 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %16, i32 0, i32 1
  store %struct._twoIntsStruct** %14, %struct._twoIntsStruct*** %17, align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %18 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %19, i32 0, i32 0
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %21, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %24 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %25, i32 0, i32 2
  store %struct._twoIntsStruct** %23, %struct._twoIntsStruct*** %26, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %9 to %"class.std::allocator"*
  %11 = load i64, i64* %4, align 8
  %12 = call %struct._twoIntsStruct** @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %10, i64 %11)
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi %struct._twoIntsStruct** [ %12, %8 ], [ null, %13 ]
  ret %struct._twoIntsStruct** %15
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, i64 %1) #0 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.std::allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call %struct._twoIntsStruct** @_ZNSt15__new_allocatorIP14_twoIntsStructE8allocateEmPKv(%"class.std::allocator"* %6, i64 %7, i8* null)
  ret %struct._twoIntsStruct** %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt15__new_allocatorIP14_twoIntsStructE8allocateEmPKv(%"class.std::allocator"* %0, i64 %1, i8* %2) #0 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNKSt15__new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(%"class.std::allocator"* %7) #10
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 2305843009213693951
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias nonnull i8* @_Znwm(i64 %18) #14
  %20 = bitcast i8* %19 to %struct._twoIntsStruct**
  ret %struct._twoIntsStruct** %20
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt15__new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(%"class.std::allocator"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #5

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #5

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIP14_twoIntsStructEC2ERKS1_(%"class.std::allocator"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.std::allocator"*
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::allocator"*
  call void @_ZNSt15__new_allocatorIP14_twoIntsStructEC2ERKS2_(%"class.std::allocator"* %6, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %8) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %0, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %3, i32 0, i32 0
  store %struct._twoIntsStruct** null, %struct._twoIntsStruct*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %3, i32 0, i32 1
  store %struct._twoIntsStruct** null, %struct._twoIntsStruct*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %3, i32 0, i32 2
  store %struct._twoIntsStruct** null, %struct._twoIntsStruct*** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP14_twoIntsStructEC2ERKS2_(%"class.std::allocator"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(%"class.std::allocator"* %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %6) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv(%"class.std::vector"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %8) #10
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %1, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  %6 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  %9 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %8) #10
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  %11 = ptrtoint %struct._twoIntsStruct** %7 to i64
  %12 = ptrtoint %struct._twoIntsStruct** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(%"class.std::vector"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %8) #10
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(%"class.__gnu_cxx::__normal_iterator.0"* %0, i64 %1) #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %9, i64 %10
  store %struct._twoIntsStruct** %11, %struct._twoIntsStruct*** %6, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.0"* %3, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %6) #10
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  %13 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %12, align 8
  ret %struct._twoIntsStruct** %13
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(%"class.std::vector"* %0, %struct._twoIntsStruct** %1, i64 %2, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %"class.std::vector"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._twoIntsStruct**, align 8
  %9 = alloca %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", align 8
  %10 = alloca %struct._twoIntsStruct**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %13 = alloca %struct._twoIntsStruct**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %19 = alloca %struct._twoIntsStruct**, align 8
  %20 = alloca %struct._twoIntsStruct**, align 8
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %21, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct._twoIntsStruct** %3, %struct._twoIntsStruct*** %8, align 8
  %22 = load %"class.std::vector"*, %"class.std::vector"** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %284

25:                                               ; preds = %4
  %26 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %27 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %26, i32 0, i32 0
  %28 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %27 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %28, i32 0, i32 2
  %30 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %29, align 8
  %31 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %31, i32 0, i32 0
  %33 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %32 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %33, i32 0, i32 1
  %35 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %34, align 8
  %36 = ptrtoint %struct._twoIntsStruct** %30 to i64
  %37 = ptrtoint %struct._twoIntsStruct** %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %150

42:                                               ; preds = %25
  %43 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %8, align 8
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %9, %"class.std::vector"* %22, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %43)
  %44 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %9) #10
  store %struct._twoIntsStruct** %44, %struct._twoIntsStruct*** %10, align 8
  %45 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(%"class.std::vector"* %22) #10
  %46 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %12, i32 0, i32 0
  store %struct._twoIntsStruct** %45, %struct._twoIntsStruct*** %46, align 8
  %47 = call i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %12, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %5) #10
  store i64 %47, i64* %11, align 8
  %48 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %49 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %48, i32 0, i32 0
  %50 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %49 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %51 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %50, i32 0, i32 1
  %52 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %51, align 8
  store %struct._twoIntsStruct** %52, %struct._twoIntsStruct*** %13, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %107

56:                                               ; preds = %42
  %57 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %58 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %57, i32 0, i32 0
  %59 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %58 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %60 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %59, i32 0, i32 1
  %61 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %61, i64 %63
  %65 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %66 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %65, i32 0, i32 0
  %67 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %66 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %68 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %67, i32 0, i32 1
  %69 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %68, align 8
  %70 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %71 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %70, i32 0, i32 0
  %72 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %71 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %73 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %72, i32 0, i32 1
  %74 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %73, align 8
  %75 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %76 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %75) #10
  %77 = invoke %struct._twoIntsStruct** @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(%struct._twoIntsStruct** %64, %struct._twoIntsStruct** %69, %struct._twoIntsStruct** %74, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %76)
          to label %78 unwind label %103

78:                                               ; preds = %56
  %79 = load i64, i64* %7, align 8
  %80 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %81 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %80, i32 0, i32 0
  %82 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %81 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %83 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %82, i32 0, i32 1
  %84 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %83, align 8
  %85 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %84, i64 %79
  store %struct._twoIntsStruct** %85, %struct._twoIntsStruct*** %83, align 8
  %86 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %87 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %86, align 8
  %88 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %13, align 8
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %88, i64 %90
  %92 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %13, align 8
  %93 = invoke %struct._twoIntsStruct** @_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_(%struct._twoIntsStruct** %87, %struct._twoIntsStruct** %91, %struct._twoIntsStruct** %92)
          to label %94 unwind label %103

94:                                               ; preds = %78
  %95 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %96 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %95, align 8
  %97 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %98 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %98, i64 %99
  %101 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %10, align 8
  invoke void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(%struct._twoIntsStruct** %96, %struct._twoIntsStruct** %100, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %101)
          to label %102 unwind label %103

102:                                              ; preds = %94
  br label %149

103:                                              ; preds = %136, %120, %107, %94, %78, %56
  %104 = landingpad { i8*, i32 }
          cleanup
  %105 = extractvalue { i8*, i32 } %104, 0
  store i8* %105, i8** %14, align 8
  %106 = extractvalue { i8*, i32 } %104, 1
  store i32 %106, i32* %15, align 4
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %9) #10
  br label %285

107:                                              ; preds = %42
  %108 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %109 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %108, i32 0, i32 0
  %110 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %109 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %111 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %110, i32 0, i32 1
  %112 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %11, align 8
  %115 = sub i64 %113, %114
  %116 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %10, align 8
  %117 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %118 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %117) #10
  %119 = invoke %struct._twoIntsStruct** @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%struct._twoIntsStruct** %112, i64 %115, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %116, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %118)
          to label %120 unwind label %103

120:                                              ; preds = %107
  %121 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %122 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %121, i32 0, i32 0
  %123 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %122 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %124 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %123, i32 0, i32 1
  store %struct._twoIntsStruct** %119, %struct._twoIntsStruct*** %124, align 8
  %125 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %126 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %125, align 8
  %127 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %13, align 8
  %128 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %129 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %128, i32 0, i32 0
  %130 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %129 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %131 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %130, i32 0, i32 1
  %132 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %131, align 8
  %133 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %134 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %133) #10
  %135 = invoke %struct._twoIntsStruct** @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(%struct._twoIntsStruct** %126, %struct._twoIntsStruct** %127, %struct._twoIntsStruct** %132, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %134)
          to label %136 unwind label %103

136:                                              ; preds = %120
  %137 = load i64, i64* %11, align 8
  %138 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %139 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %138, i32 0, i32 0
  %140 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %139 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %141 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %140, i32 0, i32 1
  %142 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %141, align 8
  %143 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %142, i64 %137
  store %struct._twoIntsStruct** %143, %struct._twoIntsStruct*** %141, align 8
  %144 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %145 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %144, align 8
  %146 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %13, align 8
  %147 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %10, align 8
  invoke void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(%struct._twoIntsStruct** %145, %struct._twoIntsStruct** %146, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %147)
          to label %148 unwind label %103

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148, %102
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %9) #10
  br label %283

150:                                              ; preds = %25
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %22, i64 %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i64 %152, i64* %16, align 8
  %153 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(%"class.std::vector"* %22) #10
  %154 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %18, i32 0, i32 0
  store %struct._twoIntsStruct** %153, %struct._twoIntsStruct*** %154, align 8
  %155 = call i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %18) #10
  store i64 %155, i64* %17, align 8
  %156 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %157 = load i64, i64* %16, align 8
  %158 = call %struct._twoIntsStruct** @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %156, i64 %157)
  store %struct._twoIntsStruct** %158, %struct._twoIntsStruct*** %19, align 8
  %159 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  store %struct._twoIntsStruct** %159, %struct._twoIntsStruct*** %20, align 8
  %160 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %161 = load i64, i64* %17, align 8
  %162 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %160, i64 %161
  %163 = load i64, i64* %7, align 8
  %164 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %8, align 8
  %165 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %166 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %165) #10
  %167 = invoke %struct._twoIntsStruct** @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%struct._twoIntsStruct** %162, i64 %163, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %164, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %166)
          to label %168 unwind label %196

168:                                              ; preds = %150
  store %struct._twoIntsStruct** null, %struct._twoIntsStruct*** %20, align 8
  %169 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %170 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %169, i32 0, i32 0
  %171 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %170 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %172 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %171, i32 0, i32 0
  %173 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %172, align 8
  %174 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %175 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %174, align 8
  %176 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %177 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %178 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %177) #10
  %179 = invoke %struct._twoIntsStruct** @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(%struct._twoIntsStruct** %173, %struct._twoIntsStruct** %175, %struct._twoIntsStruct** %176, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %178)
          to label %180 unwind label %196

180:                                              ; preds = %168
  store %struct._twoIntsStruct** %179, %struct._twoIntsStruct*** %20, align 8
  %181 = load i64, i64* %7, align 8
  %182 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %183 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %182, i64 %181
  store %struct._twoIntsStruct** %183, %struct._twoIntsStruct*** %20, align 8
  %184 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %185 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %184, align 8
  %186 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %187 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %186, i32 0, i32 0
  %188 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %187 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %189 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %188, i32 0, i32 1
  %190 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %189, align 8
  %191 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %192 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %193 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %192) #10
  %194 = invoke %struct._twoIntsStruct** @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(%struct._twoIntsStruct** %185, %struct._twoIntsStruct** %190, %struct._twoIntsStruct** %191, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %193)
          to label %195 unwind label %196

195:                                              ; preds = %180
  store %struct._twoIntsStruct** %194, %struct._twoIntsStruct*** %20, align 8
  br label %233

196:                                              ; preds = %180, %168, %150
  %197 = landingpad { i8*, i32 }
          catch i8* null
  %198 = extractvalue { i8*, i32 } %197, 0
  store i8* %198, i8** %14, align 8
  %199 = extractvalue { i8*, i32 } %197, 1
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %14, align 8
  %202 = call i8* @__cxa_begin_catch(i8* %201) #10
  %203 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %204 = icmp ne %struct._twoIntsStruct** %203, null
  br i1 %204, label %221, label %205

205:                                              ; preds = %200
  %206 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %207 = load i64, i64* %17, align 8
  %208 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %206, i64 %207
  %209 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %210 = load i64, i64* %17, align 8
  %211 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %209, i64 %210
  %212 = load i64, i64* %7, align 8
  %213 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %211, i64 %212
  %214 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %215 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %214) #10
  invoke void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(%struct._twoIntsStruct** %208, %struct._twoIntsStruct** %213, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %215)
          to label %216 unwind label %217

216:                                              ; preds = %205
  br label %227

217:                                              ; preds = %231, %227, %221, %205
  %218 = landingpad { i8*, i32 }
          cleanup
  %219 = extractvalue { i8*, i32 } %218, 0
  store i8* %219, i8** %14, align 8
  %220 = extractvalue { i8*, i32 } %218, 1
  store i32 %220, i32* %15, align 4
  invoke void @__cxa_end_catch()
          to label %232 unwind label %290

221:                                              ; preds = %200
  %222 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %223 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %224 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %225 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %224) #10
  invoke void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(%struct._twoIntsStruct** %222, %struct._twoIntsStruct** %223, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %225)
          to label %226 unwind label %217

226:                                              ; preds = %221
  br label %227

227:                                              ; preds = %226, %216
  %228 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %229 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %230 = load i64, i64* %16, align 8
  invoke void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %228, %struct._twoIntsStruct** %229, i64 %230)
          to label %231 unwind label %217

231:                                              ; preds = %227
  invoke void @__cxa_rethrow() #13
          to label %293 unwind label %217

232:                                              ; preds = %217
  br label %285

233:                                              ; preds = %195
  %234 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %235 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %234, i32 0, i32 0
  %236 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %235 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %237 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %236, i32 0, i32 0
  %238 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %237, align 8
  %239 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %240 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %239, i32 0, i32 0
  %241 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %240 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %242 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %241, i32 0, i32 1
  %243 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %242, align 8
  %244 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %245 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %244) #10
  call void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(%struct._twoIntsStruct** %238, %struct._twoIntsStruct** %243, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %245)
  %246 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %247 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %248 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %247, i32 0, i32 0
  %249 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %248 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %250 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %249, i32 0, i32 0
  %251 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %250, align 8
  %252 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %253 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %252, i32 0, i32 0
  %254 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %253 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %255 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %254, i32 0, i32 2
  %256 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %255, align 8
  %257 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %258 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %257, i32 0, i32 0
  %259 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %258 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %260 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %259, i32 0, i32 0
  %261 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %260, align 8
  %262 = ptrtoint %struct._twoIntsStruct** %256 to i64
  %263 = ptrtoint %struct._twoIntsStruct** %261 to i64
  %264 = sub i64 %262, %263
  %265 = sdiv exact i64 %264, 8
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %246, %struct._twoIntsStruct** %251, i64 %265)
  %266 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %267 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %268 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %267, i32 0, i32 0
  %269 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %268 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %270 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %269, i32 0, i32 0
  store %struct._twoIntsStruct** %266, %struct._twoIntsStruct*** %270, align 8
  %271 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %272 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %273 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %272, i32 0, i32 0
  %274 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %273 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %275 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %274, i32 0, i32 1
  store %struct._twoIntsStruct** %271, %struct._twoIntsStruct*** %275, align 8
  %276 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %277 = load i64, i64* %16, align 8
  %278 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %276, i64 %277
  %279 = bitcast %"class.std::vector"* %22 to %"struct.std::_Vector_base"*
  %280 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %279, i32 0, i32 0
  %281 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %280 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %282 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %281, i32 0, i32 2
  store %struct._twoIntsStruct** %278, %struct._twoIntsStruct*** %282, align 8
  br label %283

283:                                              ; preds = %233, %149
  br label %284

284:                                              ; preds = %283, %4
  ret void

285:                                              ; preds = %232, %103
  %286 = load i8*, i8** %14, align 8
  %287 = load i32, i32* %15, align 4
  %288 = insertvalue { i8*, i32 } undef, i8* %286, 0
  %289 = insertvalue { i8*, i32 } %288, i32 %287, 1
  resume { i8*, i32 } %289

290:                                              ; preds = %217
  %291 = landingpad { i8*, i32 }
          catch i8* null
  %292 = extractvalue { i8*, i32 } %291, 0
  call void @__clang_call_terminate(i8* %292) #11
  unreachable

293:                                              ; preds = %231
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0, %"class.std::vector"* %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, align 8
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %4, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %7, i32 0, i32 0
  %9 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  store %"class.std::vector"* %9, %"class.std::vector"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %7, i32 0, i32 1
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value8_StorageC2Ev(%"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %10)
  %11 = getelementptr inbounds %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %7, i32 0, i32 0
  %12 = load %"class.std::vector"*, %"class.std::vector"** %11, align 8
  %13 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %14 to %"class.std::allocator"*
  %16 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %7) #10
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %18 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(%struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %17) #10
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %15, %struct._twoIntsStruct** %16, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %18) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, align 8
  store %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %2, align 8
  %3 = load %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %3, i32 0, i32 1
  %5 = bitcast %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %4 to %struct._twoIntsStruct**
  ret %struct._twoIntsStruct** %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.0"* nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %1, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  %6 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %5) #10
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %4, align 8
  %9 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %8) #10
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  %11 = ptrtoint %struct._twoIntsStruct** %7 to i64
  %12 = ptrtoint %struct._twoIntsStruct** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %struct._twoIntsStruct**, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %6, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %12 = call %struct._twoIntsStruct** @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(%struct._twoIntsStruct** %11)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  store %struct._twoIntsStruct** %12, %struct._twoIntsStruct*** %13, align 8
  %14 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %15 = call %struct._twoIntsStruct** @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(%struct._twoIntsStruct** %14)
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  store %struct._twoIntsStruct** %15, %struct._twoIntsStruct*** %16, align 8
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %20 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  %22 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %21, align 8
  %23 = call %struct._twoIntsStruct** @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(%struct._twoIntsStruct** %20, %struct._twoIntsStruct** %22, %struct._twoIntsStruct** %17, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %18)
  ret %struct._twoIntsStruct** %23
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  ret %struct._twoIntsStruct*** %4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = call %struct._twoIntsStruct** @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %7)
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %10 = call %struct._twoIntsStruct** @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %9)
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %12 = call %struct._twoIntsStruct** @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %8, %struct._twoIntsStruct** %10, %struct._twoIntsStruct** %11)
  ret %struct._twoIntsStruct** %12
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, align 8
  store %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %2, align 8
  %3 = load %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %3, i32 0, i32 0
  %5 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %7 to %"class.std::allocator"*
  %9 = call %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %3) #10
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %8, %struct._twoIntsStruct** %9) #10
  %10 = getelementptr inbounds %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %3, i32 0, i32 1
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value8_StorageD2Ev(%"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %10) #10
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(%struct._twoIntsStruct** %0, i64 %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._twoIntsStruct**, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  %12 = call %struct._twoIntsStruct** @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(%struct._twoIntsStruct** %9, i64 %10, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %11)
  ret %struct._twoIntsStruct** %12
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %0, i64 %1, i8* %2) #0 comdat align 2 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(%"class.std::vector"* %9) #10
  %11 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(%"class.std::vector"* %9) #10
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %16) #13
  unreachable

17:                                               ; preds = %3
  %18 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(%"class.std::vector"* %9) #10
  %19 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(%"class.std::vector"* %9) #10
  store i64 %19, i64* %8, align 8
  %20 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %8, i64* nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(%"class.std::vector"* %9) #10
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(%"class.std::vector"* %9) #10
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(%"class.std::vector"* %9) #10
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %struct._twoIntsStruct**, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %6, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %12 = call %struct._twoIntsStruct** @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(%struct._twoIntsStruct** %11)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  store %struct._twoIntsStruct** %12, %struct._twoIntsStruct*** %13, align 8
  %14 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %15 = call %struct._twoIntsStruct** @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(%struct._twoIntsStruct** %14)
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  store %struct._twoIntsStruct** %15, %struct._twoIntsStruct*** %16, align 8
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %20 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %19, align 8
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  %22 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %21, align 8
  %23 = call %struct._twoIntsStruct** @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(%struct._twoIntsStruct** %20, %struct._twoIntsStruct** %22, %struct._twoIntsStruct** %17, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %18)
  ret %struct._twoIntsStruct** %23
}

declare dso_local void @__cxa_end_catch()

declare dso_local void @__cxa_rethrow()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(%struct._twoIntsStruct** %0) #0 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %3, align 8
  %4 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %3, align 8
  call void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %struct._twoIntsStruct** %4)
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %6 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  ret %struct._twoIntsStruct** %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %7 = alloca %struct._twoIntsStruct**, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %6, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %12, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %9 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %10 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %22 = call %struct._twoIntsStruct** @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(%struct._twoIntsStruct** %19, %struct._twoIntsStruct** %21, %struct._twoIntsStruct** %17)
  ret %struct._twoIntsStruct** %22
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %12, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  store i8 1, i8* %7, align 1
  store i8 1, i8* %8, align 1
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %9 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %10 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %9, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %10, i32 0, i32 0
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %20, align 8
  %22 = call %struct._twoIntsStruct** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(%struct._twoIntsStruct** %19, %struct._twoIntsStruct** %21, %struct._twoIntsStruct** %17)
  ret %struct._twoIntsStruct** %22
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %9, align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %10, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %7 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %8 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %16, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = call %struct._twoIntsStruct** @_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(%struct._twoIntsStruct** %17, %struct._twoIntsStruct** %19, %struct._twoIntsStruct** %15)
  ret %struct._twoIntsStruct** %20
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %4, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %9, align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %10, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %7 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %7, i32 0, i32 0
  %14 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %13, align 8
  %15 = call %struct._twoIntsStruct** @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct._twoIntsStruct** %14)
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %8 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator.0"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %8, i32 0, i32 0
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %18, align 8
  %20 = call %struct._twoIntsStruct** @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct._twoIntsStruct** %19)
  %21 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %22 = call %struct._twoIntsStruct** @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %15, %struct._twoIntsStruct** %20, %struct._twoIntsStruct** %21)
  ret %struct._twoIntsStruct** %22
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%struct._twoIntsStruct** %0) #0 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %3, align 8
  %4 = call %struct._twoIntsStruct** @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %2)
  %5 = call %struct._twoIntsStruct** @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %4)
  ret %struct._twoIntsStruct** %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %7) #10
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %10 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %9) #10
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %12 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %11) #10
  %13 = call %struct._twoIntsStruct** @_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %8, %struct._twoIntsStruct** %10, %struct._twoIntsStruct** %12)
  %14 = call %struct._twoIntsStruct** @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %6, %struct._twoIntsStruct** %13)
  ret %struct._twoIntsStruct** %14
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %10 = call %struct._twoIntsStruct** @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** %9)
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %10 = call %struct._twoIntsStruct** @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** %9)
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #1 comdat align 2 {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca i64, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %10 = ptrtoint %struct._twoIntsStruct** %8 to i64
  %11 = ptrtoint %struct._twoIntsStruct** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %18 = bitcast %struct._twoIntsStruct** %17 to i8*
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %20 = bitcast %struct._twoIntsStruct** %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 8, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %24, i64 %25
  ret %struct._twoIntsStruct** %26
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  %5 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  ret %struct._twoIntsStruct** %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %0) #1 comdat {
  %2 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %2, align 8
  %3 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  ret %struct._twoIntsStruct** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(%"class.__gnu_cxx::__normal_iterator.0"* %0, %struct._twoIntsStruct** %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %4 = alloca %struct._twoIntsStruct**, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  %7 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %4) #10
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  store %struct._twoIntsStruct** %8, %struct._twoIntsStruct*** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %struct._twoIntsStruct***, align 8
  store %struct._twoIntsStruct*** %0, %struct._twoIntsStruct**** %2, align 8
  %3 = load %struct._twoIntsStruct***, %struct._twoIntsStruct**** %2, align 8
  ret %struct._twoIntsStruct*** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(%"class.std::vector"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #10
  %6 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #10
  ret i64 %6
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  store i64 1152921504606846975, i64* %3, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %6 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5) #10
  store i64 %6, i64* %4, align 8
  %7 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %3, i64* nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %7, align 8
  ret i64 %9

10:                                               ; preds = %1
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.std::allocator"*
  %5 = call i64 @_ZNKSt15__new_allocatorIP14_twoIntsStructE8max_sizeEv(%"class.std::allocator"* %4) #10
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt15__new_allocatorIP14_twoIntsStructE8max_sizeEv(%"class.std::allocator"* %0) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = call i64 @_ZNKSt15__new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(%"class.std::allocator"* %3) #10
  ret i64 %4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(%struct._twoIntsStruct** %0, i64 %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca i8, align 1
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %11 = call %struct._twoIntsStruct** @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(%struct._twoIntsStruct** %8, i64 %9, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %10)
  ret %struct._twoIntsStruct** %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(%struct._twoIntsStruct** %0, i64 %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %10 = call %struct._twoIntsStruct** @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(%struct._twoIntsStruct** %7, i64 %8, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %9)
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(%struct._twoIntsStruct** %0, i64 %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::allocator", align 1
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @_ZSt17__size_to_integerm(i64 %10)
  %12 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  call void @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %4)
  %13 = call %struct._twoIntsStruct** @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(%struct._twoIntsStruct** %9, i64 %11, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %12)
  ret %struct._twoIntsStruct** %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZSt17__size_to_integerm(i64 %0) #1 comdat {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %struct._twoIntsStruct***, align 8
  store %struct._twoIntsStruct*** %0, %struct._twoIntsStruct**** %2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(%struct._twoIntsStruct** %0, i64 %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ule i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  store %struct._twoIntsStruct** %12, %struct._twoIntsStruct*** %4, align 8
  br label %22

13:                                               ; preds = %3
  %14 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %15 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %15, i64 %16
  %18 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %8, align 8
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(%struct._twoIntsStruct** %14, %struct._twoIntsStruct** %17, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %18)
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %19, i64 %20
  store %struct._twoIntsStruct** %21, %struct._twoIntsStruct*** %4, align 8
  br label %22

22:                                               ; preds = %13, %11
  %23 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  ret %struct._twoIntsStruct** %23
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  call void @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #1 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %9 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %8, align 8
  store %struct._twoIntsStruct* %9, %struct._twoIntsStruct** %7, align 8
  br label %10

10:                                               ; preds = %17, %3
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %12 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %13 = icmp ne %struct._twoIntsStruct** %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %7, align 8
  %16 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct* %15, %struct._twoIntsStruct** %16, align 8
  br label %17

17:                                               ; preds = %14
  %18 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %19 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %18, i32 1
  store %struct._twoIntsStruct** %19, %struct._twoIntsStruct*** %4, align 8
  br label %10

20:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(%"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, align 8
  store %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %0, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %2, align 8
  %3 = load %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"*, %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value", %"struct.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value"* %3, i32 0, i32 1
  %5 = bitcast %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %4 to %struct._twoIntsStruct**
  %6 = call %struct._twoIntsStruct** @_ZSt11__addressofIP14_twoIntsStructEPT_RS2_(%struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %5) #10
  ret %struct._twoIntsStruct** %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %struct._twoIntsStruct** %1) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %struct._twoIntsStruct**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.std::allocator"*
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  call void @_ZNSt15__new_allocatorIP14_twoIntsStructE7destroyIS1_EEvPT_(%"class.std::allocator"* %6, %struct._twoIntsStruct** %7) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value8_StorageD2Ev(%"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"*, align 8
  store %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %0, %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"** %2, align 8
  %3 = load %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"*, %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP14_twoIntsStructE7destroyIS1_EEvPT_(%"class.std::allocator"* %0, %struct._twoIntsStruct** %1) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %struct._twoIntsStruct**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt11__addressofIP14_twoIntsStructEPT_RS2_(%struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %2, align 8
  %3 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  ret %struct._twoIntsStruct** %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %7) #10
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %10 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %9) #10
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %12 = call %struct._twoIntsStruct** @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(%struct._twoIntsStruct** %11) #10
  %13 = call %struct._twoIntsStruct** @_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %8, %struct._twoIntsStruct** %10, %struct._twoIntsStruct** %12)
  %14 = call %struct._twoIntsStruct** @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %6, %struct._twoIntsStruct** %13)
  ret %struct._twoIntsStruct** %14
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %10 = call %struct._twoIntsStruct** @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** %9)
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #0 comdat {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %10 = call %struct._twoIntsStruct** @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(%struct._twoIntsStruct** %7, %struct._twoIntsStruct** %8, %struct._twoIntsStruct** %9)
  ret %struct._twoIntsStruct** %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(%struct._twoIntsStruct** %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** %2) #1 comdat align 2 {
  %4 = alloca %struct._twoIntsStruct**, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  %7 = alloca i64, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %10 = ptrtoint %struct._twoIntsStruct** %8 to i64
  %11 = ptrtoint %struct._twoIntsStruct** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %17, i64 %19
  %21 = bitcast %struct._twoIntsStruct** %20 to i8*
  %22 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  %23 = bitcast %struct._twoIntsStruct** %22 to i8*
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 8, %24
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %23, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %27, i64 %29
  ret %struct._twoIntsStruct** %30
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct._twoIntsStruct** @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(%struct._twoIntsStruct** %0) #0 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %3, align 8
  %4 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct*** @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(%struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %3) #10
  %5 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %4, align 8
  call void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %struct._twoIntsStruct** %5)
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  %7 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  ret %struct._twoIntsStruct** %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value8_StorageC2Ev(%"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"*, align 8
  store %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %0, %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"** %2, align 8
  %3 = load %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"*, %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"** %2, align 8
  %4 = bitcast %"union.std::vector<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Temporary_value::_Storage"* %3 to i8*
  store i8 0, i8* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(%struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %struct._twoIntsStruct**, align 8
  store %struct._twoIntsStruct** %0, %struct._twoIntsStruct*** %2, align 8
  %3 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  ret %struct._twoIntsStruct** %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::allocator"*
  %9 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %11 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(%struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %10) #10
  call void @_ZNSt15__new_allocatorIP14_twoIntsStructE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.std::allocator"* %8, %struct._twoIntsStruct** %9, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %11) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP14_twoIntsStructE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.std::allocator"* %0, %struct._twoIntsStruct** %1, %struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct._twoIntsStruct**, align 8
  %6 = alloca %struct._twoIntsStruct**, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %5, align 8
  store %struct._twoIntsStruct** %2, %struct._twoIntsStruct*** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %5, align 8
  %9 = bitcast %struct._twoIntsStruct** %8 to i8*
  %10 = bitcast i8* %9 to %struct._twoIntsStruct**
  %11 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %6, align 8
  %12 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(%struct._twoIntsStruct** nonnull align 8 dereferenceable(8) %11) #10
  %13 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %12, align 8
  store %struct._twoIntsStruct* %13, %struct._twoIntsStruct** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.0"* %0, %struct._twoIntsStruct*** nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %4 = alloca %struct._twoIntsStruct***, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %0, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  store %struct._twoIntsStruct*** %1, %struct._twoIntsStruct**** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %5, i32 0, i32 0
  %7 = load %struct._twoIntsStruct***, %struct._twoIntsStruct**** %4, align 8
  %8 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %7, align 8
  store %struct._twoIntsStruct** %8, %struct._twoIntsStruct*** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(%"struct.std::_Vector_base"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %4) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %0, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"*, %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaIP14_twoIntsStructEC2Ev(%"class.std::allocator"* %4) #10
  %5 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %3 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %5) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIP14_twoIntsStructEC2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.std::allocator"*
  call void @_ZNSt15__new_allocatorIP14_twoIntsStructEC2Ev(%"class.std::allocator"* %4) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP14_twoIntsStructEC2Ev(%"class.std::allocator"* %0) unnamed_addr #1 comdat align 2 {
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
  %6 = call i64 @time(i64* null) #10
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #10
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_724goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #8

; Function Attrs: nounwind
declare dso_local void @srand(i32) #8

declare dso_local void @printLine(i8*) #9

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN42CWE476_NULL_Pointer_Dereference__struct_7211goodG2BSinkESt6vectorIP14_twoIntsStructSaIS2_EE(%"class.std::vector"* %0) #0 {
  %2 = alloca %struct._twoIntsStruct*, align 8
  %3 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(%"class.std::vector"* %0, i64 2) #10
  %4 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  store %struct._twoIntsStruct* %4, %struct._twoIntsStruct** %2, align 8
  %5 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %6 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(%"class.std::vector"* %0, i64 %1) #1 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl"* %7 to %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data", %"struct.std::_Vector_base<_twoIntsStruct *, std::allocator<_twoIntsStruct *>>::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct._twoIntsStruct*, %struct._twoIntsStruct** %10, i64 %11
  ret %struct._twoIntsStruct** %12
}

declare dso_local void @printIntLine(i32) #9

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN42CWE476_NULL_Pointer_Dereference__struct_7211goodB2GSinkESt6vectorIP14_twoIntsStructSaIS2_EE(%"class.std::vector"* %0) #0 {
  %2 = alloca %struct._twoIntsStruct*, align 8
  %3 = call nonnull align 8 dereferenceable(8) %struct._twoIntsStruct** @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(%"class.std::vector"* %0, i64 2) #10
  %4 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  store %struct._twoIntsStruct* %4, %struct._twoIntsStruct** %2, align 8
  %5 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %6 = icmp ne %struct._twoIntsStruct* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %9 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  call void @printIntLine(i32 %10)
  br label %12

11:                                               ; preds = %1
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
