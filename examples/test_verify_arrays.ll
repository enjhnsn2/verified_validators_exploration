; ModuleID = 'test_verify_arrays.cpp'
source_filename = "test_verify_arrays.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"struct.std::__1::array.32" = type { [4 x i32] }
%"class.std::__1::shared_timed_mutex" = type { %"struct.std::__1::__shared_mutex_base" }
%"struct.std::__1::__shared_mutex_base" = type <{ %"class.std::__1::mutex", %"class.std::__1::condition_variable", %"class.std::__1::condition_variable", i32, [4 x i8] }>
%"class.std::__1::mutex" = type { %struct._opaque_pthread_mutex_t }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::condition_variable" = type { %struct._opaque_pthread_cond_t }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }
%"class.std::__1::vector.22" = type { i8**, i8**, %"class.std::__1::__compressed_pair.23" }
%"class.std::__1::__compressed_pair.23" = type { %"struct.std::__1::__compressed_pair_elem.24" }
%"struct.std::__1::__compressed_pair_elem.24" = type { i8** }
%"struct.std::__1::piecewise_construct_t" = type { i8 }
%"class.rlbox::rlbox_sandbox" = type { %"class.rlbox::rlbox_test_sandbox", %"class.std::__1::shared_timed_mutex", %"class.std::__1::map", %"class.rlbox::app_pointer_map", %"struct.std::__1::atomic", %"class.std::__1::mutex", %"class.std::__1::vector.22", i8*, i8* }
%"class.rlbox::rlbox_test_sandbox" = type { i64, %"class.std::__1::mutex", %"class.std::__1::vector", i64, i64 }
%"class.std::__1::vector" = type { i8**, i8**, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { i8** }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.1", %"class.std::__1::__compressed_pair.7" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.7" = type { %"struct.std::__1::__compressed_pair_elem.8" }
%"struct.std::__1::__compressed_pair_elem.8" = type { i64 }
%"class.rlbox::app_pointer_map" = type <{ %"class.std::__1::map.10", i32, [4 x i8] }>
%"class.std::__1::map.10" = type { %"class.std::__1::__tree.11" }
%"class.std::__1::__tree.11" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.12", %"class.std::__1::__compressed_pair.17" }
%"class.std::__1::__compressed_pair.12" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"class.std::__1::__compressed_pair.17" = type { %"struct.std::__1::__compressed_pair_elem.8" }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__cxx_atomic_impl" }
%"struct.std::__1::__cxx_atomic_impl" = type { %"struct.std::__1::__cxx_atomic_base_impl" }
%"struct.std::__1::__cxx_atomic_base_impl" = type { i32 }
%"class.rlbox::tainted" = type { [4 x i32]* }
%"class.rlbox::tainted_base_impl" = type { i8 }
%"class.rlbox::tainted_volatile" = type { %"struct.std::__1::array" }
%"struct.std::__1::array" = type { [4 x i32] }
%"class.rlbox::tainted_base_impl.29" = type { i8 }
%"class.rlbox::tainted_volatile.30" = type { i32 }
%"class.rlbox::tainted_base_impl.31" = type { i8 }
%"class.std::__1::unique_lock" = type <{ %"class.std::__1::shared_timed_mutex"*, i8, [7 x i8] }>
%"class.std::__1::__wrap_iter" = type { i8** }
%"class.std::__1::__wrap_iter.49" = type { i8** }
%class.anon = type { i8 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.0" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::__non_trivial_if" = type { i8 }
%"class.std::__1::__map_value_compare" = type { i8 }
%"struct.std::__1::less" = type { i8 }
%"struct.std::__1::__value_init_tag" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.3" = type { i8 }
%"class.std::__1::allocator.4" = type { i8 }
%"struct.std::__1::__non_trivial_if.5" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.9" = type { i8 }
%"struct.std::__1::pair.33" = type <{ %"class.std::__1::__tree_iterator", i8, [7 x i8] }>
%"class.std::__1::__tree_iterator" = type { %"class.std::__1::__tree_end_node"* }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf" }
%"class.std::__1::__tuple_leaf" = type { i32* }
%"class.std::__1::tuple.34" = type { i8 }
%"struct.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"struct.std::__1::pair" = type { i32, i8* }
%"class.std::__1::__map_value_compare.19" = type { i8 }
%"struct.std::__1::less.20" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.13" = type { i8 }
%"class.std::__1::allocator.14" = type { i8 }
%"struct.std::__1::__non_trivial_if.15" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.18" = type { i8 }
%"class.std::__1::__tree_node" = type { %"class.std::__1::__tree_node_base.base", %"struct.std::__1::__value_type" }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8 }>
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.35" }
%"class.std::__1::__compressed_pair.35" = type { %"struct.std::__1::__compressed_pair_elem.36", %"struct.std::__1::__compressed_pair_elem.37" }
%"struct.std::__1::__compressed_pair_elem.36" = type { %"class.std::__1::__tree_node"* }
%"struct.std::__1::__compressed_pair_elem.37" = type { %"class.std::__1::__tree_node_destructor" }
%"class.std::__1::__tree_node_destructor" = type <{ %"class.std::__1::allocator.14"*, i8, [7 x i8] }>
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_indices.38" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_types.39" = type { i8 }
%"class.std::__1::__tree_node.40" = type { %"class.std::__1::__tree_node_base.base", %"struct.std::__1::__value_type.41" }
%"struct.std::__1::__value_type.41" = type { %"struct.std::__1::pair.42" }
%"struct.std::__1::pair.42" = type { %"class.std::__1::basic_string", i8* }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.43" }
%"class.std::__1::__compressed_pair.43" = type { %"struct.std::__1::__compressed_pair_elem.44" }
%"struct.std::__1::__compressed_pair_elem.44" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 }
%"class.std::runtime_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::__1::__libcpp_refstring" = type { i8* }
%"class.std::__1::allocator.26" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.25" = type { i8 }
%"struct.std::__1::pair.50" = type { i8*, i8* }
%"struct.std::__1::vector<void *>::_ConstructTransaction" = type { %"class.std::__1::vector.22"*, i8**, i8** }
%"struct.std::__1::__split_buffer" = type { i8**, i8**, i8**, %"class.std::__1::__compressed_pair.51" }
%"class.std::__1::__compressed_pair.51" = type { %"struct.std::__1::__compressed_pair_elem.24", %"struct.std::__1::__compressed_pair_elem.52" }
%"struct.std::__1::__compressed_pair_elem.52" = type { %"class.std::__1::allocator.26"* }
%"struct.std::__1::__less" = type { i8 }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::__non_trivial_if.27" = type { i8 }

@__const._Z36sandbox_array_index_unchecked_unsafev.host_array = private unnamed_addr constant %"struct.std::__1::array.32" { [4 x i32] [i32 100, i32 200, i32 300, i32 400] }, align 4
@__const._Z34sandbox_array_index_unchecked_safev.host_array = private unnamed_addr constant %"struct.std::__1::array.32" { [4 x i32] [i32 100, i32 200, i32 300, i32 400] }, align 4
@__const._Z27sandbox_array_index_checkedv.host_array = private unnamed_addr constant %"struct.std::__1::array.32" { [4 x i32] [i32 100, i32 200, i32 300, i32 400] }, align 4
@_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE = linkonce_odr global %"class.std::__1::shared_timed_mutex" zeroinitializer, align 8
@_ZGVN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE = linkonce_odr global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE = linkonce_odr global %"class.std::__1::vector.22" zeroinitializer, align 8
@_ZGVN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE = linkonce_odr global i64 0, align 8
@_ZNSt3__1L19piecewise_constructE = internal constant %"struct.std::__1::piecewise_construct_t" undef, align 1
@_ZTISt20bad_array_new_length = external constant i8*
@.str = private unnamed_addr constant [53 x i8] c"Over/Underflow when converting between integer types\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"destroy_sandbox called without sandbox creation/is being destroyed concurrently\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Unexpected state. Destroying a sandbox that was never initialized.\00", align 1
@_ZTISt13runtime_error = external constant i8*
@.str.4 = private unnamed_addr constant [81 x i8] c"create_sandbox called when sandbox already created/is being created concurrently\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant i8*
@_ZTVSt12length_error = external unnamed_addr constant { [5 x i8*] }, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Malloc tried to allocate 0 bytes\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Malloc returned pointer outside the sandbox memory\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Malloc returned a pointer whose range goes beyond sandbox memory\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Static array indexing overflow\00", align 1
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__cxx_global_var_init, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @__cxx_global_var_init.1, i8* null }]

; Function Attrs: mustprogress noinline optnone ssp uwtable
define noundef i32 @_Z36sandbox_array_index_unchecked_unsafev() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.rlbox::rlbox_sandbox", align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.rlbox::tainted", align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"struct.std::__1::array.32", align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEEC1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
  %17 = invoke noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE14create_sandboxIJEEEbDpT_(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %18 unwind label %70

18:                                               ; preds = %0
  %19 = invoke i64 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17malloc_in_sandboxIA4_iEENS_7taintedIPT_S1_EEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %20 unwind label %70

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %4, i32 0, i32 0
  %22 = inttoptr i64 %19 to [4 x i32]*
  store [4 x i32]* %22, [4 x i32]** %21, align 8
  store i32 10, i32* %5, align 4
  %23 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %24 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %23)
          to label %25 unwind label %70

25:                                               ; preds = %20
  %26 = bitcast %"class.rlbox::tainted_volatile"* %24 to %"class.rlbox::tainted_base_impl.29"*
  store i32 0, i32* %6, align 4
  %27 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %26, i32* noundef nonnull align 4 dereferenceable(4) %6)
          to label %28 unwind label %70

28:                                               ; preds = %25
  %29 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %27, i32* noundef nonnull align 4 dereferenceable(4) %5)
          to label %30 unwind label %70

30:                                               ; preds = %28
  store i32 20, i32* %7, align 4
  %31 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %32 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %31)
          to label %33 unwind label %70

33:                                               ; preds = %30
  %34 = bitcast %"class.rlbox::tainted_volatile"* %32 to %"class.rlbox::tainted_base_impl.29"*
  store i32 1, i32* %8, align 4
  %35 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %34, i32* noundef nonnull align 4 dereferenceable(4) %8)
          to label %36 unwind label %70

36:                                               ; preds = %33
  %37 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %35, i32* noundef nonnull align 4 dereferenceable(4) %7)
          to label %38 unwind label %70

38:                                               ; preds = %36
  store i32 30, i32* %9, align 4
  %39 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %40 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %39)
          to label %41 unwind label %70

41:                                               ; preds = %38
  %42 = bitcast %"class.rlbox::tainted_volatile"* %40 to %"class.rlbox::tainted_base_impl.29"*
  store i32 2, i32* %10, align 4
  %43 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %42, i32* noundef nonnull align 4 dereferenceable(4) %10)
          to label %44 unwind label %70

44:                                               ; preds = %41
  %45 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %43, i32* noundef nonnull align 4 dereferenceable(4) %9)
          to label %46 unwind label %70

46:                                               ; preds = %44
  store i32 40, i32* %11, align 4
  %47 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %48 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %47)
          to label %49 unwind label %70

49:                                               ; preds = %46
  %50 = bitcast %"class.rlbox::tainted_volatile"* %48 to %"class.rlbox::tainted_base_impl.29"*
  store i32 3, i32* %12, align 4
  %51 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %50, i32* noundef nonnull align 4 dereferenceable(4) %12)
          to label %52 unwind label %70

52:                                               ; preds = %49
  %53 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %51, i32* noundef nonnull align 4 dereferenceable(4) %11)
          to label %54 unwind label %70

54:                                               ; preds = %52
  %55 = bitcast %"struct.std::__1::array.32"* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%"struct.std::__1::array.32"* @__const._Z36sandbox_array_index_unchecked_unsafev.host_array to i8*), i64 16, i1 false)
  %56 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %57 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %56)
          to label %58 unwind label %70

58:                                               ; preds = %54
  %59 = bitcast %"class.rlbox::tainted_volatile"* %57 to %"class.rlbox::tainted_base_impl.29"*
  store i32 0, i32* %15, align 4
  %60 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %59, i32* noundef nonnull align 4 dereferenceable(4) %15)
          to label %61 unwind label %70

61:                                               ; preds = %58
  %62 = bitcast %"class.rlbox::tainted_volatile.30"* %60 to %"class.rlbox::tainted_base_impl.31"*
  %63 = invoke noundef i32 @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE17UNSAFE_unverifiedEv(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %62)
          to label %64 unwind label %70

64:                                               ; preds = %61
  store i32 %63, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__15arrayIiLm4EEixEm(%"struct.std::__1::array.32"* noundef nonnull align 4 dereferenceable(16) %13, i64 noundef %66) #8
  invoke void @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE15destroy_sandboxEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %68 unwind label %70

68:                                               ; preds = %64
  %69 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1) #8
  ret i32 0

70:                                               ; preds = %64, %61, %58, %54, %52, %49, %46, %44, %41, %38, %36, %33, %30, %28, %25, %20, %18, %0
  %71 = landingpad { i8*, i32 }
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  store i8* %72, i8** %2, align 8
  %73 = extractvalue { i8*, i32 } %71, 1
  store i32 %73, i32* %3, align 4
  %74 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1) #8
  br label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = insertvalue { i8*, i32 } undef, i8* %76, 0
  %79 = insertvalue { i8*, i32 } %78, i32 %77, 1
  resume { i8*, i32 } %79
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEEC1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull returned align 8 dereferenceable(448) %0) unnamed_addr #1 align 2 {
  %2 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %3 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %4 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEEC2Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %3)
  ret %"class.rlbox::rlbox_sandbox"* %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE14create_sandboxIJEEEbDpT_(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %0) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::__1::unique_lock", align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %10 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %10, i32 0, i32 4
  %12 = bitcast %"struct.std::__1::atomic"* %11 to %"struct.std::__1::__atomic_base"*
  %13 = call noundef zeroext i1 @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE23compare_exchange_strongERS5_S5_NS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %12, i32* noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 1, i32 noundef 5) #8
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %4, align 1
  %15 = load i8, i8* %4, align 1
  %16 = trunc i8 %15 to i1
  call void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %16, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  store i8 1, i8* %5, align 1
  %17 = bitcast %"class.rlbox::rlbox_sandbox"* %10 to %"class.rlbox::rlbox_test_sandbox"*
  call void @_ZN5rlbox18rlbox_test_sandbox19impl_create_sandboxIJEEEvDpT_(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %17)
  %18 = load i8, i8* %5, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %10, i32 0, i32 4
  %22 = bitcast %"struct.std::__1::atomic"* %21 to %"struct.std::__1::__atomic_base"*
  call void @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE5storeES5_NS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %22, i32 noundef 2, i32 noundef 5) #8
  %23 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEEC1ERS1_(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %6, %"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE)
  %24 = bitcast %"class.rlbox::rlbox_sandbox"* %10 to i8*
  store i8* %24, i8** %7, align 8
  invoke void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backEOS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE, i8** noundef nonnull align 8 dereferenceable(8) %7)
          to label %25 unwind label %27

25:                                               ; preds = %20
  %26 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEED1Ev(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %6) #8
  br label %32

27:                                               ; preds = %20
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %8, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %9, align 4
  %31 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEED1Ev(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %6) #8
  br label %35

32:                                               ; preds = %25, %1
  %33 = load i8, i8* %5, align 1
  %34 = trunc i8 %33 to i1
  ret i1 %34

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = insertvalue { i8*, i32 } undef, i8* %36, 0
  %39 = insertvalue { i8*, i32 } %38, i32 %37, 1
  resume { i8*, i32 } %39
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr i64 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17malloc_in_sandboxIA4_iEENS_7taintedIPT_S1_EEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %0) #0 align 2 {
  %2 = alloca %"class.rlbox::tainted", align 8
  %3 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %4 = alloca i32, align 4
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %3, align 8
  %5 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = call i64 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17malloc_in_sandboxIA4_iEENS_7taintedIPT_S1_EEj(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %5, i32 noundef 1)
  %7 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %2, i32 0, i32 0
  %8 = inttoptr i64 %6 to [4 x i32]*
  store [4 x i32]* %8, [4 x i32]** %7, align 8
  %9 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %2, i32 0, i32 0
  %10 = load [4 x i32]*, [4 x i32]** %9, align 8
  %11 = ptrtoint [4 x i32]* %10 to i64
  ret i64 %11
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %0) #0 align 2 {
  %2 = alloca %"class.rlbox::tainted_base_impl"*, align 8
  %3 = alloca %"class.rlbox::tainted_volatile"*, align 8
  %4 = alloca %"class.rlbox::tainted_volatile"*, align 8
  store %"class.rlbox::tainted_base_impl"* %0, %"class.rlbox::tainted_base_impl"** %2, align 8
  %5 = load %"class.rlbox::tainted_base_impl"*, %"class.rlbox::tainted_base_impl"** %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.rlbox::tainted"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEE4implEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %5)
  %7 = call noundef [4 x i32]* @_ZNK5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEE13get_raw_valueEv(%"class.rlbox::tainted"* noundef nonnull align 8 dereferenceable(8) %6) #8
  %8 = bitcast [4 x i32]* %7 to %"class.rlbox::tainted_volatile"*
  store %"class.rlbox::tainted_volatile"* %8, %"class.rlbox::tainted_volatile"** %3, align 8
  %9 = load %"class.rlbox::tainted_volatile"*, %"class.rlbox::tainted_volatile"** %3, align 8
  store %"class.rlbox::tainted_volatile"* %9, %"class.rlbox::tainted_volatile"** %4, align 8
  %10 = load %"class.rlbox::tainted_volatile"*, %"class.rlbox::tainted_volatile"** %4, align 8
  ret %"class.rlbox::tainted_volatile"* %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 {
  %3 = alloca %"class.rlbox::tainted_base_impl.29"*, align 8
  %4 = alloca i32*, align 8
  store %"class.rlbox::tainted_base_impl.29"* %0, %"class.rlbox::tainted_base_impl.29"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.rlbox::tainted_base_impl.29"*, %"class.rlbox::tainted_base_impl.29"** %3, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.rlbox::tainted_base_impl.29"* @_ZNSt3__18as_constIN5rlbox17tainted_base_implINS1_16tainted_volatileEA4_iNS1_18rlbox_test_sandboxEEEEERNS_9add_constIT_E4typeERS8_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %5) #8
  %7 = load i32*, i32** %4, align 8
  %8 = call noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIRiEERKNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %6, i32* noundef nonnull align 4 dereferenceable(4) %7)
  ret %"class.rlbox::tainted_volatile.30"* %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 {
  %3 = alloca %"class.rlbox::tainted_volatile.30"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %"class.rlbox::tainted_volatile.30"* %0, %"class.rlbox::tainted_volatile.30"** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %"class.rlbox::tainted_volatile.30"*, %"class.rlbox::tainted_volatile.30"** %3, align 8
  %13 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEE21get_sandbox_value_refEv(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %12) #8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %6, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  store i8 1, i8* %11, align 1
  %16 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEE21get_sandbox_value_refEv(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %12) #8
  %17 = load i32*, i32** %4, align 8
  call void @_ZN5rlbox6detail33convert_type_fundamental_or_arrayIViiEEvRT_RKT0_(i32* noundef nonnull align 4 dereferenceable(4) %16, i32* noundef nonnull align 4 dereferenceable(4) %17)
  ret %"class.rlbox::tainted_volatile.30"* %12
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef i32 @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE17UNSAFE_unverifiedEv(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %0) #0 align 2 {
  %2 = alloca %"class.rlbox::tainted_base_impl.31"*, align 8
  store %"class.rlbox::tainted_base_impl.31"* %0, %"class.rlbox::tainted_base_impl.31"** %2, align 8
  %3 = load %"class.rlbox::tainted_base_impl.31"*, %"class.rlbox::tainted_base_impl.31"** %2, align 8
  %4 = call noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE4implEv(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %3)
  %5 = call noundef i32 @_ZNK5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEE13get_raw_valueEv(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %4)
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__15arrayIiLm4EEixEm(%"struct.std::__1::array.32"* noundef nonnull align 4 dereferenceable(16) %0, i64 noundef %1) #3 align 2 {
  %3 = alloca %"struct.std::__1::array.32"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::__1::array.32"* %0, %"struct.std::__1::array.32"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::__1::array.32"*, %"struct.std::__1::array.32"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::array.32", %"struct.std::__1::array.32"* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %7
  ret i32* %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE15destroy_sandboxEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %0) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__1::unique_lock", align 8
  %6 = alloca %"class.std::__1::__wrap_iter", align 8
  %7 = alloca %"class.std::__1::__wrap_iter", align 8
  %8 = alloca %"class.std::__1::__wrap_iter", align 8
  %9 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::__1::__wrap_iter", align 8
  %13 = alloca %"class.std::__1::__wrap_iter.49", align 8
  %14 = alloca %"class.std::__1::__wrap_iter", align 8
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %15 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %2, align 8
  store i32 2, i32* %3, align 4
  %16 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %15, i32 0, i32 4
  %17 = bitcast %"struct.std::__1::atomic"* %16 to %"struct.std::__1::__atomic_base"*
  %18 = call noundef zeroext i1 @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE23compare_exchange_strongERS5_S5_NS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %17, i32* noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, i32 noundef 5) #8
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %4, align 1
  %20 = load i8, i8* %4, align 1
  %21 = trunc i8 %20 to i1
  call void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %21, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  %22 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEEC1ERS1_(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %5, %"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE)
  %23 = call i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE) #8
  %24 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %7, i32 0, i32 0
  %25 = inttoptr i64 %23 to i8**
  store i8** %25, i8*** %24, align 8
  %26 = call i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE) #8
  %27 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %8, i32 0, i32 0
  %28 = inttoptr i64 %26 to i8**
  store i8** %28, i8*** %27, align 8
  store %"class.rlbox::rlbox_sandbox"* %15, %"class.rlbox::rlbox_sandbox"** %9, align 8
  %29 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %7, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = ptrtoint i8** %30 to i64
  %32 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %8, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = ptrtoint i8** %33 to i64
  %35 = invoke i64 @_ZNSt3__14findINS_11__wrap_iterIPPvEEPN5rlbox13rlbox_sandboxINS5_18rlbox_test_sandboxEEEEET_SA_SA_RKT0_(i64 %31, i64 %34, %"class.rlbox::rlbox_sandbox"** noundef nonnull align 8 dereferenceable(8) %9)
          to label %36 unwind label %56

36:                                               ; preds = %1
  %37 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %6, i32 0, i32 0
  %38 = inttoptr i64 %35 to i8**
  store i8** %38, i8*** %37, align 8
  %39 = call i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE) #8
  %40 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %12, i32 0, i32 0
  %41 = inttoptr i64 %39 to i8**
  store i8** %41, i8*** %40, align 8
  %42 = call noundef zeroext i1 @_ZNSt3__1neIPPvEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %12) #8
  invoke void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %42, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
          to label %43 unwind label %56

43:                                               ; preds = %36
  %44 = call noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC1IPS1_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueEvE4typeE(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %6, i8* noundef null) #8
  %45 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %13, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = ptrtoint i8** %46 to i64
  %48 = invoke i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5eraseENS_11__wrap_iterIPKS1_EE(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE, i64 %47)
          to label %49 unwind label %56

49:                                               ; preds = %43
  %50 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %14, i32 0, i32 0
  %51 = inttoptr i64 %48 to i8**
  store i8** %51, i8*** %50, align 8
  %52 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEED1Ev(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %5) #8
  %53 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %15, i32 0, i32 4
  %54 = bitcast %"struct.std::__1::atomic"* %53 to %"struct.std::__1::__atomic_base"*
  call void @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE5storeES5_NS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %54, i32 noundef 0, i32 noundef 5) #8
  %55 = bitcast %"class.rlbox::rlbox_sandbox"* %15 to %"class.rlbox::rlbox_test_sandbox"*
  call void @_ZN5rlbox18rlbox_test_sandbox20impl_destroy_sandboxEv(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %55)
  ret void

56:                                               ; preds = %43, %36, %1
  %57 = landingpad { i8*, i32 }
          cleanup
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %10, align 8
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %11, align 4
  %60 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEED1Ev(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %5) #8
  br label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = insertvalue { i8*, i32 } undef, i8* %62, 0
  %65 = insertvalue { i8*, i32 } %64, i32 %63, 1
  resume { i8*, i32 } %65
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull returned align 8 dereferenceable(448) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %3 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %4 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED2Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %3) #8
  ret %"class.rlbox::rlbox_sandbox"* %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define noundef i32 @_Z34sandbox_array_index_unchecked_safev() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.rlbox::rlbox_sandbox", align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.rlbox::tainted", align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"struct.std::__1::array.32", align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEEC1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
  %17 = invoke noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE14create_sandboxIJEEEbDpT_(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %18 unwind label %70

18:                                               ; preds = %0
  %19 = invoke i64 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17malloc_in_sandboxIA4_iEENS_7taintedIPT_S1_EEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %20 unwind label %70

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %4, i32 0, i32 0
  %22 = inttoptr i64 %19 to [4 x i32]*
  store [4 x i32]* %22, [4 x i32]** %21, align 8
  store i32 2, i32* %5, align 4
  %23 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %24 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %23)
          to label %25 unwind label %70

25:                                               ; preds = %20
  %26 = bitcast %"class.rlbox::tainted_volatile"* %24 to %"class.rlbox::tainted_base_impl.29"*
  store i32 0, i32* %6, align 4
  %27 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %26, i32* noundef nonnull align 4 dereferenceable(4) %6)
          to label %28 unwind label %70

28:                                               ; preds = %25
  %29 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %27, i32* noundef nonnull align 4 dereferenceable(4) %5)
          to label %30 unwind label %70

30:                                               ; preds = %28
  store i32 20, i32* %7, align 4
  %31 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %32 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %31)
          to label %33 unwind label %70

33:                                               ; preds = %30
  %34 = bitcast %"class.rlbox::tainted_volatile"* %32 to %"class.rlbox::tainted_base_impl.29"*
  store i32 1, i32* %8, align 4
  %35 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %34, i32* noundef nonnull align 4 dereferenceable(4) %8)
          to label %36 unwind label %70

36:                                               ; preds = %33
  %37 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %35, i32* noundef nonnull align 4 dereferenceable(4) %7)
          to label %38 unwind label %70

38:                                               ; preds = %36
  store i32 30, i32* %9, align 4
  %39 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %40 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %39)
          to label %41 unwind label %70

41:                                               ; preds = %38
  %42 = bitcast %"class.rlbox::tainted_volatile"* %40 to %"class.rlbox::tainted_base_impl.29"*
  store i32 2, i32* %10, align 4
  %43 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %42, i32* noundef nonnull align 4 dereferenceable(4) %10)
          to label %44 unwind label %70

44:                                               ; preds = %41
  %45 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %43, i32* noundef nonnull align 4 dereferenceable(4) %9)
          to label %46 unwind label %70

46:                                               ; preds = %44
  store i32 40, i32* %11, align 4
  %47 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %48 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %47)
          to label %49 unwind label %70

49:                                               ; preds = %46
  %50 = bitcast %"class.rlbox::tainted_volatile"* %48 to %"class.rlbox::tainted_base_impl.29"*
  store i32 3, i32* %12, align 4
  %51 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %50, i32* noundef nonnull align 4 dereferenceable(4) %12)
          to label %52 unwind label %70

52:                                               ; preds = %49
  %53 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %51, i32* noundef nonnull align 4 dereferenceable(4) %11)
          to label %54 unwind label %70

54:                                               ; preds = %52
  %55 = bitcast %"struct.std::__1::array.32"* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%"struct.std::__1::array.32"* @__const._Z34sandbox_array_index_unchecked_safev.host_array to i8*), i64 16, i1 false)
  %56 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %57 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %56)
          to label %58 unwind label %70

58:                                               ; preds = %54
  %59 = bitcast %"class.rlbox::tainted_volatile"* %57 to %"class.rlbox::tainted_base_impl.29"*
  store i32 0, i32* %15, align 4
  %60 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %59, i32* noundef nonnull align 4 dereferenceable(4) %15)
          to label %61 unwind label %70

61:                                               ; preds = %58
  %62 = bitcast %"class.rlbox::tainted_volatile.30"* %60 to %"class.rlbox::tainted_base_impl.31"*
  %63 = invoke noundef i32 @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE17UNSAFE_unverifiedEv(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %62)
          to label %64 unwind label %70

64:                                               ; preds = %61
  store i32 %63, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__15arrayIiLm4EEixEm(%"struct.std::__1::array.32"* noundef nonnull align 4 dereferenceable(16) %13, i64 noundef %66) #8
  invoke void @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE15destroy_sandboxEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %68 unwind label %70

68:                                               ; preds = %64
  %69 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1) #8
  ret i32 0

70:                                               ; preds = %64, %61, %58, %54, %52, %49, %46, %44, %41, %38, %36, %33, %30, %28, %25, %20, %18, %0
  %71 = landingpad { i8*, i32 }
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  store i8* %72, i8** %2, align 8
  %73 = extractvalue { i8*, i32 } %71, 1
  store i32 %73, i32* %3, align 4
  %74 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1) #8
  br label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = insertvalue { i8*, i32 } undef, i8* %76, 0
  %79 = insertvalue { i8*, i32 } %78, i32 %77, 1
  resume { i8*, i32 } %79
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define noundef i32 @_Z27sandbox_array_index_checkedv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.rlbox::rlbox_sandbox", align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.rlbox::tainted", align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"struct.std::__1::array.32", align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %class.anon, align 1
  %17 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEEC1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
  %18 = invoke noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE14create_sandboxIJEEEbDpT_(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %19 unwind label %71

19:                                               ; preds = %0
  %20 = invoke i64 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17malloc_in_sandboxIA4_iEENS_7taintedIPT_S1_EEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %21 unwind label %71

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %4, i32 0, i32 0
  %23 = inttoptr i64 %20 to [4 x i32]*
  store [4 x i32]* %23, [4 x i32]** %22, align 8
  store i32 10, i32* %5, align 4
  %24 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %25 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %24)
          to label %26 unwind label %71

26:                                               ; preds = %21
  %27 = bitcast %"class.rlbox::tainted_volatile"* %25 to %"class.rlbox::tainted_base_impl.29"*
  store i32 0, i32* %6, align 4
  %28 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %27, i32* noundef nonnull align 4 dereferenceable(4) %6)
          to label %29 unwind label %71

29:                                               ; preds = %26
  %30 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %28, i32* noundef nonnull align 4 dereferenceable(4) %5)
          to label %31 unwind label %71

31:                                               ; preds = %29
  store i32 20, i32* %7, align 4
  %32 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %33 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %32)
          to label %34 unwind label %71

34:                                               ; preds = %31
  %35 = bitcast %"class.rlbox::tainted_volatile"* %33 to %"class.rlbox::tainted_base_impl.29"*
  store i32 1, i32* %8, align 4
  %36 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %35, i32* noundef nonnull align 4 dereferenceable(4) %8)
          to label %37 unwind label %71

37:                                               ; preds = %34
  %38 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %36, i32* noundef nonnull align 4 dereferenceable(4) %7)
          to label %39 unwind label %71

39:                                               ; preds = %37
  store i32 30, i32* %9, align 4
  %40 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %41 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %40)
          to label %42 unwind label %71

42:                                               ; preds = %39
  %43 = bitcast %"class.rlbox::tainted_volatile"* %41 to %"class.rlbox::tainted_base_impl.29"*
  store i32 2, i32* %10, align 4
  %44 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %43, i32* noundef nonnull align 4 dereferenceable(4) %10)
          to label %45 unwind label %71

45:                                               ; preds = %42
  %46 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %44, i32* noundef nonnull align 4 dereferenceable(4) %9)
          to label %47 unwind label %71

47:                                               ; preds = %45
  store i32 40, i32* %11, align 4
  %48 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %49 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %48)
          to label %50 unwind label %71

50:                                               ; preds = %47
  %51 = bitcast %"class.rlbox::tainted_volatile"* %49 to %"class.rlbox::tainted_base_impl.29"*
  store i32 3, i32* %12, align 4
  %52 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %51, i32* noundef nonnull align 4 dereferenceable(4) %12)
          to label %53 unwind label %71

53:                                               ; preds = %50
  %54 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEEaSIiEERS2_OT_(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %52, i32* noundef nonnull align 4 dereferenceable(4) %11)
          to label %55 unwind label %71

55:                                               ; preds = %53
  %56 = bitcast %"struct.std::__1::array.32"* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 bitcast (%"struct.std::__1::array.32"* @__const._Z27sandbox_array_index_checkedv.host_array to i8*), i64 16, i1 false)
  %57 = bitcast %"class.rlbox::tainted"* %4 to %"class.rlbox::tainted_base_impl"*
  %58 = invoke noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEEdeEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %57)
          to label %59 unwind label %71

59:                                               ; preds = %55
  %60 = bitcast %"class.rlbox::tainted_volatile"* %58 to %"class.rlbox::tainted_base_impl.29"*
  store i32 0, i32* %15, align 4
  %61 = invoke noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZN5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIiEERNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %60, i32* noundef nonnull align 4 dereferenceable(4) %15)
          to label %62 unwind label %71

62:                                               ; preds = %59
  %63 = bitcast %"class.rlbox::tainted_volatile.30"* %61 to %"class.rlbox::tainted_base_impl.31"*
  %64 = invoke noundef i32 @"_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE15copy_and_verifyIZ27sandbox_array_index_checkedvE3$_0EEDaT_"(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %63)
          to label %65 unwind label %71

65:                                               ; preds = %62
  store i32 %64, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__15arrayIiLm4EEixEm(%"struct.std::__1::array.32"* noundef nonnull align 4 dereferenceable(16) %13, i64 noundef %67) #8
  invoke void @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE15destroy_sandboxEv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1)
          to label %69 unwind label %71

69:                                               ; preds = %65
  %70 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1) #8
  ret i32 0

71:                                               ; preds = %65, %62, %59, %55, %53, %50, %47, %45, %42, %39, %37, %34, %31, %29, %26, %21, %19, %0
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = extractvalue { i8*, i32 } %72, 0
  store i8* %73, i8** %2, align 8
  %74 = extractvalue { i8*, i32 } %72, 1
  store i32 %74, i32* %3, align 4
  %75 = call noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED1Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %1) #8
  br label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = insertvalue { i8*, i32 } undef, i8* %77, 0
  %80 = insertvalue { i8*, i32 } %79, i32 %78, 1
  resume { i8*, i32 } %80
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @"_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE15copy_and_verifyIZ27sandbox_array_index_checkedvE3$_0EEDaT_"(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %0) #0 align 2 {
  %2 = alloca %class.anon, align 1
  %3 = alloca %"class.rlbox::tainted_base_impl.31"*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %"class.rlbox::tainted_base_impl.31"* %0, %"class.rlbox::tainted_base_impl.31"** %3, align 8
  %6 = load %"class.rlbox::tainted_base_impl.31"*, %"class.rlbox::tainted_base_impl.31"** %3, align 8
  store i8 1, i8* %4, align 1
  %7 = call noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE4implEv(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %6)
  %8 = call noundef i32 @_ZNK5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEE13get_raw_valueEv(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call noundef i32 @"_ZZ27sandbox_array_index_checkedvENK3$_0clEi"(%class.anon* noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable
define noundef i32 @main() #5 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call noundef i32 @_Z27sandbox_array_index_checkedv()
  %3 = call noundef i32 @_Z34sandbox_array_index_unchecked_safev()
  %4 = call noundef i32 @_Z36sandbox_array_index_unchecked_unsafev()
  ret i32 0
}

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init() #6 section "__TEXT,__StaticInit,regular,pure_instructions" {
  %1 = load i8, i8* bitcast (i64* @_ZGVN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE to i8*), align 8
  %2 = and i8 %1, 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexC1Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE)
  %6 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::__1::shared_timed_mutex"* (%"class.std::__1::shared_timed_mutex"*)* @_ZNSt3__118shared_timed_mutexD1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::shared_timed_mutex"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE to i8*), i8* @__dso_handle) #8
  store i8 1, i8* bitcast (i64* @_ZGVN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17sandbox_list_lockE to i8*), align 8
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

declare noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexC1Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull returned align 8 dereferenceable(168)) unnamed_addr #7

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexD1Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull returned align 8 dereferenceable(168) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::shared_timed_mutex"*, align 8
  store %"class.std::__1::shared_timed_mutex"* %0, %"class.std::__1::shared_timed_mutex"** %2, align 8
  %3 = load %"class.std::__1::shared_timed_mutex"*, %"class.std::__1::shared_timed_mutex"** %2, align 8
  %4 = call noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexD2Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %3) #8
  ret %"class.std::__1::shared_timed_mutex"* %3
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #8

; Function Attrs: noinline ssp uwtable
define internal void @__cxx_global_var_init.1() #6 section "__TEXT,__StaticInit,regular,pure_instructions" {
  %1 = load i8, i8* bitcast (i64* @_ZGVN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE to i8*), align 8
  %2 = and i8 %1, 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1Ev(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE) #8
  %6 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::__1::vector.22"* (%"class.std::__1::vector.22"*)* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::vector.22"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE to i8*), i8* @__dso_handle) #8
  store i8 1, i8* bitcast (i64* @_ZGVN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE12sandbox_listE to i8*), align 8
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1Ev(%"class.std::__1::vector.22"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = call noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2Ev(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::vector.22"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1Ev(%"class.std::__1::vector.22"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = call noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2Ev(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::vector.22"* %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEEC2Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull returned align 8 dereferenceable(448) %0) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %5 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %6 = bitcast %"class.rlbox::rlbox_sandbox"* %5 to %"class.rlbox::rlbox_test_sandbox"*
  %7 = call noundef %"class.rlbox::rlbox_test_sandbox"* @_ZN5rlbox18rlbox_test_sandboxC2Ev(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %6) #8
  %8 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %5, i32 0, i32 1
  %9 = invoke noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexC1Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %8)
          to label %10 unwind label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %5, i32 0, i32 2
  %12 = call noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEEC1Ev(%"class.std::__1::map"* noundef nonnull align 8 dereferenceable(24) %11) #8
  %13 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %5, i32 0, i32 3
  %14 = invoke noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjEC1Ev(%"class.rlbox::app_pointer_map"* noundef nonnull align 8 dereferenceable(28) %13)
          to label %15 unwind label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %5, i32 0, i32 4
  %17 = call noundef %"struct.std::__1::atomic"* @_ZNSt3__16atomicIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEC1ES5_(%"struct.std::__1::atomic"* noundef nonnull align 4 dereferenceable(4) %16, i32 noundef 0) #8
  %18 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %5, i32 0, i32 5
  %19 = call noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexC1Ev(%"class.std::__1::mutex"* noundef nonnull align 8 dereferenceable(64) %18) #8
  %20 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %5, i32 0, i32 6
  %21 = call noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1Ev(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %20) #8
  %22 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %5, i32 0, i32 7
  store i8* null, i8** %22, align 8
  ret %"class.rlbox::rlbox_sandbox"* %5

23:                                               ; preds = %1
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %3, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %10
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %3, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %4, align 4
  %31 = call noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEED1Ev(%"class.std::__1::map"* noundef nonnull align 8 dereferenceable(24) %11) #8
  %32 = call noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexD1Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %8) #8
  br label %33

33:                                               ; preds = %27, %23
  %34 = bitcast %"class.rlbox::rlbox_sandbox"* %5 to %"class.rlbox::rlbox_test_sandbox"*
  %35 = call noundef %"class.rlbox::rlbox_test_sandbox"* @_ZN5rlbox18rlbox_test_sandboxD2Ev(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %34) #8
  br label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::rlbox_test_sandbox"* @_ZN5rlbox18rlbox_test_sandboxC2Ev(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull returned align 8 dereferenceable(112) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %3 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %3, i32 0, i32 0
  store i64 8, i64* %4, align 8
  %5 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %3, i32 0, i32 1
  %6 = call noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexC1Ev(%"class.std::__1::mutex"* noundef nonnull align 8 dereferenceable(64) %5) #8
  %7 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %3, i32 0, i32 2
  %8 = call noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEEC1Ev(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %7) #8
  ret %"class.rlbox::rlbox_test_sandbox"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEEC1Ev(%"class.std::__1::map"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map"*, align 8
  store %"class.std::__1::map"* %0, %"class.std::__1::map"** %2, align 8
  %3 = load %"class.std::__1::map"*, %"class.std::__1::map"** %2, align 8
  %4 = call noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEEC2Ev(%"class.std::__1::map"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::map"* %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjEC1Ev(%"class.rlbox::app_pointer_map"* noundef nonnull returned align 8 dereferenceable(28) %0) unnamed_addr #1 align 2 {
  %2 = alloca %"class.rlbox::app_pointer_map"*, align 8
  store %"class.rlbox::app_pointer_map"* %0, %"class.rlbox::app_pointer_map"** %2, align 8
  %3 = load %"class.rlbox::app_pointer_map"*, %"class.rlbox::app_pointer_map"** %2, align 8
  %4 = call noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjEC2Ev(%"class.rlbox::app_pointer_map"* noundef nonnull align 8 dereferenceable(28) %3)
  ret %"class.rlbox::app_pointer_map"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::atomic"* @_ZNSt3__16atomicIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEC1ES5_(%"struct.std::__1::atomic"* noundef nonnull returned align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::atomic"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::__1::atomic"* %0, %"struct.std::__1::atomic"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call noundef %"struct.std::__1::atomic"* @_ZNSt3__16atomicIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEC2ES5_(%"struct.std::__1::atomic"* noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %6) #8
  ret %"struct.std::__1::atomic"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexC1Ev(%"class.std::__1::mutex"* noundef nonnull returned align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::mutex"*, align 8
  store %"class.std::__1::mutex"* %0, %"class.std::__1::mutex"** %2, align 8
  %3 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %2, align 8
  %4 = call noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexC2Ev(%"class.std::__1::mutex"* noundef nonnull align 8 dereferenceable(64) %3) #8
  ret %"class.std::__1::mutex"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEED1Ev(%"class.std::__1::map"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map"*, align 8
  store %"class.std::__1::map"* %0, %"class.std::__1::map"** %2, align 8
  %3 = load %"class.std::__1::map"*, %"class.std::__1::map"** %2, align 8
  %4 = call noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEED2Ev(%"class.std::__1::map"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::map"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::rlbox_test_sandbox"* @_ZN5rlbox18rlbox_test_sandboxD2Ev(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull returned align 8 dereferenceable(112) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %3 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %3, i32 0, i32 2
  %5 = call noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEED1Ev(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %6 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %3, i32 0, i32 1
  %7 = call noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"* noundef nonnull align 8 dereferenceable(64) %6) #8
  ret %"class.rlbox::rlbox_test_sandbox"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEEC1Ev(%"class.std::__1::vector"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = call noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEEC2Ev(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::vector"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEEC2Ev(%"class.std::__1::vector"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__1::vector"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %5 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %5, i32 0, i32 0
  store i8** null, i8*** %6, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %5, i32 0, i32 1
  store i8** null, i8*** %7, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %5, i32 0, i32 2
  store i8* null, i8** %3, align 8
  %9 = invoke noundef %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair"* noundef nonnull align 8 dereferenceable(8) %8, i8** noundef nonnull align 8 dereferenceable(8) %3, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %10 unwind label %12

10:                                               ; preds = %1
  invoke void @_ZNSt3__119__debug_db_insert_cINS_6vectorIPKvNS_9allocatorIS3_EEEEEEvPT_(%"class.std::__1::vector"* noundef %5)
          to label %11 unwind label %12

11:                                               ; preds = %10
  ret %"class.std::__1::vector"* %5

12:                                               ; preds = %10, %1
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #17
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  %10 = call noundef %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair"* noundef nonnull align 8 dereferenceable(8) %7, i8** noundef nonnull align 8 dereferenceable(8) %8, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %9)
  ret %"class.std::__1::__compressed_pair"* %7
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #8
  call void @_ZSt9terminatev() #17
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cINS_6vectorIPKvNS_9allocatorIS3_EEEEEEvPT_(%"class.std::__1::vector"* noundef %0) #3 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %8 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %4, align 8
  %9 = bitcast %"class.std::__1::__compressed_pair"* %8 to %"struct.std::__1::__compressed_pair_elem"*
  %10 = load i8**, i8*** %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %10) #8
  %12 = call noundef %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemIPPKvLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem"* noundef nonnull align 8 dereferenceable(8) %9, i8** noundef nonnull align 8 dereferenceable(8) %11)
  %13 = bitcast %"class.std::__1::__compressed_pair"* %8 to %"struct.std::__1::__compressed_pair_elem.0"*
  %14 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  %15 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %14) #8
  %16 = call noundef %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPKvEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* noundef nonnull align 1 dereferenceable(1) %13)
  ret %"class.std::__1::__compressed_pair"* %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  ret i8** %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemIPPKvLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  %4 = alloca i8**, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %0, %"struct.std::__1::__compressed_pair_elem"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %5, i32 0, i32 0
  %7 = load i8**, i8*** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %7) #8
  store i8** null, i8*** %6, align 8
  ret %"struct.std::__1::__compressed_pair_elem"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"struct.std::__1::__default_init_tag"* %0, %"struct.std::__1::__default_init_tag"** %2, align 8
  %3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %2, align 8
  ret %"struct.std::__1::__default_init_tag"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPKvEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %0, %"struct.std::__1::__compressed_pair_elem.0"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %3, align 8
  %5 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %4 to %"class.std::__1::allocator"*
  %6 = call noundef %"class.std::__1::allocator"* @_ZNSt3__19allocatorIPKvEC2Ev(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #8
  ret %"struct.std::__1::__compressed_pair_elem.0"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::allocator"* @_ZNSt3__19allocatorIPKvEC2Ev(%"class.std::__1::allocator"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %2, align 8
  %3 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %2, align 8
  %4 = bitcast %"class.std::__1::allocator"* %3 to %"struct.std::__1::__non_trivial_if"*
  %5 = call noundef %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPKvEEEC2Ev(%"struct.std::__1::__non_trivial_if"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPKvEEEC2Ev(%"struct.std::__1::__non_trivial_if"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__non_trivial_if"*, align 8
  store %"struct.std::__1::__non_trivial_if"* %0, %"struct.std::__1::__non_trivial_if"** %2, align 8
  %3 = load %"struct.std::__1::__non_trivial_if"*, %"struct.std::__1::__non_trivial_if"** %2, align 8
  ret %"struct.std::__1::__non_trivial_if"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEEC2Ev(%"class.std::__1::map"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map"*, align 8
  %3 = alloca %"class.std::__1::__map_value_compare", align 1
  %4 = alloca %"struct.std::__1::less", align 1
  store %"class.std::__1::map"* %0, %"class.std::__1::map"** %2, align 8
  %5 = load %"class.std::__1::map"*, %"class.std::__1::map"** %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::map", %"class.std::__1::map"* %5, i32 0, i32 0
  %7 = call noundef %"class.std::__1::__map_value_compare"* @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_PvEENS_4lessIS6_EELb1EEC1ESB_(%"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %3) #8
  %8 = call noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEEC1ERKSD_(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %3) #8
  ret %"class.std::__1::map"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__map_value_compare"* @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_PvEENS_4lessIS6_EELb1EEC1ESB_(%"class.std::__1::__map_value_compare"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::less", align 1
  %3 = alloca %"class.std::__1::__map_value_compare"*, align 8
  store %"class.std::__1::__map_value_compare"* %0, %"class.std::__1::__map_value_compare"** %3, align 8
  %4 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %3, align 8
  %5 = call noundef %"class.std::__1::__map_value_compare"* @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_PvEENS_4lessIS6_EELb1EEC2ESB_(%"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::__map_value_compare"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEEC1ERKSD_(%"class.std::__1::__tree"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__tree"*, align 8
  %4 = alloca %"class.std::__1::__map_value_compare"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %3, align 8
  store %"class.std::__1::__map_value_compare"* %1, %"class.std::__1::__map_value_compare"** %4, align 8
  %5 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %3, align 8
  %6 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %4, align 8
  %7 = call noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEEC2ERKSD_(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %5, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %6) #8
  ret %"class.std::__1::__tree"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__map_value_compare"* @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_PvEENS_4lessIS6_EELb1EEC2ESB_(%"class.std::__1::__map_value_compare"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::less", align 1
  %3 = alloca %"class.std::__1::__map_value_compare"*, align 8
  store %"class.std::__1::__map_value_compare"* %0, %"class.std::__1::__map_value_compare"** %3, align 8
  %4 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %3, align 8
  %5 = bitcast %"class.std::__1::__map_value_compare"* %4 to %"struct.std::__1::less"*
  ret %"class.std::__1::__map_value_compare"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEEC2ERKSD_(%"class.std::__1::__tree"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__tree"*, align 8
  %4 = alloca %"class.std::__1::__map_value_compare"*, align 8
  %5 = alloca i32, align 4
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %3, align 8
  store %"class.std::__1::__map_value_compare"* %1, %"class.std::__1::__map_value_compare"** %4, align 8
  %6 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::__tree", %"class.std::__1::__tree"* %6, i32 0, i32 1
  %8 = invoke noundef %"class.std::__1::__compressed_pair.1"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEEC1ILb1EvEEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %7)
          to label %9 unwind label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.std::__1::__tree", %"class.std::__1::__tree"* %6, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %11 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %4, align 8
  %12 = invoke noundef %"class.std::__1::__compressed_pair.7"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEEEC1IiRKSD_EEOT_OT0_(%"class.std::__1::__compressed_pair.7"* noundef nonnull align 8 dereferenceable(8) %10, i32* noundef nonnull align 4 dereferenceable(4) %5, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %11)
          to label %13 unwind label %16

13:                                               ; preds = %9
  %14 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE10__end_nodeEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %6) #8
  %15 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"** @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE12__begin_nodeEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %6) #8
  store %"class.std::__1::__tree_end_node"* %14, %"class.std::__1::__tree_end_node"** %15, align 8
  ret %"class.std::__1::__tree"* %6

16:                                               ; preds = %9, %2
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #17
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.1"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEEC1ILb1EvEEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.1"*, align 8
  store %"class.std::__1::__compressed_pair.1"* %0, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.1"*, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %4 = call noundef %"class.std::__1::__compressed_pair.1"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEEC2ILb1EvEEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %3)
  ret %"class.std::__1::__compressed_pair.1"* %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.7"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEEEC1IiRKSD_EEOT_OT0_(%"class.std::__1::__compressed_pair.7"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::__1::__map_value_compare"*, align 8
  store %"class.std::__1::__compressed_pair.7"* %0, %"class.std::__1::__compressed_pair.7"** %4, align 8
  store i32* %1, i32** %5, align 8
  store %"class.std::__1::__map_value_compare"* %2, %"class.std::__1::__map_value_compare"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %6, align 8
  %10 = call noundef %"class.std::__1::__compressed_pair.7"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEEEC2IiRKSD_EEOT_OT0_(%"class.std::__1::__compressed_pair.7"* noundef nonnull align 8 dereferenceable(8) %7, i32* noundef nonnull align 4 dereferenceable(4) %8, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %9)
  ret %"class.std::__1::__compressed_pair.7"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE10__end_nodeEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %2, align 8
  %3 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree", %"class.std::__1::__tree"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %4) #8
  %6 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %5) #8
  ret %"class.std::__1::__tree_end_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"** @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE12__begin_nodeEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %2, align 8
  %3 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree", %"class.std::__1::__tree"* %3, i32 0, i32 0
  ret %"class.std::__1::__tree_end_node"** %4
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.1"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEEC2ILb1EvEEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.1"*, align 8
  %3 = alloca %"struct.std::__1::__value_init_tag", align 1
  %4 = alloca %"struct.std::__1::__value_init_tag", align 1
  store %"class.std::__1::__compressed_pair.1"* %0, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %5 = load %"class.std::__1::__compressed_pair.1"*, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %6 = bitcast %"class.std::__1::__compressed_pair.1"* %5 to %"struct.std::__1::__compressed_pair_elem.2"*
  %7 = call noundef %"struct.std::__1::__compressed_pair_elem.2"* @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2ENS_16__value_init_tagE(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %6)
  %8 = bitcast %"class.std::__1::__compressed_pair.1"* %5 to %"struct.std::__1::__compressed_pair_elem.3"*
  %9 = call noundef %"struct.std::__1::__compressed_pair_elem.3"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEELi1ELb1EEC2ENS_16__value_init_tagE(%"struct.std::__1::__compressed_pair_elem.3"* noundef nonnull align 1 dereferenceable(1) %8)
  ret %"class.std::__1::__compressed_pair.1"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__compressed_pair_elem.2"* @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2ENS_16__value_init_tagE(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__value_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.2"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.2"* %0, %"struct.std::__1::__compressed_pair_elem.2"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem.2"*, %"struct.std::__1::__compressed_pair_elem.2"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", %"struct.std::__1::__compressed_pair_elem.2"* %4, i32 0, i32 0
  %6 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1Ev(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %5) #8
  ret %"struct.std::__1::__compressed_pair_elem.2"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__compressed_pair_elem.3"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEELi1ELb1EEC2ENS_16__value_init_tagE(%"struct.std::__1::__compressed_pair_elem.3"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__value_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.3"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.3"* %0, %"struct.std::__1::__compressed_pair_elem.3"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem.3"*, %"struct.std::__1::__compressed_pair_elem.3"** %3, align 8
  %5 = bitcast %"struct.std::__1::__compressed_pair_elem.3"* %4 to %"class.std::__1::allocator.4"*
  %6 = call noundef %"class.std::__1::allocator.4"* @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEES8_EEEC2Ev(%"class.std::__1::allocator.4"* noundef nonnull align 1 dereferenceable(1) %5) #8
  ret %"struct.std::__1::__compressed_pair_elem.3"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1Ev(%"class.std::__1::__tree_end_node"* noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::__tree_end_node"*, align 8
  store %"class.std::__1::__tree_end_node"* %0, %"class.std::__1::__tree_end_node"** %2, align 8
  %3 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2Ev(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %3) #8
  ret %"class.std::__1::__tree_end_node"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2Ev(%"class.std::__1::__tree_end_node"* noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::__tree_end_node"*, align 8
  store %"class.std::__1::__tree_end_node"* %0, %"class.std::__1::__tree_end_node"** %2, align 8
  %3 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %3, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"* null, %"class.std::__1::__tree_node_base"** %4, align 8
  ret %"class.std::__1::__tree_end_node"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::allocator.4"* @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEES8_EEEC2Ev(%"class.std::__1::allocator.4"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::allocator.4"*, align 8
  store %"class.std::__1::allocator.4"* %0, %"class.std::__1::allocator.4"** %2, align 8
  %3 = load %"class.std::__1::allocator.4"*, %"class.std::__1::allocator.4"** %2, align 8
  %4 = bitcast %"class.std::__1::allocator.4"* %3 to %"struct.std::__1::__non_trivial_if.5"*
  %5 = call noundef %"struct.std::__1::__non_trivial_if.5"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEEEC2Ev(%"struct.std::__1::__non_trivial_if.5"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator.4"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__non_trivial_if.5"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEEEC2Ev(%"struct.std::__1::__non_trivial_if.5"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__non_trivial_if.5"*, align 8
  store %"struct.std::__1::__non_trivial_if.5"* %0, %"struct.std::__1::__non_trivial_if.5"** %2, align 8
  %3 = load %"struct.std::__1::__non_trivial_if.5"*, %"struct.std::__1::__non_trivial_if.5"** %2, align 8
  ret %"struct.std::__1::__non_trivial_if.5"* %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.7"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEEEC2IiRKSD_EEOT_OT0_(%"class.std::__1::__compressed_pair.7"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.7"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::__1::__map_value_compare"*, align 8
  store %"class.std::__1::__compressed_pair.7"* %0, %"class.std::__1::__compressed_pair.7"** %4, align 8
  store i32* %1, i32** %5, align 8
  store %"class.std::__1::__map_value_compare"* %2, %"class.std::__1::__map_value_compare"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.7"*, %"class.std::__1::__compressed_pair.7"** %4, align 8
  %8 = bitcast %"class.std::__1::__compressed_pair.7"* %7 to %"struct.std::__1::__compressed_pair_elem.8"*
  %9 = load i32*, i32** %5, align 8
  %10 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %9) #8
  %11 = call noundef %"struct.std::__1::__compressed_pair_elem.8"* @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2IivEEOT_(%"struct.std::__1::__compressed_pair_elem.8"* noundef nonnull align 8 dereferenceable(8) %8, i32* noundef nonnull align 4 dereferenceable(4) %10)
  %12 = bitcast %"class.std::__1::__compressed_pair.7"* %7 to %"struct.std::__1::__compressed_pair_elem.9"*
  %13 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %6, align 8
  %14 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare"* @_ZNSt3__17forwardIRKNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEEEEOT_RNS_16remove_referenceISG_E4typeE(%"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %13) #8
  %15 = call noundef %"struct.std::__1::__compressed_pair_elem.9"* @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEELi1ELb1EEC2IRKSD_vEEOT_(%"struct.std::__1::__compressed_pair_elem.9"* noundef nonnull align 1 dereferenceable(1) %12, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %14)
  ret %"class.std::__1::__compressed_pair.7"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %0) #3 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem.8"* @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2IivEEOT_(%"struct.std::__1::__compressed_pair_elem.8"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.8"*, align 8
  %4 = alloca i32*, align 8
  store %"struct.std::__1::__compressed_pair_elem.8"* %0, %"struct.std::__1::__compressed_pair_elem.8"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem.8"*, %"struct.std::__1::__compressed_pair_elem.8"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.8", %"struct.std::__1::__compressed_pair_elem.8"* %5, i32 0, i32 0
  %7 = load i32*, i32** %4, align 8
  %8 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %7) #8
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %6, align 8
  ret %"struct.std::__1::__compressed_pair_elem.8"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare"* @_ZNSt3__17forwardIRKNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEEEEOT_RNS_16remove_referenceISG_E4typeE(%"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca %"class.std::__1::__map_value_compare"*, align 8
  store %"class.std::__1::__map_value_compare"* %0, %"class.std::__1::__map_value_compare"** %2, align 8
  %3 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %2, align 8
  ret %"class.std::__1::__map_value_compare"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem.9"* @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEELi1ELb1EEC2IRKSD_vEEOT_(%"struct.std::__1::__compressed_pair_elem.9"* noundef nonnull returned align 1 dereferenceable(1) %0, %"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.9"*, align 8
  %4 = alloca %"class.std::__1::__map_value_compare"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.9"* %0, %"struct.std::__1::__compressed_pair_elem.9"** %3, align 8
  store %"class.std::__1::__map_value_compare"* %1, %"class.std::__1::__map_value_compare"** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem.9"*, %"struct.std::__1::__compressed_pair_elem.9"** %3, align 8
  %6 = bitcast %"struct.std::__1::__compressed_pair_elem.9"* %5 to %"class.std::__1::__map_value_compare"*
  %7 = load %"class.std::__1::__map_value_compare"*, %"class.std::__1::__map_value_compare"** %4, align 8
  %8 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare"* @_ZNSt3__17forwardIRKNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_PvEENS_4lessIS7_EELb1EEEEEOT_RNS_16remove_referenceISG_E4typeE(%"class.std::__1::__map_value_compare"* noundef nonnull align 1 dereferenceable(1) %7) #8
  ret %"struct.std::__1::__compressed_pair_elem.9"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree_end_node"*, align 8
  store %"class.std::__1::__tree_end_node"* %0, %"class.std::__1::__tree_end_node"** %2, align 8
  %3 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__19addressofINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEEEPT_RS7_(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %3) #8
  ret %"class.std::__1::__tree_end_node"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.1"*, align 8
  store %"class.std::__1::__compressed_pair.1"* %0, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.1"*, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.1"* %3 to %"struct.std::__1::__compressed_pair_elem.2"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::__tree_end_node"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__19addressofINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEEEPT_RS7_(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca %"class.std::__1::__tree_end_node"*, align 8
  store %"class.std::__1::__tree_end_node"* %0, %"class.std::__1::__tree_end_node"** %2, align 8
  %3 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %2, align 8
  ret %"class.std::__1::__tree_end_node"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.2"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.2"* %0, %"struct.std::__1::__compressed_pair_elem.2"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.2"*, %"struct.std::__1::__compressed_pair_elem.2"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", %"struct.std::__1::__compressed_pair_elem.2"* %3, i32 0, i32 0
  ret %"class.std::__1::__tree_end_node"* %4
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjEC2Ev(%"class.rlbox::app_pointer_map"* noundef nonnull returned align 8 dereferenceable(28) %0) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.rlbox::app_pointer_map"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %"class.rlbox::app_pointer_map"* %0, %"class.rlbox::app_pointer_map"** %2, align 8
  %6 = load %"class.rlbox::app_pointer_map"*, %"class.rlbox::app_pointer_map"** %2, align 8
  %7 = getelementptr inbounds %"class.rlbox::app_pointer_map", %"class.rlbox::app_pointer_map"* %6, i32 0, i32 0
  %8 = call noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEEC1Ev(%"class.std::__1::map.10"* noundef nonnull align 8 dereferenceable(24) %7) #8
  %9 = getelementptr inbounds %"class.rlbox::app_pointer_map", %"class.rlbox::app_pointer_map"* %6, i32 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %"class.rlbox::app_pointer_map", %"class.rlbox::app_pointer_map"* %6, i32 0, i32 0
  store i32 0, i32* %3, align 4
  %11 = invoke noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEEixEOj(%"class.std::__1::map.10"* noundef nonnull align 8 dereferenceable(24) %10, i32* noundef nonnull align 4 dereferenceable(4) %3)
          to label %12 unwind label %13

12:                                               ; preds = %1
  store i8* null, i8** %11, align 8
  ret %"class.rlbox::app_pointer_map"* %6

13:                                               ; preds = %1
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %4, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %5, align 4
  %17 = call noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEED1Ev(%"class.std::__1::map.10"* noundef nonnull align 8 dereferenceable(24) %7) #8
  br label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEEC1Ev(%"class.std::__1::map.10"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map.10"*, align 8
  store %"class.std::__1::map.10"* %0, %"class.std::__1::map.10"** %2, align 8
  %3 = load %"class.std::__1::map.10"*, %"class.std::__1::map.10"** %2, align 8
  %4 = call noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEEC2Ev(%"class.std::__1::map.10"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::map.10"* %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEEixEOj(%"class.std::__1::map.10"* noundef nonnull align 8 dereferenceable(24) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 {
  %3 = alloca %"class.std::__1::map.10"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::__1::pair.33", align 8
  %6 = alloca %"class.std::__1::tuple", align 8
  %7 = alloca %"class.std::__1::tuple.34", align 1
  %8 = alloca %"class.std::__1::tuple.34", align 1
  store %"class.std::__1::map.10"* %0, %"class.std::__1::map.10"** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %"class.std::__1::map.10"*, %"class.std::__1::map.10"** %3, align 8
  %10 = getelementptr inbounds %"class.std::__1::map.10", %"class.std::__1::map.10"* %9, i32 0, i32 0
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__14moveIRjEEONS_16remove_referenceIT_E4typeEOS3_(i32* noundef nonnull align 4 dereferenceable(4) %12) #8
  %14 = call i64 @_ZNSt3__116forward_as_tupleIJjEEENS_5tupleIJDpOT_EEES4_(i32* noundef nonnull align 4 dereferenceable(4) %13) #8
  %15 = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %6, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::__1::__tuple_impl", %"struct.std::__1::__tuple_impl"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %16, i32 0, i32 0
  %18 = inttoptr i64 %14 to i32*
  store i32* %18, i32** %17, align 8
  call void @_ZNSt3__116forward_as_tupleIJEEENS_5tupleIJDpOT_EEES4_() #8
  %19 = call [2 x i64] @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_S2_EElEEbEERKT_DpOT0_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %10, i32* noundef nonnull align 4 dereferenceable(4) %11, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) @_ZNSt3__1L19piecewise_constructE, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %7)
  %20 = bitcast %"struct.std::__1::pair.33"* %5 to [2 x i64]*
  store [2 x i64] %19, [2 x i64]* %20, align 8
  %21 = getelementptr inbounds %"struct.std::__1::pair.33", %"struct.std::__1::pair.33"* %5, i32 0, i32 0
  %22 = call noundef %"struct.std::__1::__value_type"* @_ZNKSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElEptEv(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %21)
  %23 = call noundef nonnull align 8 dereferenceable(16) %"struct.std::__1::pair"* @_ZNSt3__112__value_typeIjPvE11__get_valueEv(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %22)
  %24 = getelementptr inbounds %"struct.std::__1::pair", %"struct.std::__1::pair"* %23, i32 0, i32 1
  ret i8** %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEED1Ev(%"class.std::__1::map.10"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map.10"*, align 8
  store %"class.std::__1::map.10"* %0, %"class.std::__1::map.10"** %2, align 8
  %3 = load %"class.std::__1::map.10"*, %"class.std::__1::map.10"** %2, align 8
  %4 = call noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEED2Ev(%"class.std::__1::map.10"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::map.10"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEEC2Ev(%"class.std::__1::map.10"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map.10"*, align 8
  %3 = alloca %"class.std::__1::__map_value_compare.19", align 1
  %4 = alloca %"struct.std::__1::less.20", align 1
  store %"class.std::__1::map.10"* %0, %"class.std::__1::map.10"** %2, align 8
  %5 = load %"class.std::__1::map.10"*, %"class.std::__1::map.10"** %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::map.10", %"class.std::__1::map.10"* %5, i32 0, i32 0
  %7 = call noundef %"class.std::__1::__map_value_compare.19"* @_ZNSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEC1ES5_(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %3) #8
  %8 = call noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEEC1ERKS7_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %3) #8
  ret %"class.std::__1::map.10"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__map_value_compare.19"* @_ZNSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEC1ES5_(%"class.std::__1::__map_value_compare.19"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::less.20", align 1
  %3 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  store %"class.std::__1::__map_value_compare.19"* %0, %"class.std::__1::__map_value_compare.19"** %3, align 8
  %4 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %3, align 8
  %5 = call noundef %"class.std::__1::__map_value_compare.19"* @_ZNSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEC2ES5_(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::__map_value_compare.19"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEEC1ERKS7_(%"class.std::__1::__tree.11"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__tree.11"*, align 8
  %4 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %3, align 8
  store %"class.std::__1::__map_value_compare.19"* %1, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %5 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %3, align 8
  %6 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %7 = call noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEEC2ERKS7_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %5, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %6) #8
  ret %"class.std::__1::__tree.11"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__map_value_compare.19"* @_ZNSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEC2ES5_(%"class.std::__1::__map_value_compare.19"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::less.20", align 1
  %3 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  store %"class.std::__1::__map_value_compare.19"* %0, %"class.std::__1::__map_value_compare.19"** %3, align 8
  %4 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %3, align 8
  %5 = bitcast %"class.std::__1::__map_value_compare.19"* %4 to %"struct.std::__1::less.20"*
  ret %"class.std::__1::__map_value_compare.19"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEEC2ERKS7_(%"class.std::__1::__tree.11"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__tree.11"*, align 8
  %4 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  %5 = alloca i32, align 4
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %3, align 8
  store %"class.std::__1::__map_value_compare.19"* %1, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %6 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %6, i32 0, i32 1
  %8 = invoke noundef %"class.std::__1::__compressed_pair.12"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEEC1ILb1EvEEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %7)
          to label %9 unwind label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %6, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %11 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %12 = invoke noundef %"class.std::__1::__compressed_pair.17"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEEC1IiRKS7_EEOT_OT0_(%"class.std::__1::__compressed_pair.17"* noundef nonnull align 8 dereferenceable(8) %10, i32* noundef nonnull align 4 dereferenceable(4) %5, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %11)
          to label %13 unwind label %16

13:                                               ; preds = %9
  %14 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__end_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %6) #8
  %15 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"** @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__begin_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %6) #8
  store %"class.std::__1::__tree_end_node"* %14, %"class.std::__1::__tree_end_node"** %15, align 8
  ret %"class.std::__1::__tree.11"* %6

16:                                               ; preds = %9, %2
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #17
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.12"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEEC1ILb1EvEEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.12"*, align 8
  store %"class.std::__1::__compressed_pair.12"* %0, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.12"*, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %4 = call noundef %"class.std::__1::__compressed_pair.12"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEEC2ILb1EvEEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %3)
  ret %"class.std::__1::__compressed_pair.12"* %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.17"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEEC1IiRKS7_EEOT_OT0_(%"class.std::__1::__compressed_pair.17"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.17"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  store %"class.std::__1::__compressed_pair.17"* %0, %"class.std::__1::__compressed_pair.17"** %4, align 8
  store i32* %1, i32** %5, align 8
  store %"class.std::__1::__map_value_compare.19"* %2, %"class.std::__1::__map_value_compare.19"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.17"*, %"class.std::__1::__compressed_pair.17"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %6, align 8
  %10 = call noundef %"class.std::__1::__compressed_pair.17"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEEC2IiRKS7_EEOT_OT0_(%"class.std::__1::__compressed_pair.17"* noundef nonnull align 8 dereferenceable(8) %7, i32* noundef nonnull align 4 dereferenceable(4) %8, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %9)
  ret %"class.std::__1::__compressed_pair.17"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__end_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %4) #8
  %6 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %5) #8
  ret %"class.std::__1::__tree_end_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"** @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__begin_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %3, i32 0, i32 0
  ret %"class.std::__1::__tree_end_node"** %4
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.12"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEEC2ILb1EvEEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.12"*, align 8
  %3 = alloca %"struct.std::__1::__value_init_tag", align 1
  %4 = alloca %"struct.std::__1::__value_init_tag", align 1
  store %"class.std::__1::__compressed_pair.12"* %0, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %5 = load %"class.std::__1::__compressed_pair.12"*, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %6 = bitcast %"class.std::__1::__compressed_pair.12"* %5 to %"struct.std::__1::__compressed_pair_elem.2"*
  %7 = call noundef %"struct.std::__1::__compressed_pair_elem.2"* @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2ENS_16__value_init_tagE(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %6)
  %8 = bitcast %"class.std::__1::__compressed_pair.12"* %5 to %"struct.std::__1::__compressed_pair_elem.13"*
  %9 = call noundef %"struct.std::__1::__compressed_pair_elem.13"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEELi1ELb1EEC2ENS_16__value_init_tagE(%"struct.std::__1::__compressed_pair_elem.13"* noundef nonnull align 1 dereferenceable(1) %8)
  ret %"class.std::__1::__compressed_pair.12"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__compressed_pair_elem.13"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEELi1ELb1EEC2ENS_16__value_init_tagE(%"struct.std::__1::__compressed_pair_elem.13"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__value_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.13"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.13"* %0, %"struct.std::__1::__compressed_pair_elem.13"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem.13"*, %"struct.std::__1::__compressed_pair_elem.13"** %3, align 8
  %5 = bitcast %"struct.std::__1::__compressed_pair_elem.13"* %4 to %"class.std::__1::allocator.14"*
  %6 = call noundef %"class.std::__1::allocator.14"* @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEEC2Ev(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %5) #8
  ret %"struct.std::__1::__compressed_pair_elem.13"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::allocator.14"* @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEEC2Ev(%"class.std::__1::allocator.14"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::allocator.14"*, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %2, align 8
  %3 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %2, align 8
  %4 = bitcast %"class.std::__1::allocator.14"* %3 to %"struct.std::__1::__non_trivial_if.15"*
  %5 = call noundef %"struct.std::__1::__non_trivial_if.15"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEC2Ev(%"struct.std::__1::__non_trivial_if.15"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator.14"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__non_trivial_if.15"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEC2Ev(%"struct.std::__1::__non_trivial_if.15"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__non_trivial_if.15"*, align 8
  store %"struct.std::__1::__non_trivial_if.15"* %0, %"struct.std::__1::__non_trivial_if.15"** %2, align 8
  %3 = load %"struct.std::__1::__non_trivial_if.15"*, %"struct.std::__1::__non_trivial_if.15"** %2, align 8
  ret %"struct.std::__1::__non_trivial_if.15"* %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.17"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEEC2IiRKS7_EEOT_OT0_(%"class.std::__1::__compressed_pair.17"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.17"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  store %"class.std::__1::__compressed_pair.17"* %0, %"class.std::__1::__compressed_pair.17"** %4, align 8
  store i32* %1, i32** %5, align 8
  store %"class.std::__1::__map_value_compare.19"* %2, %"class.std::__1::__map_value_compare.19"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.17"*, %"class.std::__1::__compressed_pair.17"** %4, align 8
  %8 = bitcast %"class.std::__1::__compressed_pair.17"* %7 to %"struct.std::__1::__compressed_pair_elem.8"*
  %9 = load i32*, i32** %5, align 8
  %10 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %9) #8
  %11 = call noundef %"struct.std::__1::__compressed_pair_elem.8"* @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2IivEEOT_(%"struct.std::__1::__compressed_pair_elem.8"* noundef nonnull align 8 dereferenceable(8) %8, i32* noundef nonnull align 4 dereferenceable(4) %10)
  %12 = bitcast %"class.std::__1::__compressed_pair.17"* %7 to %"struct.std::__1::__compressed_pair_elem.18"*
  %13 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %6, align 8
  %14 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__17forwardIRKNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEEEOT_RNS_16remove_referenceISA_E4typeE(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %13) #8
  %15 = call noundef %"struct.std::__1::__compressed_pair_elem.18"* @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEELi1ELb1EEC2IRKS7_vEEOT_(%"struct.std::__1::__compressed_pair_elem.18"* noundef nonnull align 1 dereferenceable(1) %12, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %14)
  ret %"class.std::__1::__compressed_pair.17"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__17forwardIRKNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEEEOT_RNS_16remove_referenceISA_E4typeE(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  store %"class.std::__1::__map_value_compare.19"* %0, %"class.std::__1::__map_value_compare.19"** %2, align 8
  %3 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %2, align 8
  ret %"class.std::__1::__map_value_compare.19"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem.18"* @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEELi1ELb1EEC2IRKS7_vEEOT_(%"struct.std::__1::__compressed_pair_elem.18"* noundef nonnull returned align 1 dereferenceable(1) %0, %"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.18"*, align 8
  %4 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.18"* %0, %"struct.std::__1::__compressed_pair_elem.18"** %3, align 8
  store %"class.std::__1::__map_value_compare.19"* %1, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem.18"*, %"struct.std::__1::__compressed_pair_elem.18"** %3, align 8
  %6 = bitcast %"struct.std::__1::__compressed_pair_elem.18"* %5 to %"class.std::__1::__map_value_compare.19"*
  %7 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %8 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__17forwardIRKNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEEEOT_RNS_16remove_referenceISA_E4typeE(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %7) #8
  ret %"struct.std::__1::__compressed_pair_elem.18"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.12"*, align 8
  store %"class.std::__1::__compressed_pair.12"* %0, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.12"*, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.12"* %3 to %"struct.std::__1::__compressed_pair_elem.2"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::__tree_end_node"* %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr [2 x i64] @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSF_IJEEEEEENS_4pairINS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_S2_EElEEbEERKT_DpOT0_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %2, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %3, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %4) #0 align 2 {
  %6 = alloca %"struct.std::__1::pair.33", align 8
  %7 = alloca %"class.std::__1::__tree.11"*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %"struct.std::__1::piecewise_construct_t"*, align 8
  %10 = alloca %"class.std::__1::tuple"*, align 8
  %11 = alloca %"class.std::__1::tuple.34"*, align 8
  %12 = alloca %"class.std::__1::__tree_end_node"*, align 8
  %13 = alloca %"class.std::__1::__tree_node_base"**, align 8
  %14 = alloca %"class.std::__1::__tree_node"*, align 8
  %15 = alloca i8, align 1
  %16 = alloca %"class.std::__1::unique_ptr", align 8
  %17 = alloca %"class.std::__1::__tree_iterator", align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %7, align 8
  store i32* %1, i32** %8, align 8
  store %"struct.std::__1::piecewise_construct_t"* %2, %"struct.std::__1::piecewise_construct_t"** %9, align 8
  store %"class.std::__1::tuple"* %3, %"class.std::__1::tuple"** %10, align 8
  store %"class.std::__1::tuple.34"* %4, %"class.std::__1::tuple.34"** %11, align 8
  %18 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node_base"** @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__find_equalIjEERPNS_16__tree_node_baseIS2_EERPNS_15__tree_end_nodeISE_EERKT_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %18, %"class.std::__1::__tree_end_node"** noundef nonnull align 8 dereferenceable(8) %12, i32* noundef nonnull align 4 dereferenceable(4) %19)
  store %"class.std::__1::__tree_node_base"** %20, %"class.std::__1::__tree_node_base"*** %13, align 8
  %21 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %13, align 8
  %22 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %21, align 8
  %23 = bitcast %"class.std::__1::__tree_node_base"* %22 to %"class.std::__1::__tree_node"*
  store %"class.std::__1::__tree_node"* %23, %"class.std::__1::__tree_node"** %14, align 8
  store i8 0, i8* %15, align 1
  %24 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %13, align 8
  %25 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %24, align 8
  %26 = icmp eq %"class.std::__1::__tree_node_base"* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load %"struct.std::__1::piecewise_construct_t"*, %"struct.std::__1::piecewise_construct_t"** %9, align 8
  %29 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::piecewise_construct_t"* @_ZNSt3__17forwardIRKNS_21piecewise_construct_tEEEOT_RNS_16remove_referenceIS4_E4typeE(%"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %28) #8
  %30 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %10, align 8
  %31 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::tuple"* @_ZNSt3__17forwardINS_5tupleIJOjEEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %30) #8
  %32 = load %"class.std::__1::tuple.34"*, %"class.std::__1::tuple.34"** %11, align 8
  %33 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::tuple.34"* @_ZNSt3__17forwardINS_5tupleIJEEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %32) #8
  call void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSF_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS3_S2_EENS_22__tree_node_destructorINS8_ISL_EEEEEEDpOT_(%"class.std::__1::unique_ptr"* sret(%"class.std::__1::unique_ptr") align 8 %16, %"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %18, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %29, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %31, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %33)
  %34 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %12, align 8
  %35 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %13, align 8
  %36 = call noundef %"class.std::__1::__tree_node"* @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE3getEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %16) #8
  %37 = bitcast %"class.std::__1::__tree_node"* %36 to %"class.std::__1::__tree_node_base"*
  call void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS2_EEEERSE_SE_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %18, %"class.std::__1::__tree_end_node"* noundef %34, %"class.std::__1::__tree_node_base"** noundef nonnull align 8 dereferenceable(8) %35, %"class.std::__1::__tree_node_base"* noundef %37) #8
  %38 = call noundef %"class.std::__1::__tree_node"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE7releaseEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %16) #8
  store %"class.std::__1::__tree_node"* %38, %"class.std::__1::__tree_node"** %14, align 8
  store i8 1, i8* %15, align 1
  %39 = call noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1Ev(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %16) #8
  br label %40

40:                                               ; preds = %27, %5
  %41 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %14, align 8
  %42 = call noundef %"class.std::__1::__tree_iterator"* @_ZNSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElEC1ES6_(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %17, %"class.std::__1::__tree_node"* noundef %41) #8
  %43 = call noundef %"struct.std::__1::pair.33"* @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS4_S3_EElEEbEC1IS8_RbLS3_0EEEOT_OT0_(%"struct.std::__1::pair.33"* noundef nonnull align 8 dereferenceable(9) %6, %"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %17, i8* noundef nonnull align 1 dereferenceable(1) %15) #8
  %44 = bitcast %"struct.std::__1::pair.33"* %6 to [2 x i64]*
  %45 = load [2 x i64], [2 x i64]* %44, align 8
  ret [2 x i64] %45
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116forward_as_tupleIJjEEENS_5tupleIJDpOT_EEES4_(i32* noundef nonnull align 4 dereferenceable(4) %0) #3 {
  %2 = alloca %"class.std::__1::tuple", align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIjEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %4) #8
  %6 = call noundef %"class.std::__1::tuple"* @_ZNSt3__15tupleIJOjEEC1IJjELi0EEEDpOT_(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %2, i32* noundef nonnull align 4 dereferenceable(4) %5) #8
  %7 = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %2, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__1::__tuple_impl", %"struct.std::__1::__tuple_impl"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = ptrtoint i32* %10 to i64
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__14moveIRjEEONS_16remove_referenceIT_E4typeEOS3_(i32* noundef nonnull align 4 dereferenceable(4) %0) #3 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116forward_as_tupleIJEEENS_5tupleIJDpOT_EEES4_() #3 {
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__value_type"* @_ZNKSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElEptEv(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #0 align 2 {
  %2 = alloca %"class.std::__1::__tree_iterator"*, align 8
  store %"class.std::__1::__tree_iterator"* %0, %"class.std::__1::__tree_iterator"** %2, align 8
  %3 = load %"class.std::__1::__tree_iterator"*, %"class.std::__1::__tree_iterator"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_node"* @_ZNKSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElE8__get_npEv(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %3)
  %5 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %4, i32 0, i32 1
  %6 = call noundef %"struct.std::__1::__value_type"* @_ZNSt3__114pointer_traitsIPNS_12__value_typeIjPvEEE10pointer_toERS3_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %5) #8
  ret %"struct.std::__1::__value_type"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) %"struct.std::__1::pair"* @_ZNSt3__112__value_typeIjPvE11__get_valueEv(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__value_type"*, align 8
  store %"struct.std::__1::__value_type"* %0, %"struct.std::__1::__value_type"** %2, align 8
  %3 = load %"struct.std::__1::__value_type"*, %"struct.std::__1::__value_type"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__value_type", %"struct.std::__1::__value_type"* %3, i32 0, i32 0
  %5 = call noundef %"struct.std::__1::pair"* @_ZNSt3__19addressofINS_4pairIKjPvEEEEPT_RS5_(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %4) #8
  %6 = call noundef %"struct.std::__1::pair"* @_ZNSt3__17launderINS_4pairIKjPvEEEEPT_S6_(%"struct.std::__1::pair"* noundef %5) #8
  ret %"struct.std::__1::pair"* %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node_base"** @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__find_equalIjEERPNS_16__tree_node_baseIS2_EERPNS_15__tree_end_nodeISE_EERKT_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::__1::__tree_end_node"** noundef nonnull align 8 dereferenceable(8) %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #0 align 2 {
  %4 = alloca %"class.std::__1::__tree_node_base"**, align 8
  %5 = alloca %"class.std::__1::__tree.11"*, align 8
  %6 = alloca %"class.std::__1::__tree_end_node"**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::__1::__tree_node"*, align 8
  %9 = alloca %"class.std::__1::__tree_node_base"**, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %5, align 8
  store %"class.std::__1::__tree_end_node"** %1, %"class.std::__1::__tree_end_node"*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %5, align 8
  %11 = call noundef %"class.std::__1::__tree_node"* @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE6__rootEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %10) #8
  store %"class.std::__1::__tree_node"* %11, %"class.std::__1::__tree_node"** %8, align 8
  %12 = call noundef %"class.std::__1::__tree_node_base"** @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__root_ptrEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %10) #8
  store %"class.std::__1::__tree_node_base"** %12, %"class.std::__1::__tree_node_base"*** %9, align 8
  %13 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %14 = icmp ne %"class.std::__1::__tree_node"* %13, null
  br i1 %14, label %15, label %83

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %82
  %17 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10value_compEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %10) #8
  %18 = load i32*, i32** %7, align 8
  %19 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %20 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %19, i32 0, i32 1
  %21 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEclERKjRKS3_(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %17, i32* noundef nonnull align 4 dereferenceable(4) %18, %"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %20)
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %24 = bitcast %"class.std::__1::__tree_node"* %23 to %"class.std::__1::__tree_end_node"*
  %25 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %24, i32 0, i32 0
  %26 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %25, align 8
  %27 = icmp ne %"class.std::__1::__tree_node_base"* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %30 = bitcast %"class.std::__1::__tree_node"* %29 to %"class.std::__1::__tree_end_node"*
  %31 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %30, i32 0, i32 0
  %32 = call noundef %"class.std::__1::__tree_node_base"** @_ZNSt3__19addressofIPNS_16__tree_node_baseIPvEEEEPT_RS5_(%"class.std::__1::__tree_node_base"** noundef nonnull align 8 dereferenceable(8) %31) #8
  store %"class.std::__1::__tree_node_base"** %32, %"class.std::__1::__tree_node_base"*** %9, align 8
  %33 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %34 = bitcast %"class.std::__1::__tree_node"* %33 to %"class.std::__1::__tree_end_node"*
  %35 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %34, i32 0, i32 0
  %36 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %35, align 8
  %37 = bitcast %"class.std::__1::__tree_node_base"* %36 to %"class.std::__1::__tree_node"*
  store %"class.std::__1::__tree_node"* %37, %"class.std::__1::__tree_node"** %8, align 8
  br label %45

38:                                               ; preds = %22
  %39 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %40 = bitcast %"class.std::__1::__tree_node"* %39 to %"class.std::__1::__tree_end_node"*
  %41 = load %"class.std::__1::__tree_end_node"**, %"class.std::__1::__tree_end_node"*** %6, align 8
  store %"class.std::__1::__tree_end_node"* %40, %"class.std::__1::__tree_end_node"** %41, align 8
  %42 = load %"class.std::__1::__tree_end_node"**, %"class.std::__1::__tree_end_node"*** %6, align 8
  %43 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %42, align 8
  %44 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %43, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"** %44, %"class.std::__1::__tree_node_base"*** %4, align 8
  br label %89

45:                                               ; preds = %28
  br label %82

46:                                               ; preds = %16
  %47 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10value_compEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %10) #8
  %48 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %49 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %48, i32 0, i32 1
  %50 = load i32*, i32** %7, align 8
  %51 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEclERKS3_RKj(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %47, %"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %49, i32* noundef nonnull align 4 dereferenceable(4) %50)
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %54 = bitcast %"class.std::__1::__tree_node"* %53 to %"class.std::__1::__tree_node_base"*
  %55 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %54, i32 0, i32 1
  %56 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %55, align 8
  %57 = icmp ne %"class.std::__1::__tree_node_base"* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %60 = bitcast %"class.std::__1::__tree_node"* %59 to %"class.std::__1::__tree_node_base"*
  %61 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %60, i32 0, i32 1
  %62 = call noundef %"class.std::__1::__tree_node_base"** @_ZNSt3__19addressofIPNS_16__tree_node_baseIPvEEEEPT_RS5_(%"class.std::__1::__tree_node_base"** noundef nonnull align 8 dereferenceable(8) %61) #8
  store %"class.std::__1::__tree_node_base"** %62, %"class.std::__1::__tree_node_base"*** %9, align 8
  %63 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %64 = bitcast %"class.std::__1::__tree_node"* %63 to %"class.std::__1::__tree_node_base"*
  %65 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %64, i32 0, i32 1
  %66 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %65, align 8
  %67 = bitcast %"class.std::__1::__tree_node_base"* %66 to %"class.std::__1::__tree_node"*
  store %"class.std::__1::__tree_node"* %67, %"class.std::__1::__tree_node"** %8, align 8
  br label %75

68:                                               ; preds = %52
  %69 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %70 = bitcast %"class.std::__1::__tree_node"* %69 to %"class.std::__1::__tree_end_node"*
  %71 = load %"class.std::__1::__tree_end_node"**, %"class.std::__1::__tree_end_node"*** %6, align 8
  store %"class.std::__1::__tree_end_node"* %70, %"class.std::__1::__tree_end_node"** %71, align 8
  %72 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %73 = bitcast %"class.std::__1::__tree_node"* %72 to %"class.std::__1::__tree_node_base"*
  %74 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %73, i32 0, i32 1
  store %"class.std::__1::__tree_node_base"** %74, %"class.std::__1::__tree_node_base"*** %4, align 8
  br label %89

75:                                               ; preds = %58
  br label %81

76:                                               ; preds = %46
  %77 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  %78 = bitcast %"class.std::__1::__tree_node"* %77 to %"class.std::__1::__tree_end_node"*
  %79 = load %"class.std::__1::__tree_end_node"**, %"class.std::__1::__tree_end_node"*** %6, align 8
  store %"class.std::__1::__tree_end_node"* %78, %"class.std::__1::__tree_end_node"** %79, align 8
  %80 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %9, align 8
  store %"class.std::__1::__tree_node_base"** %80, %"class.std::__1::__tree_node_base"*** %4, align 8
  br label %89

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %45
  br label %16, !llvm.loop !9

83:                                               ; preds = %3
  %84 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__end_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %10) #8
  %85 = load %"class.std::__1::__tree_end_node"**, %"class.std::__1::__tree_end_node"*** %6, align 8
  store %"class.std::__1::__tree_end_node"* %84, %"class.std::__1::__tree_end_node"** %85, align 8
  %86 = load %"class.std::__1::__tree_end_node"**, %"class.std::__1::__tree_end_node"*** %6, align 8
  %87 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %86, align 8
  %88 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %87, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"** %88, %"class.std::__1::__tree_node_base"*** %4, align 8
  br label %89

89:                                               ; preds = %83, %76, %68, %38
  %90 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %4, align 8
  ret %"class.std::__1::__tree_node_base"** %90
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSF_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS3_S2_EENS_22__tree_node_destructorINS8_ISL_EEEEEEDpOT_(%"class.std::__1::unique_ptr"* noalias sret(%"class.std::__1::unique_ptr") align 8 %0, %"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %1, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %2, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %3, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %4) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca i8*, align 8
  %7 = alloca %"class.std::__1::__tree.11"*, align 8
  %8 = alloca %"struct.std::__1::piecewise_construct_t"*, align 8
  %9 = alloca %"class.std::__1::tuple"*, align 8
  %10 = alloca %"class.std::__1::tuple.34"*, align 8
  %11 = alloca %"class.std::__1::allocator.14"*, align 8
  %12 = alloca i1, align 1
  %13 = alloca %"class.std::__1::__tree_node_destructor", align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = bitcast %"class.std::__1::unique_ptr"* %0 to i8*
  store i8* %16, i8** %6, align 8
  store %"class.std::__1::__tree.11"* %1, %"class.std::__1::__tree.11"** %7, align 8
  store %"struct.std::__1::piecewise_construct_t"* %2, %"struct.std::__1::piecewise_construct_t"** %8, align 8
  store %"class.std::__1::tuple"* %3, %"class.std::__1::tuple"** %9, align 8
  store %"class.std::__1::tuple.34"* %4, %"class.std::__1::tuple.34"** %10, align 8
  %17 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %7, align 8
  %18 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.14"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__node_allocEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %17) #8
  store %"class.std::__1::allocator.14"* %18, %"class.std::__1::allocator.14"** %11, align 8
  store i1 false, i1* %12, align 1
  %19 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %11, align 8
  %20 = call noundef %"class.std::__1::__tree_node"* @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE8allocateERS7_m(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %19, i64 noundef 1)
  %21 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %11, align 8
  %22 = call noundef %"class.std::__1::__tree_node_destructor"* @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEC1ERS7_b(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %13, %"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %21, i1 noundef zeroext false) #8
  %23 = call noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node"* noundef %20, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %13) #8
  %24 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %11, align 8
  %25 = call noundef %"class.std::__1::__tree_node"* @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEptEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #8
  %26 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %25, i32 0, i32 1
  %27 = invoke noundef %"struct.std::__1::pair"* @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIjPvEEE9__get_ptrERS3_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %26)
          to label %28 unwind label %39

28:                                               ; preds = %5
  %29 = load %"struct.std::__1::piecewise_construct_t"*, %"struct.std::__1::piecewise_construct_t"** %8, align 8
  %30 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::piecewise_construct_t"* @_ZNSt3__17forwardIRKNS_21piecewise_construct_tEEEOT_RNS_16remove_referenceIS4_E4typeE(%"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %29) #8
  %31 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %9, align 8
  %32 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::tuple"* @_ZNSt3__17forwardINS_5tupleIJOjEEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %31) #8
  %33 = load %"class.std::__1::tuple.34"*, %"class.std::__1::tuple.34"** %10, align 8
  %34 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::tuple.34"* @_ZNSt3__17forwardINS_5tupleIJEEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %33) #8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE9constructINS_4pairIKjS4_EEJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSG_IJEEEEvEEvRS7_PT_DpOT0_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %24, %"struct.std::__1::pair"* noundef %27, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %30, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %32, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %34)
          to label %35 unwind label %39

35:                                               ; preds = %28
  %36 = call noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE11get_deleterEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #8
  %37 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", %"class.std::__1::__tree_node_destructor"* %36, i32 0, i32 1
  store i8 1, i8* %37, align 8
  store i1 true, i1* %12, align 1
  %38 = load i1, i1* %12, align 1
  br i1 %38, label %46, label %44

39:                                               ; preds = %28, %5
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %14, align 8
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %15, align 4
  %43 = call noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1Ev(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #8
  br label %47

44:                                               ; preds = %35
  %45 = call noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1Ev(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #8
  br label %46

46:                                               ; preds = %44, %35
  ret void

47:                                               ; preds = %39
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = insertvalue { i8*, i32 } undef, i8* %48, 0
  %51 = insertvalue { i8*, i32 } %50, i32 %49, 1
  resume { i8*, i32 } %51
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::piecewise_construct_t"* @_ZNSt3__17forwardIRKNS_21piecewise_construct_tEEEOT_RNS_16remove_referenceIS4_E4typeE(%"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca %"struct.std::__1::piecewise_construct_t"*, align 8
  store %"struct.std::__1::piecewise_construct_t"* %0, %"struct.std::__1::piecewise_construct_t"** %2, align 8
  %3 = load %"struct.std::__1::piecewise_construct_t"*, %"struct.std::__1::piecewise_construct_t"** %2, align 8
  ret %"struct.std::__1::piecewise_construct_t"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::tuple"* @_ZNSt3__17forwardINS_5tupleIJOjEEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %0, %"class.std::__1::tuple"** %2, align 8
  %3 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %2, align 8
  ret %"class.std::__1::tuple"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::tuple.34"* @_ZNSt3__17forwardINS_5tupleIJEEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca %"class.std::__1::tuple.34"*, align 8
  store %"class.std::__1::tuple.34"* %0, %"class.std::__1::tuple.34"** %2, align 8
  %3 = load %"class.std::__1::tuple.34"*, %"class.std::__1::tuple.34"** %2, align 8
  ret %"class.std::__1::tuple.34"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS2_EEEERSE_SE_(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::__1::__tree_end_node"* noundef %1, %"class.std::__1::__tree_node_base"** noundef nonnull align 8 dereferenceable(8) %2, %"class.std::__1::__tree_node_base"* noundef %3) #3 align 2 {
  %5 = alloca %"class.std::__1::__tree.11"*, align 8
  %6 = alloca %"class.std::__1::__tree_end_node"*, align 8
  %7 = alloca %"class.std::__1::__tree_node_base"**, align 8
  %8 = alloca %"class.std::__1::__tree_node_base"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %5, align 8
  store %"class.std::__1::__tree_end_node"* %1, %"class.std::__1::__tree_end_node"** %6, align 8
  store %"class.std::__1::__tree_node_base"** %2, %"class.std::__1::__tree_node_base"*** %7, align 8
  store %"class.std::__1::__tree_node_base"* %3, %"class.std::__1::__tree_node_base"** %8, align 8
  %9 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %5, align 8
  %10 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %8, align 8
  %11 = bitcast %"class.std::__1::__tree_node_base"* %10 to %"class.std::__1::__tree_end_node"*
  %12 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %11, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"* null, %"class.std::__1::__tree_node_base"** %12, align 8
  %13 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %8, align 8
  %14 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %13, i32 0, i32 1
  store %"class.std::__1::__tree_node_base"* null, %"class.std::__1::__tree_node_base"** %14, align 8
  %15 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %6, align 8
  %16 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %8, align 8
  %17 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %16, i32 0, i32 2
  store %"class.std::__1::__tree_end_node"* %15, %"class.std::__1::__tree_end_node"** %17, align 8
  %18 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %8, align 8
  %19 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %7, align 8
  store %"class.std::__1::__tree_node_base"* %18, %"class.std::__1::__tree_node_base"** %19, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"** @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__begin_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %9) #8
  %21 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %20, align 8
  %22 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %21, i32 0, i32 0
  %23 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %22, align 8
  %24 = icmp ne %"class.std::__1::__tree_node_base"* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"** @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__begin_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %9) #8
  %27 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %26, align 8
  %28 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %27, i32 0, i32 0
  %29 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %28, align 8
  %30 = bitcast %"class.std::__1::__tree_node_base"* %29 to %"class.std::__1::__tree_end_node"*
  %31 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"** @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__begin_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %9) #8
  store %"class.std::__1::__tree_end_node"* %30, %"class.std::__1::__tree_end_node"** %31, align 8
  br label %32

32:                                               ; preds = %25, %4
  %33 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__end_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %9) #8
  %34 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %33, i32 0, i32 0
  %35 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %34, align 8
  %36 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %7, align 8
  %37 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %36, align 8
  call void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(%"class.std::__1::__tree_node_base"* noundef %35, %"class.std::__1::__tree_node_base"* noundef %37) #8
  %38 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE4sizeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %9) #8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node"* @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE3getEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::unique_ptr"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %2, align 8
  %3 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %6 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8
  ret %"class.std::__1::__tree_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE7releaseEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::unique_ptr"*, align 8
  %3 = alloca %"class.std::__1::__tree_node"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %2, align 8
  %4 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %2, align 8
  %5 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %4, i32 0, i32 0
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %7 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %6, align 8
  store %"class.std::__1::__tree_node"* %7, %"class.std::__1::__tree_node"** %3, align 8
  %8 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %4, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %8) #8
  store %"class.std::__1::__tree_node"* null, %"class.std::__1::__tree_node"** %9, align 8
  %10 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %3, align 8
  ret %"class.std::__1::__tree_node"* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1Ev(%"class.std::__1::unique_ptr"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::unique_ptr"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %2, align 8
  %3 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %2, align 8
  %4 = call noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2Ev(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::unique_ptr"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_iterator"* @_ZNSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElEC1ES6_(%"class.std::__1::__tree_iterator"* noundef nonnull returned align 8 dereferenceable(8) %0, %"class.std::__1::__tree_node"* noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__tree_iterator"*, align 8
  %4 = alloca %"class.std::__1::__tree_node"*, align 8
  store %"class.std::__1::__tree_iterator"* %0, %"class.std::__1::__tree_iterator"** %3, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %4, align 8
  %5 = load %"class.std::__1::__tree_iterator"*, %"class.std::__1::__tree_iterator"** %3, align 8
  %6 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %7 = call noundef %"class.std::__1::__tree_iterator"* @_ZNSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElEC2ES6_(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::__1::__tree_node"* noundef %6) #8
  ret %"class.std::__1::__tree_iterator"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair.33"* @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS4_S3_EElEEbEC1IS8_RbLS3_0EEEOT_OT0_(%"struct.std::__1::pair.33"* noundef nonnull returned align 8 dereferenceable(9) %0, %"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %1, i8* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 align 2 {
  %4 = alloca %"struct.std::__1::pair.33"*, align 8
  %5 = alloca %"class.std::__1::__tree_iterator"*, align 8
  %6 = alloca i8*, align 8
  store %"struct.std::__1::pair.33"* %0, %"struct.std::__1::pair.33"** %4, align 8
  store %"class.std::__1::__tree_iterator"* %1, %"class.std::__1::__tree_iterator"** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"struct.std::__1::pair.33"*, %"struct.std::__1::pair.33"** %4, align 8
  %8 = load %"class.std::__1::__tree_iterator"*, %"class.std::__1::__tree_iterator"** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call noundef %"struct.std::__1::pair.33"* @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS4_S3_EElEEbEC2IS8_RbLS3_0EEEOT_OT0_(%"struct.std::__1::pair.33"* noundef nonnull align 8 dereferenceable(9) %7, %"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %8, i8* noundef nonnull align 1 dereferenceable(1) %9) #8
  ret %"struct.std::__1::pair.33"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node"* @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE6__rootEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_end_node"* @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__end_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %4, i32 0, i32 0
  %6 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8
  %7 = bitcast %"class.std::__1::__tree_node_base"* %6 to %"class.std::__1::__tree_node"*
  ret %"class.std::__1::__tree_node"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree_node_base"** @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__root_ptrEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_end_node"* @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__end_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %4, i32 0, i32 0
  %6 = call noundef %"class.std::__1::__tree_node_base"** @_ZNSt3__19addressofIPNS_16__tree_node_baseIPvEEEEPT_RS5_(%"class.std::__1::__tree_node_base"** noundef nonnull align 8 dereferenceable(8) %5) #8
  ret %"class.std::__1::__tree_node_base"** %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10value_compEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEE6secondEv(%"class.std::__1::__compressed_pair.17"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::__map_value_compare.19"* %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEclERKjRKS3_(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, %"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %2) #0 align 2 {
  %4 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"struct.std::__1::__value_type"*, align 8
  store %"class.std::__1::__map_value_compare.19"* %0, %"class.std::__1::__map_value_compare.19"** %4, align 8
  store i32* %1, i32** %5, align 8
  store %"struct.std::__1::__value_type"* %2, %"struct.std::__1::__value_type"** %6, align 8
  %7 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %8 = bitcast %"class.std::__1::__map_value_compare.19"* %7 to %"struct.std::__1::less.20"*
  %9 = load i32*, i32** %5, align 8
  %10 = load %"struct.std::__1::__value_type"*, %"struct.std::__1::__value_type"** %6, align 8
  %11 = call noundef nonnull align 8 dereferenceable(16) %"struct.std::__1::pair"* @_ZNKSt3__112__value_typeIjPvE11__get_valueEv(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %10)
  %12 = getelementptr inbounds %"struct.std::__1::pair", %"struct.std::__1::pair"* %11, i32 0, i32 0
  %13 = call noundef zeroext i1 @_ZNKSt3__14lessIjEclERKjS3_(%"struct.std::__1::less.20"* noundef nonnull align 1 dereferenceable(1) %8, i32* noundef nonnull align 4 dereferenceable(4) %9, i32* noundef nonnull align 4 dereferenceable(4) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node_base"** @_ZNSt3__19addressofIPNS_16__tree_node_baseIPvEEEEPT_RS5_(%"class.std::__1::__tree_node_base"** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca %"class.std::__1::__tree_node_base"**, align 8
  store %"class.std::__1::__tree_node_base"** %0, %"class.std::__1::__tree_node_base"*** %2, align 8
  %3 = load %"class.std::__1::__tree_node_base"**, %"class.std::__1::__tree_node_base"*** %2, align 8
  ret %"class.std::__1::__tree_node_base"** %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEclERKS3_RKj(%"class.std::__1::__map_value_compare.19"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #3 align 2 {
  %4 = alloca %"class.std::__1::__map_value_compare.19"*, align 8
  %5 = alloca %"struct.std::__1::__value_type"*, align 8
  %6 = alloca i32*, align 8
  store %"class.std::__1::__map_value_compare.19"* %0, %"class.std::__1::__map_value_compare.19"** %4, align 8
  store %"struct.std::__1::__value_type"* %1, %"struct.std::__1::__value_type"** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"class.std::__1::__map_value_compare.19"*, %"class.std::__1::__map_value_compare.19"** %4, align 8
  %8 = bitcast %"class.std::__1::__map_value_compare.19"* %7 to %"struct.std::__1::less.20"*
  %9 = load %"struct.std::__1::__value_type"*, %"struct.std::__1::__value_type"** %5, align 8
  %10 = call noundef nonnull align 8 dereferenceable(16) %"struct.std::__1::pair"* @_ZNKSt3__112__value_typeIjPvE11__get_valueEv(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %9)
  %11 = getelementptr inbounds %"struct.std::__1::pair", %"struct.std::__1::pair"* %10, i32 0, i32 0
  %12 = load i32*, i32** %6, align 8
  %13 = call noundef zeroext i1 @_ZNKSt3__14lessIjEclERKjS3_(%"struct.std::__1::less.20"* noundef nonnull align 1 dereferenceable(1) %8, i32* noundef nonnull align 4 dereferenceable(4) %11, i32* noundef nonnull align 4 dereferenceable(4) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE10__end_nodeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %4) #8
  %6 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %5) #8
  ret %"class.std::__1::__tree_end_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.12"*, align 8
  store %"class.std::__1::__compressed_pair.12"* %0, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.12"*, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.12"* %3 to %"struct.std::__1::__compressed_pair_elem.2"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::__tree_end_node"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.2"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.2"* %0, %"struct.std::__1::__compressed_pair_elem.2"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.2"*, %"struct.std::__1::__compressed_pair_elem.2"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", %"struct.std::__1::__compressed_pair_elem.2"* %3, i32 0, i32 0
  ret %"class.std::__1::__tree_end_node"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEE6secondEv(%"class.std::__1::__compressed_pair.17"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.17"*, align 8
  store %"class.std::__1::__compressed_pair.17"* %0, %"class.std::__1::__compressed_pair.17"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.17"*, %"class.std::__1::__compressed_pair.17"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.17"* %3 to %"struct.std::__1::__compressed_pair_elem.18"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.18"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::__map_value_compare.19"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::__map_value_compare.19"* @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.18"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.18"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.18"* %0, %"struct.std::__1::__compressed_pair_elem.18"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.18"*, %"struct.std::__1::__compressed_pair_elem.18"** %2, align 8
  %4 = bitcast %"struct.std::__1::__compressed_pair_elem.18"* %3 to %"class.std::__1::__map_value_compare.19"*
  ret %"class.std::__1::__map_value_compare.19"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__14lessIjEclERKjS3_(%"struct.std::__1::less.20"* noundef nonnull align 1 dereferenceable(1) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #3 align 2 {
  %4 = alloca %"struct.std::__1::less.20"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"struct.std::__1::less.20"* %0, %"struct.std::__1::less.20"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"struct.std::__1::less.20"*, %"struct.std::__1::less.20"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %9, %11
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) %"struct.std::__1::pair"* @_ZNKSt3__112__value_typeIjPvE11__get_valueEv(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__value_type"*, align 8
  store %"struct.std::__1::__value_type"* %0, %"struct.std::__1::__value_type"** %2, align 8
  %3 = load %"struct.std::__1::__value_type"*, %"struct.std::__1::__value_type"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__value_type", %"struct.std::__1::__value_type"* %3, i32 0, i32 0
  %5 = call noundef %"struct.std::__1::pair"* @_ZNSt3__19addressofIKNS_4pairIKjPvEEEEPT_RS6_(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %4) #8
  %6 = call noundef %"struct.std::__1::pair"* @_ZNSt3__17launderIKNS_4pairIKjPvEEEEPT_S7_(%"struct.std::__1::pair"* noundef %5) #8
  ret %"struct.std::__1::pair"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair"* @_ZNSt3__17launderIKNS_4pairIKjPvEEEEPT_S7_(%"struct.std::__1::pair"* noundef %0) #3 {
  %2 = alloca %"struct.std::__1::pair"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %2, align 8
  %3 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %2, align 8
  %4 = call noundef %"struct.std::__1::pair"* @_ZNSt3__19__launderIKNS_4pairIKjPvEEEEPT_S7_(%"struct.std::__1::pair"* noundef %3) #8
  ret %"struct.std::__1::pair"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair"* @_ZNSt3__19addressofIKNS_4pairIKjPvEEEEPT_RS6_(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %0) #3 {
  %2 = alloca %"struct.std::__1::pair"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %2, align 8
  %3 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %2, align 8
  ret %"struct.std::__1::pair"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair"* @_ZNSt3__19__launderIKNS_4pairIKjPvEEEEPT_S7_(%"struct.std::__1::pair"* noundef %0) #3 {
  %2 = alloca %"struct.std::__1::pair"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %2, align 8
  %3 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %2, align 8
  ret %"struct.std::__1::pair"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.14"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__node_allocEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.14"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEE6secondEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::allocator.14"* %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node"* @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE8allocateERS7_m(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 align 2 {
  %3 = alloca %"class.std::__1::allocator.14"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noundef %"class.std::__1::__tree_node"* @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE8allocateEm(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6)
  ret %"class.std::__1::__tree_node"* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node_destructor"* @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEC1ERS7_b(%"class.std::__1::__tree_node_destructor"* noundef nonnull returned align 8 dereferenceable(9) %0, %"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 {
  %4 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  %5 = alloca %"class.std::__1::allocator.14"*, align 8
  %6 = alloca i8, align 1
  store %"class.std::__1::__tree_node_destructor"* %0, %"class.std::__1::__tree_node_destructor"** %4, align 8
  store %"class.std::__1::allocator.14"* %1, %"class.std::__1::allocator.14"** %5, align 8
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  %8 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %4, align 8
  %9 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %5, align 8
  %10 = load i8, i8* %6, align 1
  %11 = trunc i8 %10 to i1
  %12 = call noundef %"class.std::__1::__tree_node_destructor"* @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEC2ERS7_b(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %8, %"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %9, i1 noundef zeroext %11) #8
  ret %"class.std::__1::__tree_node_destructor"* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(%"class.std::__1::unique_ptr"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node"* noundef %1, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %2) unnamed_addr #4 align 2 {
  %4 = alloca %"class.std::__1::unique_ptr"*, align 8
  %5 = alloca %"class.std::__1::__tree_node"*, align 8
  %6 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %4, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %5, align 8
  store %"class.std::__1::__tree_node_destructor"* %2, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %7 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %4, align 8
  %8 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8
  %9 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %10 = call noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %7, %"class.std::__1::__tree_node"* noundef %8, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %9) #8
  ret %"class.std::__1::unique_ptr"* %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE9constructINS_4pairIKjS4_EEJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSG_IJEEEEvEEvRS7_PT_DpOT0_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::pair"* noundef %1, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %2, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %3, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %4) #0 align 2 {
  %6 = alloca %"class.std::__1::allocator.14"*, align 8
  %7 = alloca %"struct.std::__1::pair"*, align 8
  %8 = alloca %"struct.std::__1::piecewise_construct_t"*, align 8
  %9 = alloca %"class.std::__1::tuple"*, align 8
  %10 = alloca %"class.std::__1::tuple.34"*, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %6, align 8
  store %"struct.std::__1::pair"* %1, %"struct.std::__1::pair"** %7, align 8
  store %"struct.std::__1::piecewise_construct_t"* %2, %"struct.std::__1::piecewise_construct_t"** %8, align 8
  store %"class.std::__1::tuple"* %3, %"class.std::__1::tuple"** %9, align 8
  store %"class.std::__1::tuple.34"* %4, %"class.std::__1::tuple.34"** %10, align 8
  %11 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %6, align 8
  %12 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %7, align 8
  %13 = load %"struct.std::__1::piecewise_construct_t"*, %"struct.std::__1::piecewise_construct_t"** %8, align 8
  %14 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::piecewise_construct_t"* @_ZNSt3__17forwardIRKNS_21piecewise_construct_tEEEOT_RNS_16remove_referenceIS4_E4typeE(%"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %13) #8
  %15 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %9, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::tuple"* @_ZNSt3__17forwardINS_5tupleIJOjEEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %15) #8
  %17 = load %"class.std::__1::tuple.34"*, %"class.std::__1::tuple.34"** %10, align 8
  %18 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::tuple.34"* @_ZNSt3__17forwardINS_5tupleIJEEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %17) #8
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE9constructINS_4pairIKjS3_EEJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSE_IJEEEEEEvPT_DpOT0_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %11, %"struct.std::__1::pair"* noundef %12, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %14, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %16, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %18)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair"* @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIjPvEEE9__get_ptrERS3_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %0) #0 align 2 {
  %2 = alloca %"struct.std::__1::__value_type"*, align 8
  store %"struct.std::__1::__value_type"* %0, %"struct.std::__1::__value_type"** %2, align 8
  %3 = load %"struct.std::__1::__value_type"*, %"struct.std::__1::__value_type"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(16) %"struct.std::__1::pair"* @_ZNSt3__112__value_typeIjPvE11__get_valueEv(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %3)
  %5 = call noundef %"struct.std::__1::pair"* @_ZNSt3__19addressofINS_4pairIKjPvEEEEPT_RS5_(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %4) #8
  ret %"struct.std::__1::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node"* @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEptEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::unique_ptr"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %2, align 8
  %3 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %6 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8
  ret %"class.std::__1::__tree_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE11get_deleterEv(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::unique_ptr"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %2, align 8
  %3 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE6secondEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %4) #8
  ret %"class.std::__1::__tree_node_destructor"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.14"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIjS3_EES3_EEEEE6secondEv(%"class.std::__1::__compressed_pair.12"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.12"*, align 8
  store %"class.std::__1::__compressed_pair.12"* %0, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.12"*, %"class.std::__1::__compressed_pair.12"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.12"* %3 to %"struct.std::__1::__compressed_pair_elem.13"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.14"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.13"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator.14"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.14"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.13"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.13"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.13"* %0, %"struct.std::__1::__compressed_pair_elem.13"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.13"*, %"struct.std::__1::__compressed_pair_elem.13"** %2, align 8
  %4 = bitcast %"struct.std::__1::__compressed_pair_elem.13"* %3 to %"class.std::__1::allocator.14"*
  ret %"class.std::__1::allocator.14"* %4
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node"* @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE8allocateEm(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 align 2 {
  %3 = alloca %"class.std::__1::allocator.14"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE8max_sizeIS7_vEEmRKS7_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %5) #8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = mul i64 %11, 48
  %13 = call noundef i8* @_ZNSt3__117__libcpp_allocateEmm(i64 noundef %12, i64 noundef 8)
  %14 = bitcast i8* %13 to %"class.std::__1::__tree_node"*
  ret %"class.std::__1::__tree_node"* %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE8max_sizeIS7_vEEmRKS7_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::allocator.14"*, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %2, align 8
  %3 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %2, align 8
  %4 = call noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE8max_sizeEv(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %3) #8
  ret i64 %4
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthv() #10 {
  %1 = call i8* @__cxa_allocate_exception(i64 8) #8
  %2 = bitcast i8* %1 to %"class.std::bad_array_new_length"*
  %3 = call noundef %"class.std::bad_array_new_length"* @_ZNSt20bad_array_new_lengthC1Ev(%"class.std::bad_array_new_length"* noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @__cxa_throw(i8* %1, i8* bitcast (i8** @_ZTISt20bad_array_new_length to i8*), i8* bitcast (%"class.std::bad_array_new_length"* (%"class.std::bad_array_new_length"*)* @_ZNSt20bad_array_new_lengthD1Ev to i8*)) #18
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i8* @_ZNSt3__117__libcpp_allocateEmm(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newEm(i64 noundef %7) #8
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call noundef i8* @_ZNSt3__121__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_(i64 noundef %11, i64 noundef %12)
  store i8* %13, i8** %3, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call noundef i8* @_ZNSt3__121__libcpp_operator_newIJmEEEPvDpT_(i64 noundef %15)
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE8max_sizeEv(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::allocator.14"*, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %2, align 8
  %3 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %2, align 8
  ret i64 384307168202282325
}

declare i8* @__cxa_allocate_exception(i64)

; Function Attrs: nounwind
declare noundef %"class.std::bad_array_new_length"* @_ZNSt20bad_array_new_lengthC1Ev(%"class.std::bad_array_new_length"* noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare noundef %"class.std::bad_array_new_length"* @_ZNSt20bad_array_new_lengthD1Ev(%"class.std::bad_array_new_length"* noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #11

declare void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newEm(i64 noundef %0) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ugt i64 %3, 16
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i8* @_ZNSt3__121__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias noundef nonnull i8* @_ZnwmSt11align_val_t(i64 noundef %5, i64 noundef %6) #19
  call void @llvm.assume(i1 true) [ "align"(i8* %7, i64 %6) ]
  ret i8* %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i8* @_ZNSt3__121__libcpp_operator_newIJmEEEPvDpT_(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %3) #19
  ret i8* %4
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #12

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #12

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node_destructor"* @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEC2ERS7_b(%"class.std::__1::__tree_node_destructor"* noundef nonnull returned align 8 dereferenceable(9) %0, %"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 {
  %4 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  %5 = alloca %"class.std::__1::allocator.14"*, align 8
  %6 = alloca i8, align 1
  store %"class.std::__1::__tree_node_destructor"* %0, %"class.std::__1::__tree_node_destructor"** %4, align 8
  store %"class.std::__1::allocator.14"* %1, %"class.std::__1::allocator.14"** %5, align 8
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  %8 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %4, align 8
  %9 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", %"class.std::__1::__tree_node_destructor"* %8, i32 0, i32 0
  %10 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %5, align 8
  store %"class.std::__1::allocator.14"* %10, %"class.std::__1::allocator.14"** %9, align 8
  %11 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", %"class.std::__1::__tree_node_destructor"* %8, i32 0, i32 1
  %12 = load i8, i8* %6, align 1
  %13 = trunc i8 %12 to i1
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %11, align 8
  ret %"class.std::__1::__tree_node_destructor"* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(%"class.std::__1::unique_ptr"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node"* noundef %1, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %2) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::unique_ptr"*, align 8
  %5 = alloca %"class.std::__1::__tree_node"*, align 8
  %6 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %4, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %5, align 8
  store %"class.std::__1::__tree_node_destructor"* %2, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %7 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %7, i32 0, i32 0
  %9 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %10 = call noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__14moveIRNS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEEEEONS_16remove_referenceIT_E4typeEOSC_(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %9) #8
  %11 = invoke noundef %"class.std::__1::__compressed_pair.35"* @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1IRS6_SA_EEOT_OT0_(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %8, %"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %5, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %10)
          to label %12 unwind label %13

12:                                               ; preds = %3
  ret %"class.std::__1::unique_ptr"* %7

13:                                               ; preds = %3
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__14moveIRNS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEEEEONS_16remove_referenceIT_E4typeEOSC_(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %0) #3 {
  %2 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  store %"class.std::__1::__tree_node_destructor"* %0, %"class.std::__1::__tree_node_destructor"** %2, align 8
  %3 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %2, align 8
  ret %"class.std::__1::__tree_node_destructor"* %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.35"* @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1IRS6_SA_EEOT_OT0_(%"class.std::__1::__compressed_pair.35"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %1, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.35"*, align 8
  %5 = alloca %"class.std::__1::__tree_node"**, align 8
  %6 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  store %"class.std::__1::__compressed_pair.35"* %0, %"class.std::__1::__compressed_pair.35"** %4, align 8
  store %"class.std::__1::__tree_node"** %1, %"class.std::__1::__tree_node"*** %5, align 8
  store %"class.std::__1::__tree_node_destructor"* %2, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.35"*, %"class.std::__1::__compressed_pair.35"** %4, align 8
  %8 = load %"class.std::__1::__tree_node"**, %"class.std::__1::__tree_node"*** %5, align 8
  %9 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %10 = call noundef %"class.std::__1::__compressed_pair.35"* @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2IRS6_SA_EEOT_OT0_(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %7, %"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %8, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %9)
  ret %"class.std::__1::__compressed_pair.35"* %7
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.35"* @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2IRS6_SA_EEOT_OT0_(%"class.std::__1::__compressed_pair.35"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %1, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.35"*, align 8
  %5 = alloca %"class.std::__1::__tree_node"**, align 8
  %6 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  store %"class.std::__1::__compressed_pair.35"* %0, %"class.std::__1::__compressed_pair.35"** %4, align 8
  store %"class.std::__1::__tree_node"** %1, %"class.std::__1::__tree_node"*** %5, align 8
  store %"class.std::__1::__tree_node_destructor"* %2, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.35"*, %"class.std::__1::__compressed_pair.35"** %4, align 8
  %8 = bitcast %"class.std::__1::__compressed_pair.35"* %7 to %"struct.std::__1::__compressed_pair_elem.36"*
  %9 = load %"class.std::__1::__tree_node"**, %"class.std::__1::__tree_node"*** %5, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__17forwardIRPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EEEEOT_RNS_16remove_referenceIS8_E4typeE(%"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %9) #8
  %11 = call noundef %"struct.std::__1::__compressed_pair_elem.36"* @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EELi0ELb0EEC2IRS6_vEEOT_(%"struct.std::__1::__compressed_pair_elem.36"* noundef nonnull align 8 dereferenceable(8) %8, %"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %10)
  %12 = bitcast %"class.std::__1::__compressed_pair.35"* %7 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  %14 = bitcast i8* %13 to %"struct.std::__1::__compressed_pair_elem.37"*
  %15 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %6, align 8
  %16 = call noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__17forwardINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEEEEOT_RNS_16remove_referenceISA_E4typeE(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %15) #8
  %17 = call noundef %"struct.std::__1::__compressed_pair_elem.37"* @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEELi1ELb0EEC2IS9_vEEOT_(%"struct.std::__1::__compressed_pair_elem.37"* noundef nonnull align 8 dereferenceable(16) %14, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %16)
  ret %"class.std::__1::__compressed_pair.35"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__17forwardIRPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EEEEOT_RNS_16remove_referenceIS8_E4typeE(%"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca %"class.std::__1::__tree_node"**, align 8
  store %"class.std::__1::__tree_node"** %0, %"class.std::__1::__tree_node"*** %2, align 8
  %3 = load %"class.std::__1::__tree_node"**, %"class.std::__1::__tree_node"*** %2, align 8
  ret %"class.std::__1::__tree_node"** %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem.36"* @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EELi0ELb0EEC2IRS6_vEEOT_(%"struct.std::__1::__compressed_pair_elem.36"* noundef nonnull returned align 8 dereferenceable(8) %0, %"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.36"*, align 8
  %4 = alloca %"class.std::__1::__tree_node"**, align 8
  store %"struct.std::__1::__compressed_pair_elem.36"* %0, %"struct.std::__1::__compressed_pair_elem.36"** %3, align 8
  store %"class.std::__1::__tree_node"** %1, %"class.std::__1::__tree_node"*** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem.36"*, %"struct.std::__1::__compressed_pair_elem.36"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.36", %"struct.std::__1::__compressed_pair_elem.36"* %5, i32 0, i32 0
  %7 = load %"class.std::__1::__tree_node"**, %"class.std::__1::__tree_node"*** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__17forwardIRPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EEEEOT_RNS_16remove_referenceIS8_E4typeE(%"class.std::__1::__tree_node"** noundef nonnull align 8 dereferenceable(8) %7) #8
  %9 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  store %"class.std::__1::__tree_node"* %9, %"class.std::__1::__tree_node"** %6, align 8
  ret %"struct.std::__1::__compressed_pair_elem.36"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__17forwardINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEEEEOT_RNS_16remove_referenceISA_E4typeE(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %0) #3 {
  %2 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  store %"class.std::__1::__tree_node_destructor"* %0, %"class.std::__1::__tree_node_destructor"** %2, align 8
  %3 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %2, align 8
  ret %"class.std::__1::__tree_node_destructor"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem.37"* @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEELi1ELb0EEC2IS9_vEEOT_(%"struct.std::__1::__compressed_pair_elem.37"* noundef nonnull returned align 8 dereferenceable(16) %0, %"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.37"*, align 8
  %4 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.37"* %0, %"struct.std::__1::__compressed_pair_elem.37"** %3, align 8
  store %"class.std::__1::__tree_node_destructor"* %1, %"class.std::__1::__tree_node_destructor"** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem.37"*, %"struct.std::__1::__compressed_pair_elem.37"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.37", %"struct.std::__1::__compressed_pair_elem.37"* %5, i32 0, i32 0
  %7 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__17forwardINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEEEEOT_RNS_16remove_referenceISA_E4typeE(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %7) #8
  %9 = bitcast %"class.std::__1::__tree_node_destructor"* %6 to i8*
  %10 = bitcast %"class.std::__1::__tree_node_destructor"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  ret %"struct.std::__1::__compressed_pair_elem.37"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE9constructINS_4pairIKjS3_EEJRKNS_21piecewise_construct_tENS_5tupleIJOjEEENSE_IJEEEEEEvPT_DpOT0_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::pair"* noundef %1, %"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %2, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %3, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %4) #3 align 2 {
  %6 = alloca %"class.std::__1::allocator.14"*, align 8
  %7 = alloca %"struct.std::__1::pair"*, align 8
  %8 = alloca %"struct.std::__1::piecewise_construct_t"*, align 8
  %9 = alloca %"class.std::__1::tuple"*, align 8
  %10 = alloca %"class.std::__1::tuple.34"*, align 8
  %11 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %12 = alloca %"class.std::__1::tuple", align 8
  %13 = alloca %"class.std::__1::tuple.34", align 1
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %6, align 8
  store %"struct.std::__1::pair"* %1, %"struct.std::__1::pair"** %7, align 8
  store %"struct.std::__1::piecewise_construct_t"* %2, %"struct.std::__1::piecewise_construct_t"** %8, align 8
  store %"class.std::__1::tuple"* %3, %"class.std::__1::tuple"** %9, align 8
  store %"class.std::__1::tuple.34"* %4, %"class.std::__1::tuple.34"** %10, align 8
  %14 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %6, align 8
  %15 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %7, align 8
  %16 = bitcast %"struct.std::__1::pair"* %15 to i8*
  %17 = bitcast i8* %16 to %"struct.std::__1::pair"*
  %18 = load %"struct.std::__1::piecewise_construct_t"*, %"struct.std::__1::piecewise_construct_t"** %8, align 8
  %19 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::piecewise_construct_t"* @_ZNSt3__17forwardIRKNS_21piecewise_construct_tEEEOT_RNS_16remove_referenceIS4_E4typeE(%"struct.std::__1::piecewise_construct_t"* noundef nonnull align 1 dereferenceable(1) %18) #8
  %20 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %9, align 8
  %21 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::tuple"* @_ZNSt3__17forwardINS_5tupleIJOjEEEEEOT_RNS_16remove_referenceIS4_E4typeE(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %20) #8
  %22 = bitcast %"class.std::__1::tuple"* %12 to i8*
  %23 = bitcast %"class.std::__1::tuple"* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load %"class.std::__1::tuple.34"*, %"class.std::__1::tuple.34"** %10, align 8
  %25 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::tuple.34"* @_ZNSt3__17forwardINS_5tupleIJEEEEEOT_RNS_16remove_referenceIS3_E4typeE(%"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %24) #8
  %26 = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %12, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::__1::__tuple_impl", %"struct.std::__1::__tuple_impl"* %26, i32 0, i32 0
  %28 = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = call noundef %"struct.std::__1::pair"* @_ZNSt3__14pairIKjPvEC1IJOjEJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS7_IJDpT0_EEE(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %17, i64 %30) #8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair"* @_ZNSt3__14pairIKjPvEC1IJOjEJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS7_IJDpT0_EEE(%"struct.std::__1::pair"* noundef nonnull returned align 8 dereferenceable(16) %0, i64 %1) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %4 = alloca %"class.std::__1::tuple", align 8
  %5 = alloca %"class.std::__1::tuple.34", align 1
  %6 = alloca %"struct.std::__1::pair"*, align 8
  %7 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %8 = alloca %"struct.std::__1::__tuple_indices", align 1
  %9 = alloca %"struct.std::__1::__tuple_indices.38", align 1
  %10 = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %4, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::__1::__tuple_impl", %"struct.std::__1::__tuple_impl"* %10, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %11, i32 0, i32 0
  %13 = inttoptr i64 %1 to i32*
  store i32* %13, i32** %12, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %6, align 8
  %14 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %6, align 8
  %15 = invoke noundef %"struct.std::__1::pair"* @_ZNSt3__14pairIKjPvEC1IJOjEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS7_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSG_IJXspT2_EEEE(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %14, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %4, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %5)
          to label %16 unwind label %17

16:                                               ; preds = %2
  ret %"struct.std::__1::pair"* %14

17:                                               ; preds = %2
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  call void @__clang_call_terminate(i8* %19) #17
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair"* @_ZNSt3__14pairIKjPvEC1IJOjEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS7_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSG_IJXspT2_EEEE(%"struct.std::__1::pair"* noundef nonnull returned align 8 dereferenceable(16) %0, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %1, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %5 = alloca %"struct.std::__1::__tuple_indices", align 1
  %6 = alloca %"struct.std::__1::__tuple_indices.38", align 1
  %7 = alloca %"struct.std::__1::pair"*, align 8
  %8 = alloca %"class.std::__1::tuple"*, align 8
  %9 = alloca %"class.std::__1::tuple.34"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %7, align 8
  store %"class.std::__1::tuple"* %1, %"class.std::__1::tuple"** %8, align 8
  store %"class.std::__1::tuple.34"* %2, %"class.std::__1::tuple.34"** %9, align 8
  %10 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %7, align 8
  %11 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %8, align 8
  %12 = load %"class.std::__1::tuple.34"*, %"class.std::__1::tuple.34"** %9, align 8
  %13 = call noundef %"struct.std::__1::pair"* @_ZNSt3__14pairIKjPvEC2IJOjEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS7_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSG_IJXspT2_EEEE(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %10, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %11, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %12)
  ret %"struct.std::__1::pair"* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair"* @_ZNSt3__14pairIKjPvEC2IJOjEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS7_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSG_IJXspT2_EEEE(%"struct.std::__1::pair"* noundef nonnull returned align 8 dereferenceable(16) %0, %"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %1, %"class.std::__1::tuple.34"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 align 2 {
  %4 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %5 = alloca %"struct.std::__1::__tuple_indices", align 1
  %6 = alloca %"struct.std::__1::__tuple_indices.38", align 1
  %7 = alloca %"struct.std::__1::pair"*, align 8
  %8 = alloca %"class.std::__1::tuple"*, align 8
  %9 = alloca %"class.std::__1::tuple.34"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %7, align 8
  store %"class.std::__1::tuple"* %1, %"class.std::__1::tuple"** %8, align 8
  store %"class.std::__1::tuple.34"* %2, %"class.std::__1::tuple.34"** %9, align 8
  %10 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %7, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair", %"struct.std::__1::pair"* %10, i32 0, i32 0
  %12 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %8, align 8
  %13 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__13getILm0EJOjEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS6_(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %12) #8
  %14 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIOjEEOT_RNS_16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %13) #8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair", %"struct.std::__1::pair"* %10, i32 0, i32 1
  store i8* null, i8** %16, align 8
  ret %"struct.std::__1::pair"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIOjEEOT_RNS_16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %0) #3 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__13getILm0EJOjEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS6_(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca %"class.std::__1::tuple"*, align 8
  store %"class.std::__1::tuple"* %0, %"class.std::__1::tuple"** %2, align 8
  %3 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__1::__tuple_impl"* %4 to %"class.std::__1::__tuple_leaf"*
  %6 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__112__tuple_leafILm0EOjLb0EE3getEv(%"class.std::__1::__tuple_leaf"* noundef nonnull align 8 dereferenceable(8) %5) #8
  ret i32* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__112__tuple_leafILm0EOjLb0EE3getEv(%"class.std::__1::__tuple_leaf"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tuple_leaf"*, align 8
  store %"class.std::__1::__tuple_leaf"* %0, %"class.std::__1::__tuple_leaf"** %2, align 8
  %3 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  ret i32* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair"* @_ZNSt3__19addressofINS_4pairIKjPvEEEEPT_RS5_(%"struct.std::__1::pair"* noundef nonnull align 8 dereferenceable(16) %0) #3 {
  %2 = alloca %"struct.std::__1::pair"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %2, align 8
  %3 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %2, align 8
  ret %"struct.std::__1::pair"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.35"*, align 8
  store %"class.std::__1::__compressed_pair.35"* %0, %"class.std::__1::__compressed_pair.35"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.35"*, %"class.std::__1::__compressed_pair.35"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.35"* %3 to %"struct.std::__1::__compressed_pair_elem.36"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.36"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::__tree_node"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.36"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.36"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.36"* %0, %"struct.std::__1::__compressed_pair_elem.36"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.36"*, %"struct.std::__1::__compressed_pair_elem.36"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.36", %"struct.std::__1::__compressed_pair_elem.36"* %3, i32 0, i32 0
  ret %"class.std::__1::__tree_node"** %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE6secondEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.35"*, align 8
  store %"class.std::__1::__compressed_pair.35"* %0, %"class.std::__1::__compressed_pair.35"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.35"*, %"class.std::__1::__compressed_pair.35"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.35"* %3 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to %"struct.std::__1::__compressed_pair_elem.37"*
  %7 = call noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEELi1ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.37"* noundef nonnull align 8 dereferenceable(16) %6) #8
  ret %"class.std::__1::__tree_node_destructor"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES5_EEEEEELi1ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.37"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.37"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.37"* %0, %"struct.std::__1::__compressed_pair_elem.37"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.37"*, %"struct.std::__1::__compressed_pair_elem.37"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.37", %"struct.std::__1::__compressed_pair_elem.37"* %3, i32 0, i32 0
  ret %"class.std::__1::__tree_node_destructor"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(%"class.std::__1::__tree_node_base"* noundef %0, %"class.std::__1::__tree_node_base"* noundef %1) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__tree_node_base"*, align 8
  %4 = alloca %"class.std::__1::__tree_node_base"*, align 8
  %5 = alloca %"class.std::__1::__tree_node_base"*, align 8
  %6 = alloca %"class.std::__1::__tree_node_base"*, align 8
  store %"class.std::__1::__tree_node_base"* %0, %"class.std::__1::__tree_node_base"** %3, align 8
  store %"class.std::__1::__tree_node_base"* %1, %"class.std::__1::__tree_node_base"** %4, align 8
  %7 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %8 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %9 = icmp eq %"class.std::__1::__tree_node_base"* %7, %8
  %10 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %11 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %10, i32 0, i32 3
  %12 = zext i1 %9 to i8
  store i8 %12, i8* %11, align 8
  br label %13

13:                                               ; preds = %138, %2
  %14 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %15 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %16 = icmp ne %"class.std::__1::__tree_node_base"* %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %19 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %18)
          to label %20 unwind label %140

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %19, i32 0, i32 3
  %22 = load i8, i8* %21, align 8
  %23 = trunc i8 %22 to i1
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %20, %13
  %26 = phi i1 [ false, %13 ], [ %24, %20 ]
  br i1 %26, label %27, label %139

27:                                               ; preds = %25
  %28 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %29 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %28)
          to label %30 unwind label %140

30:                                               ; preds = %27
  %31 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_(%"class.std::__1::__tree_node_base"* noundef %29) #8
  br i1 %31, label %32, label %85

32:                                               ; preds = %30
  %33 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %34 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %33)
          to label %35 unwind label %140

35:                                               ; preds = %32
  %36 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %34)
          to label %37 unwind label %140

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %36, i32 0, i32 1
  %39 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %38, align 8
  store %"class.std::__1::__tree_node_base"* %39, %"class.std::__1::__tree_node_base"** %5, align 8
  %40 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8
  %41 = icmp ne %"class.std::__1::__tree_node_base"* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8
  %44 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %43, i32 0, i32 3
  %45 = load i8, i8* %44, align 8
  %46 = trunc i8 %45 to i1
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %49 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %48)
          to label %50 unwind label %140

50:                                               ; preds = %47
  store %"class.std::__1::__tree_node_base"* %49, %"class.std::__1::__tree_node_base"** %4, align 8
  %51 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %52 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %51, i32 0, i32 3
  store i8 1, i8* %52, align 8
  %53 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %54 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %53)
          to label %55 unwind label %140

55:                                               ; preds = %50
  store %"class.std::__1::__tree_node_base"* %54, %"class.std::__1::__tree_node_base"** %4, align 8
  %56 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %57 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %58 = icmp eq %"class.std::__1::__tree_node_base"* %56, %57
  %59 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %60 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %59, i32 0, i32 3
  %61 = zext i1 %58 to i8
  store i8 %61, i8* %60, align 8
  %62 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8
  %63 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %62, i32 0, i32 3
  store i8 1, i8* %63, align 8
  br label %84

64:                                               ; preds = %42, %37
  %65 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %66 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_(%"class.std::__1::__tree_node_base"* noundef %65) #8
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %69 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %68)
          to label %70 unwind label %140

70:                                               ; preds = %67
  store %"class.std::__1::__tree_node_base"* %69, %"class.std::__1::__tree_node_base"** %4, align 8
  %71 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(%"class.std::__1::__tree_node_base"* noundef %71) #8
  br label %72

72:                                               ; preds = %70, %64
  %73 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %74 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %73)
          to label %75 unwind label %140

75:                                               ; preds = %72
  store %"class.std::__1::__tree_node_base"* %74, %"class.std::__1::__tree_node_base"** %4, align 8
  %76 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %77 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %76, i32 0, i32 3
  store i8 1, i8* %77, align 8
  %78 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %79 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %78)
          to label %80 unwind label %140

80:                                               ; preds = %75
  store %"class.std::__1::__tree_node_base"* %79, %"class.std::__1::__tree_node_base"** %4, align 8
  %81 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %82 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %81, i32 0, i32 3
  store i8 0, i8* %82, align 8
  %83 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(%"class.std::__1::__tree_node_base"* noundef %83) #8
  br label %139

84:                                               ; preds = %55
  br label %138

85:                                               ; preds = %30
  %86 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %87 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %86)
          to label %88 unwind label %140

88:                                               ; preds = %85
  %89 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %87, i32 0, i32 2
  %90 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %89, align 8
  %91 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %90, i32 0, i32 0
  %92 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %91, align 8
  store %"class.std::__1::__tree_node_base"* %92, %"class.std::__1::__tree_node_base"** %6, align 8
  %93 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %6, align 8
  %94 = icmp ne %"class.std::__1::__tree_node_base"* %93, null
  br i1 %94, label %95, label %117

95:                                               ; preds = %88
  %96 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %6, align 8
  %97 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %96, i32 0, i32 3
  %98 = load i8, i8* %97, align 8
  %99 = trunc i8 %98 to i1
  br i1 %99, label %117, label %100

100:                                              ; preds = %95
  %101 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %102 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %101)
          to label %103 unwind label %140

103:                                              ; preds = %100
  store %"class.std::__1::__tree_node_base"* %102, %"class.std::__1::__tree_node_base"** %4, align 8
  %104 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %105 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %104, i32 0, i32 3
  store i8 1, i8* %105, align 8
  %106 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %107 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %106)
          to label %108 unwind label %140

108:                                              ; preds = %103
  store %"class.std::__1::__tree_node_base"* %107, %"class.std::__1::__tree_node_base"** %4, align 8
  %109 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %110 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %111 = icmp eq %"class.std::__1::__tree_node_base"* %109, %110
  %112 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %113 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %112, i32 0, i32 3
  %114 = zext i1 %111 to i8
  store i8 %114, i8* %113, align 8
  %115 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %6, align 8
  %116 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %115, i32 0, i32 3
  store i8 1, i8* %116, align 8
  br label %137

117:                                              ; preds = %95, %88
  %118 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %119 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_(%"class.std::__1::__tree_node_base"* noundef %118) #8
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %122 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %121)
          to label %123 unwind label %140

123:                                              ; preds = %120
  store %"class.std::__1::__tree_node_base"* %122, %"class.std::__1::__tree_node_base"** %4, align 8
  %124 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(%"class.std::__1::__tree_node_base"* noundef %124) #8
  br label %125

125:                                              ; preds = %123, %117
  %126 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %127 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %126)
          to label %128 unwind label %140

128:                                              ; preds = %125
  store %"class.std::__1::__tree_node_base"* %127, %"class.std::__1::__tree_node_base"** %4, align 8
  %129 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %130 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %129, i32 0, i32 3
  store i8 1, i8* %130, align 8
  %131 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %132 = invoke noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %131)
          to label %133 unwind label %140

133:                                              ; preds = %128
  store %"class.std::__1::__tree_node_base"* %132, %"class.std::__1::__tree_node_base"** %4, align 8
  %134 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %135 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %134, i32 0, i32 3
  store i8 0, i8* %135, align 8
  %136 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(%"class.std::__1::__tree_node_base"* noundef %136) #8
  br label %139

137:                                              ; preds = %108
  br label %138

138:                                              ; preds = %137, %84
  br label %13, !llvm.loop !11

139:                                              ; preds = %133, %80, %25
  ret void

140:                                              ; preds = %128, %125, %120, %103, %100, %85, %75, %72, %67, %50, %47, %35, %32, %27, %17
  %141 = landingpad { i8*, i32 }
          catch i8* null
  %142 = extractvalue { i8*, i32 } %141, 0
  call void @__clang_call_terminate(i8* %142) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE4sizeEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree.11", %"class.std::__1::__tree.11"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEE5firstEv(%"class.std::__1::__compressed_pair.17"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i64* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree_node_base"*, align 8
  store %"class.std::__1::__tree_node_base"* %0, %"class.std::__1::__tree_node_base"** %2, align 8
  %3 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %3, i32 0, i32 2
  %5 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %4, align 8
  %6 = bitcast %"class.std::__1::__tree_end_node"* %5 to %"class.std::__1::__tree_node_base"*
  ret %"class.std::__1::__tree_node_base"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_(%"class.std::__1::__tree_node_base"* noundef %0) #3 {
  %2 = alloca %"class.std::__1::__tree_node_base"*, align 8
  store %"class.std::__1::__tree_node_base"* %0, %"class.std::__1::__tree_node_base"** %2, align 8
  %3 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %4 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %5 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %4, i32 0, i32 2
  %6 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %6, i32 0, i32 0
  %8 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %7, align 8
  %9 = icmp eq %"class.std::__1::__tree_node_base"* %3, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(%"class.std::__1::__tree_node_base"* noundef %0) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__1::__tree_node_base"*, align 8
  %3 = alloca %"class.std::__1::__tree_node_base"*, align 8
  store %"class.std::__1::__tree_node_base"* %0, %"class.std::__1::__tree_node_base"** %2, align 8
  %4 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %5 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %4, i32 0, i32 1
  %6 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8
  store %"class.std::__1::__tree_node_base"* %6, %"class.std::__1::__tree_node_base"** %3, align 8
  %7 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %8 = bitcast %"class.std::__1::__tree_node_base"* %7 to %"class.std::__1::__tree_end_node"*
  %9 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %8, i32 0, i32 0
  %10 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %9, align 8
  %11 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %12 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i32 0, i32 1
  store %"class.std::__1::__tree_node_base"* %10, %"class.std::__1::__tree_node_base"** %12, align 8
  %13 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %14 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %13, i32 0, i32 1
  %15 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %14, align 8
  %16 = icmp ne %"class.std::__1::__tree_node_base"* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %19 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %18, i32 0, i32 1
  %20 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %19, align 8
  %21 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  invoke void @_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %20, %"class.std::__1::__tree_node_base"* noundef %21)
          to label %22 unwind label %50

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %25 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %24, i32 0, i32 2
  %26 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %25, align 8
  %27 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %28 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %27, i32 0, i32 2
  store %"class.std::__1::__tree_end_node"* %26, %"class.std::__1::__tree_end_node"** %28, align 8
  %29 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %30 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_(%"class.std::__1::__tree_node_base"* noundef %29) #8
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %33 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %34 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %33, i32 0, i32 2
  %35 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %34, align 8
  %36 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %35, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"* %32, %"class.std::__1::__tree_node_base"** %36, align 8
  br label %42

37:                                               ; preds = %23
  %38 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %39 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %40 = call noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %39)
  %41 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %40, i32 0, i32 1
  store %"class.std::__1::__tree_node_base"* %38, %"class.std::__1::__tree_node_base"** %41, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %44 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %45 = bitcast %"class.std::__1::__tree_node_base"* %44 to %"class.std::__1::__tree_end_node"*
  %46 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %45, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"* %43, %"class.std::__1::__tree_node_base"** %46, align 8
  %47 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %48 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  invoke void @_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %47, %"class.std::__1::__tree_node_base"* noundef %48)
          to label %49 unwind label %50

49:                                               ; preds = %42
  ret void

50:                                               ; preds = %42, %17
  %51 = landingpad { i8*, i32 }
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(%"class.std::__1::__tree_node_base"* noundef %0) #3 {
  %2 = alloca %"class.std::__1::__tree_node_base"*, align 8
  %3 = alloca %"class.std::__1::__tree_node_base"*, align 8
  store %"class.std::__1::__tree_node_base"* %0, %"class.std::__1::__tree_node_base"** %2, align 8
  %4 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %5 = bitcast %"class.std::__1::__tree_node_base"* %4 to %"class.std::__1::__tree_end_node"*
  %6 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %5, i32 0, i32 0
  %7 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %6, align 8
  store %"class.std::__1::__tree_node_base"* %7, %"class.std::__1::__tree_node_base"** %3, align 8
  %8 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %9 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %8, i32 0, i32 1
  %10 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %9, align 8
  %11 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %12 = bitcast %"class.std::__1::__tree_node_base"* %11 to %"class.std::__1::__tree_end_node"*
  %13 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %12, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"* %10, %"class.std::__1::__tree_node_base"** %13, align 8
  %14 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %15 = bitcast %"class.std::__1::__tree_node_base"* %14 to %"class.std::__1::__tree_end_node"*
  %16 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %15, i32 0, i32 0
  %17 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %16, align 8
  %18 = icmp ne %"class.std::__1::__tree_node_base"* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %21 = bitcast %"class.std::__1::__tree_node_base"* %20 to %"class.std::__1::__tree_end_node"*
  %22 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %21, i32 0, i32 0
  %23 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %22, align 8
  %24 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %23, %"class.std::__1::__tree_node_base"* noundef %24)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %27 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %26, i32 0, i32 2
  %28 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %27, align 8
  %29 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %30 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %29, i32 0, i32 2
  store %"class.std::__1::__tree_end_node"* %28, %"class.std::__1::__tree_end_node"** %30, align 8
  %31 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %32 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_(%"class.std::__1::__tree_node_base"* noundef %31) #8
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %35 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %36 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %35, i32 0, i32 2
  %37 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %36, align 8
  %38 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %37, i32 0, i32 0
  store %"class.std::__1::__tree_node_base"* %34, %"class.std::__1::__tree_node_base"** %38, align 8
  br label %44

39:                                               ; preds = %25
  %40 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %41 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %42 = call noundef %"class.std::__1::__tree_node_base"* @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %41)
  %43 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %42, i32 0, i32 1
  store %"class.std::__1::__tree_node_base"* %40, %"class.std::__1::__tree_node_base"** %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %46 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %47 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %46, i32 0, i32 1
  store %"class.std::__1::__tree_node_base"* %45, %"class.std::__1::__tree_node_base"** %47, align 8
  %48 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %2, align 8
  %49 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %48, %"class.std::__1::__tree_node_base"* noundef %49)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_(%"class.std::__1::__tree_node_base"* noundef nonnull align 8 dereferenceable(25) %0, %"class.std::__1::__tree_node_base"* noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::__tree_node_base"*, align 8
  %4 = alloca %"class.std::__1::__tree_node_base"*, align 8
  store %"class.std::__1::__tree_node_base"* %0, %"class.std::__1::__tree_node_base"** %3, align 8
  store %"class.std::__1::__tree_node_base"* %1, %"class.std::__1::__tree_node_base"** %4, align 8
  %5 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %3, align 8
  %6 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %4, align 8
  %7 = bitcast %"class.std::__1::__tree_node_base"* %6 to %"class.std::__1::__tree_end_node"*
  %8 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %5, i32 0, i32 2
  store %"class.std::__1::__tree_end_node"* %7, %"class.std::__1::__tree_end_node"** %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIjNS_12__value_typeIjPvEENS_4lessIjEELb1EEEE5firstEv(%"class.std::__1::__compressed_pair.17"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.17"*, align 8
  store %"class.std::__1::__compressed_pair.17"* %0, %"class.std::__1::__compressed_pair.17"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.17"*, %"class.std::__1::__compressed_pair.17"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.17"* %3 to %"struct.std::__1::__compressed_pair_elem.8"*
  %5 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i64* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.8"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.8"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.8"* %0, %"struct.std::__1::__compressed_pair_elem.8"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.8"*, %"struct.std::__1::__compressed_pair_elem.8"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.8", %"struct.std::__1::__compressed_pair_elem.8"* %3, i32 0, i32 0
  ret i64* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.35"*, align 8
  store %"class.std::__1::__compressed_pair.35"* %0, %"class.std::__1::__compressed_pair.35"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.35"*, %"class.std::__1::__compressed_pair.35"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.35"* %3 to %"struct.std::__1::__compressed_pair_elem.36"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.36"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::__tree_node"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.36"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.36"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.36"* %0, %"struct.std::__1::__compressed_pair_elem.36"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.36"*, %"struct.std::__1::__compressed_pair_elem.36"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.36", %"struct.std::__1::__compressed_pair_elem.36"* %3, i32 0, i32 0
  ret %"class.std::__1::__tree_node"** %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::unique_ptr"* @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2Ev(%"class.std::__1::unique_ptr"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::unique_ptr"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %2, align 8
  %3 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %2, align 8
  call void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5resetEPS5_(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %3, %"class.std::__1::__tree_node"* noundef null) #8
  ret %"class.std::__1::unique_ptr"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5resetEPS5_(%"class.std::__1::unique_ptr"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node"* noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::unique_ptr"*, align 8
  %4 = alloca %"class.std::__1::__tree_node"*, align 8
  %5 = alloca %"class.std::__1::__tree_node"*, align 8
  store %"class.std::__1::unique_ptr"* %0, %"class.std::__1::unique_ptr"** %3, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %4, align 8
  %6 = load %"class.std::__1::unique_ptr"*, %"class.std::__1::unique_ptr"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %6, i32 0, i32 0
  %8 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %7) #8
  %9 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %8, align 8
  store %"class.std::__1::__tree_node"* %9, %"class.std::__1::__tree_node"** %5, align 8
  %10 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %11 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %6, i32 0, i32 0
  %12 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_node"** @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %11) #8
  store %"class.std::__1::__tree_node"* %10, %"class.std::__1::__tree_node"** %12, align 8
  %13 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8
  %14 = icmp ne %"class.std::__1::__tree_node"* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.std::__1::unique_ptr", %"class.std::__1::unique_ptr"* %6, i32 0, i32 0
  %17 = call noundef nonnull align 8 dereferenceable(9) %"class.std::__1::__tree_node_destructor"* @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIjPvEES3_EENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE6secondEv(%"class.std::__1::__compressed_pair.35"* noundef nonnull align 8 dereferenceable(24) %16) #8
  %18 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8
  call void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEclEPS6_(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %17, %"class.std::__1::__tree_node"* noundef %18) #8
  br label %19

19:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEEclEPS6_(%"class.std::__1::__tree_node_destructor"* noundef nonnull align 8 dereferenceable(9) %0, %"class.std::__1::__tree_node"* noundef %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__tree_node_destructor"*, align 8
  %4 = alloca %"class.std::__1::__tree_node"*, align 8
  store %"class.std::__1::__tree_node_destructor"* %0, %"class.std::__1::__tree_node_destructor"** %3, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %4, align 8
  %5 = load %"class.std::__1::__tree_node_destructor"*, %"class.std::__1::__tree_node_destructor"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", %"class.std::__1::__tree_node_destructor"* %5, i32 0, i32 1
  %7 = load i8, i8* %6, align 8
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", %"class.std::__1::__tree_node_destructor"* %5, i32 0, i32 0
  %11 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %10, align 8
  %12 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %13 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %12, i32 0, i32 1
  %14 = invoke noundef %"struct.std::__1::pair"* @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIjPvEEE9__get_ptrERS3_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %13)
          to label %15 unwind label %25

15:                                               ; preds = %9
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE7destroyINS_4pairIKjS4_EEvvEEvRS7_PT_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %11, %"struct.std::__1::pair"* noundef %14)
          to label %16 unwind label %25

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16, %2
  %18 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %19 = icmp ne %"class.std::__1::__tree_node"* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", %"class.std::__1::__tree_node_destructor"* %5, i32 0, i32 0
  %22 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %21, align 8
  %23 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE10deallocateERS7_PS6_m(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %22, %"class.std::__1::__tree_node"* noundef %23, i64 noundef 1) #8
  br label %24

24:                                               ; preds = %20, %17
  ret void

25:                                               ; preds = %15, %9
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  call void @__clang_call_terminate(i8* %27) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE7destroyINS_4pairIKjS4_EEvvEEvRS7_PT_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::pair"* noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::allocator.14"*, align 8
  %4 = alloca %"struct.std::__1::pair"*, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %3, align 8
  store %"struct.std::__1::pair"* %1, %"struct.std::__1::pair"** %4, align 8
  %5 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE10deallocateERS7_PS6_m(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__1::__tree_node"* noundef %1, i64 noundef %2) #3 align 2 {
  %4 = alloca %"class.std::__1::allocator.14"*, align 8
  %5 = alloca %"class.std::__1::__tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %4, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %4, align 8
  %8 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE10deallocateEPS5_m(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %7, %"class.std::__1::__tree_node"* noundef %8, i64 noundef %9) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES3_EEE10deallocateEPS5_m(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__1::__tree_node"* noundef %1, i64 noundef %2) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::allocator.14"*, align 8
  %5 = alloca %"class.std::__1::__tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator.14"* %0, %"class.std::__1::allocator.14"** %4, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %4, align 8
  %8 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8
  %9 = bitcast %"class.std::__1::__tree_node"* %8 to i8*
  %10 = load i64, i64* %6, align 8
  %11 = mul i64 %10, 48
  invoke void @_ZNSt3__119__libcpp_deallocateEPvmm(i8* noundef %9, i64 noundef %11, i64 noundef 8)
          to label %12 unwind label %13

12:                                               ; preds = %3
  ret void

13:                                               ; preds = %3
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateEPvmm(i8* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newEm(i64 noundef %8) #8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %7, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_(i8* noundef %12, i64 noundef %13, i64 noundef %14)
  br label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* noundef %16, i64 noundef %17)
  br label %18

18:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_(i8* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %6, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_(i8* noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeIJEEEvPvmDpT_(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteIJPvEEEvDpT_(i8* noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_(i8* noundef %0, i64 noundef %1) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  call void @_ZdlPvSt11align_val_t(i8* noundef %5, i64 noundef %6) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(i8* noundef, i64 noundef) #14

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteIJPvEEEvDpT_(i8* noundef %0) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @_ZdlPv(i8* noundef %3) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #14

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_iterator"* @_ZNSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElEC2ES6_(%"class.std::__1::__tree_iterator"* noundef nonnull returned align 8 dereferenceable(8) %0, %"class.std::__1::__tree_node"* noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__tree_iterator"*, align 8
  %4 = alloca %"class.std::__1::__tree_node"*, align 8
  store %"class.std::__1::__tree_iterator"* %0, %"class.std::__1::__tree_iterator"** %3, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %4, align 8
  %5 = load %"class.std::__1::__tree_iterator"*, %"class.std::__1::__tree_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__tree_iterator", %"class.std::__1::__tree_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %8 = bitcast %"class.std::__1::__tree_node"* %7 to %"class.std::__1::__tree_end_node"*
  store %"class.std::__1::__tree_end_node"* %8, %"class.std::__1::__tree_end_node"** %6, align 8
  ret %"class.std::__1::__tree_iterator"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair.33"* @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS4_S3_EElEEbEC2IS8_RbLS3_0EEEOT_OT0_(%"struct.std::__1::pair.33"* noundef nonnull returned align 8 dereferenceable(9) %0, %"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %1, i8* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 align 2 {
  %4 = alloca %"struct.std::__1::pair.33"*, align 8
  %5 = alloca %"class.std::__1::__tree_iterator"*, align 8
  %6 = alloca i8*, align 8
  store %"struct.std::__1::pair.33"* %0, %"struct.std::__1::pair.33"** %4, align 8
  store %"class.std::__1::__tree_iterator"* %1, %"class.std::__1::__tree_iterator"** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"struct.std::__1::pair.33"*, %"struct.std::__1::pair.33"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.33", %"struct.std::__1::pair.33"* %7, i32 0, i32 0
  %9 = load %"class.std::__1::__tree_iterator"*, %"class.std::__1::__tree_iterator"** %5, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_iterator"* @_ZNSt3__17forwardINS_15__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS4_S3_EElEEEEOT_RNS_16remove_referenceIS9_E4typeE(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %9) #8
  %11 = bitcast %"class.std::__1::__tree_iterator"* %8 to i8*
  %12 = bitcast %"class.std::__1::__tree_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %"struct.std::__1::pair.33", %"struct.std::__1::pair.33"* %7, i32 0, i32 1
  %14 = load i8*, i8** %6, align 8
  %15 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt3__17forwardIRbEEOT_RNS_16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %14) #8
  %16 = load i8, i8* %15, align 1
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %13, align 8
  ret %"struct.std::__1::pair.33"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_iterator"* @_ZNSt3__17forwardINS_15__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS4_S3_EElEEEEOT_RNS_16remove_referenceIS9_E4typeE(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca %"class.std::__1::__tree_iterator"*, align 8
  store %"class.std::__1::__tree_iterator"* %0, %"class.std::__1::__tree_iterator"** %2, align 8
  %3 = load %"class.std::__1::__tree_iterator"*, %"class.std::__1::__tree_iterator"** %2, align 8
  ret %"class.std::__1::__tree_iterator"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt3__17forwardIRbEEOT_RNS_16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIjEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %0) #3 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::tuple"* @_ZNSt3__15tupleIJOjEEC1IJjELi0EEEDpOT_(%"class.std::__1::tuple"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::tuple"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::__1::tuple"* %0, %"class.std::__1::tuple"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call noundef %"class.std::__1::tuple"* @_ZNSt3__15tupleIJOjEEC2IJjELi0EEEDpOT_(%"class.std::__1::tuple"* noundef nonnull align 8 dereferenceable(8) %5, i32* noundef nonnull align 4 dereferenceable(4) %6) #8
  ret %"class.std::__1::tuple"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::tuple"* @_ZNSt3__15tupleIJOjEEC2IJjELi0EEEDpOT_(%"class.std::__1::tuple"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::tuple"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::__1::__tuple_indices", align 1
  %6 = alloca %"struct.std::__1::__tuple_types", align 1
  %7 = alloca %"struct.std::__1::__tuple_indices.38", align 1
  %8 = alloca %"struct.std::__1::__tuple_types.39", align 1
  store %"class.std::__1::tuple"* %0, %"class.std::__1::tuple"** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %"class.std::__1::tuple"*, %"class.std::__1::tuple"** %3, align 8
  %10 = getelementptr inbounds %"class.std::__1::tuple", %"class.std::__1::tuple"* %9, i32 0, i32 0
  %11 = load i32*, i32** %4, align 8
  %12 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIjEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %11) #8
  %13 = call noundef %"struct.std::__1::__tuple_impl"* @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOjEEC1IJLm0EEJS3_EJEJEJjEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(%"struct.std::__1::__tuple_impl"* noundef nonnull align 8 dereferenceable(8) %10, i32* noundef nonnull align 4 dereferenceable(4) %12) #8
  ret %"class.std::__1::tuple"* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__tuple_impl"* @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOjEEC1IJLm0EEJS3_EJEJEJjEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(%"struct.std::__1::__tuple_impl"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__tuple_indices", align 1
  %4 = alloca %"struct.std::__1::__tuple_types", align 1
  %5 = alloca %"struct.std::__1::__tuple_indices.38", align 1
  %6 = alloca %"struct.std::__1::__tuple_types.39", align 1
  %7 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %8 = alloca i32*, align 8
  store %"struct.std::__1::__tuple_impl"* %0, %"struct.std::__1::__tuple_impl"** %7, align 8
  store i32* %1, i32** %8, align 8
  %9 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %7, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call noundef %"struct.std::__1::__tuple_impl"* @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOjEEC2IJLm0EEJS3_EJEJEJjEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(%"struct.std::__1::__tuple_impl"* noundef nonnull align 8 dereferenceable(8) %9, i32* noundef nonnull align 4 dereferenceable(4) %10) #8
  ret %"struct.std::__1::__tuple_impl"* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__tuple_impl"* @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOjEEC2IJLm0EEJS3_EJEJEJjEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(%"struct.std::__1::__tuple_impl"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__tuple_indices", align 1
  %4 = alloca %"struct.std::__1::__tuple_types", align 1
  %5 = alloca %"struct.std::__1::__tuple_indices.38", align 1
  %6 = alloca %"struct.std::__1::__tuple_types.39", align 1
  %7 = alloca %"struct.std::__1::__tuple_impl"*, align 8
  %8 = alloca i32*, align 8
  store %"struct.std::__1::__tuple_impl"* %0, %"struct.std::__1::__tuple_impl"** %7, align 8
  store i32* %1, i32** %8, align 8
  %9 = load %"struct.std::__1::__tuple_impl"*, %"struct.std::__1::__tuple_impl"** %7, align 8
  %10 = bitcast %"struct.std::__1::__tuple_impl"* %9 to %"class.std::__1::__tuple_leaf"*
  %11 = load i32*, i32** %8, align 8
  %12 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIjEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %11) #8
  %13 = call noundef %"class.std::__1::__tuple_leaf"* @_ZNSt3__112__tuple_leafILm0EOjLb0EEC2IjvEEOT_(%"class.std::__1::__tuple_leaf"* noundef nonnull align 8 dereferenceable(8) %10, i32* noundef nonnull align 4 dereferenceable(4) %12) #8
  ret %"struct.std::__1::__tuple_impl"* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tuple_leaf"* @_ZNSt3__112__tuple_leafILm0EOjLb0EEC2IjvEEOT_(%"class.std::__1::__tuple_leaf"* noundef nonnull returned align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__tuple_leaf"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::__1::__tuple_leaf"* %0, %"class.std::__1::__tuple_leaf"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::__1::__tuple_leaf"*, %"class.std::__1::__tuple_leaf"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf"* %5, i32 0, i32 0
  %7 = load i32*, i32** %4, align 8
  %8 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt3__17forwardIjEEOT_RNS_16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %7) #8
  store i32* %8, i32** %6, align 8
  ret %"class.std::__1::__tuple_leaf"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__value_type"* @_ZNSt3__114pointer_traitsIPNS_12__value_typeIjPvEEE10pointer_toERS3_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__value_type"*, align 8
  store %"struct.std::__1::__value_type"* %0, %"struct.std::__1::__value_type"** %2, align 8
  %3 = load %"struct.std::__1::__value_type"*, %"struct.std::__1::__value_type"** %2, align 8
  %4 = call noundef %"struct.std::__1::__value_type"* @_ZNSt3__19addressofINS_12__value_typeIjPvEEEEPT_RS4_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %3) #8
  ret %"struct.std::__1::__value_type"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node"* @_ZNKSt3__115__tree_iteratorINS_12__value_typeIjPvEEPNS_11__tree_nodeIS3_S2_EElE8__get_npEv(%"class.std::__1::__tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree_iterator"*, align 8
  store %"class.std::__1::__tree_iterator"* %0, %"class.std::__1::__tree_iterator"** %2, align 8
  %3 = load %"class.std::__1::__tree_iterator"*, %"class.std::__1::__tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree_iterator", %"class.std::__1::__tree_iterator"* %3, i32 0, i32 0
  %5 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %4, align 8
  %6 = bitcast %"class.std::__1::__tree_end_node"* %5 to %"class.std::__1::__tree_node"*
  ret %"class.std::__1::__tree_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__value_type"* @_ZNSt3__19addressofINS_12__value_typeIjPvEEEEPT_RS4_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %0) #3 {
  %2 = alloca %"struct.std::__1::__value_type"*, align 8
  store %"struct.std::__1::__value_type"* %0, %"struct.std::__1::__value_type"** %2, align 8
  %3 = load %"struct.std::__1::__value_type"*, %"struct.std::__1::__value_type"** %2, align 8
  ret %"struct.std::__1::__value_type"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair"* @_ZNSt3__17launderINS_4pairIKjPvEEEEPT_S6_(%"struct.std::__1::pair"* noundef %0) #3 {
  %2 = alloca %"struct.std::__1::pair"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %2, align 8
  %3 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %2, align 8
  %4 = call noundef %"struct.std::__1::pair"* @_ZNSt3__19__launderINS_4pairIKjPvEEEEPT_S6_(%"struct.std::__1::pair"* noundef %3) #8
  ret %"struct.std::__1::pair"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair"* @_ZNSt3__19__launderINS_4pairIKjPvEEEEPT_S6_(%"struct.std::__1::pair"* noundef %0) #3 {
  %2 = alloca %"struct.std::__1::pair"*, align 8
  store %"struct.std::__1::pair"* %0, %"struct.std::__1::pair"** %2, align 8
  %3 = load %"struct.std::__1::pair"*, %"struct.std::__1::pair"** %2, align 8
  ret %"struct.std::__1::pair"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEED2Ev(%"class.std::__1::map.10"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map.10"*, align 8
  store %"class.std::__1::map.10"* %0, %"class.std::__1::map.10"** %2, align 8
  %3 = load %"class.std::__1::map.10"*, %"class.std::__1::map.10"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::map.10", %"class.std::__1::map.10"* %3, i32 0, i32 0
  %5 = call noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEED1Ev(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %4) #8
  ret %"class.std::__1::map.10"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEED1Ev(%"class.std::__1::__tree.11"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEED2Ev(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::__tree.11"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree.11"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEED2Ev(%"class.std::__1::__tree.11"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::__tree.11"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %2, align 8
  %3 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_node"* @_ZNKSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE6__rootEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %3) #8
  call void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_S2_EE(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %3, %"class.std::__1::__tree_node"* noundef %4) #8
  ret %"class.std::__1::__tree.11"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_S2_EE(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node"* noundef %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__tree.11"*, align 8
  %4 = alloca %"class.std::__1::__tree_node"*, align 8
  %5 = alloca %"class.std::__1::allocator.14"*, align 8
  store %"class.std::__1::__tree.11"* %0, %"class.std::__1::__tree.11"** %3, align 8
  store %"class.std::__1::__tree_node"* %1, %"class.std::__1::__tree_node"** %4, align 8
  %6 = load %"class.std::__1::__tree.11"*, %"class.std::__1::__tree.11"** %3, align 8
  %7 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %8 = icmp ne %"class.std::__1::__tree_node"* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %11 = bitcast %"class.std::__1::__tree_node"* %10 to %"class.std::__1::__tree_end_node"*
  %12 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %11, i32 0, i32 0
  %13 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %12, align 8
  %14 = bitcast %"class.std::__1::__tree_node_base"* %13 to %"class.std::__1::__tree_node"*
  call void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_S2_EE(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::__1::__tree_node"* noundef %14) #8
  %15 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %16 = bitcast %"class.std::__1::__tree_node"* %15 to %"class.std::__1::__tree_node_base"*
  %17 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %16, i32 0, i32 1
  %18 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %17, align 8
  %19 = bitcast %"class.std::__1::__tree_node_base"* %18 to %"class.std::__1::__tree_node"*
  call void @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_S2_EE(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::__1::__tree_node"* noundef %19) #8
  %20 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.14"* @_ZNSt3__16__treeINS_12__value_typeIjPvEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE12__node_allocEv(%"class.std::__1::__tree.11"* noundef nonnull align 8 dereferenceable(24) %6) #8
  store %"class.std::__1::allocator.14"* %20, %"class.std::__1::allocator.14"** %5, align 8
  %21 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %5, align 8
  %22 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  %23 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %22, i32 0, i32 1
  %24 = invoke noundef %"struct.std::__1::pair"* @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIjPvEEE9__get_ptrERS3_(%"struct.std::__1::__value_type"* noundef nonnull align 8 dereferenceable(16) %23)
          to label %25 unwind label %29

25:                                               ; preds = %9
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE7destroyINS_4pairIKjS4_EEvvEEvRS7_PT_(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %21, %"struct.std::__1::pair"* noundef %24)
  %26 = load %"class.std::__1::allocator.14"*, %"class.std::__1::allocator.14"** %5, align 8
  %27 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %4, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIjPvEES4_EEEEE10deallocateERS7_PS6_m(%"class.std::__1::allocator.14"* noundef nonnull align 1 dereferenceable(1) %26, %"class.std::__1::__tree_node"* noundef %27, i64 noundef 1) #8
  br label %28

28:                                               ; preds = %25, %2
  ret void

29:                                               ; preds = %9
  %30 = landingpad { i8*, i32 }
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::atomic"* @_ZNSt3__16atomicIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEC2ES5_(%"struct.std::__1::atomic"* noundef nonnull returned align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::atomic"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::__1::atomic"* %0, %"struct.std::__1::atomic"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"struct.std::__1::atomic"*, %"struct.std::__1::atomic"** %3, align 8
  %6 = bitcast %"struct.std::__1::atomic"* %5 to %"struct.std::__1::__atomic_base"*
  %7 = load i32, i32* %4, align 4
  %8 = call noundef %"struct.std::__1::__atomic_base"* @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EEC2ES5_(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %6, i32 noundef %7) #8
  ret %"struct.std::__1::atomic"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__atomic_base"* @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EEC2ES5_(%"struct.std::__1::__atomic_base"* noundef nonnull returned align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__atomic_base"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::__1::__atomic_base"* %0, %"struct.std::__1::__atomic_base"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = call noundef %"struct.std::__1::__cxx_atomic_impl"* @_ZNSt3__117__cxx_atomic_implIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusENS_22__cxx_atomic_base_implIS5_EEEC1ES5_(%"struct.std::__1::__cxx_atomic_impl"* noundef nonnull align 4 dereferenceable(4) %6, i32 noundef %7) #8
  ret %"struct.std::__1::__atomic_base"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__cxx_atomic_impl"* @_ZNSt3__117__cxx_atomic_implIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusENS_22__cxx_atomic_base_implIS5_EEEC1ES5_(%"struct.std::__1::__cxx_atomic_impl"* noundef nonnull returned align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__cxx_atomic_impl"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::__1::__cxx_atomic_impl"* %0, %"struct.std::__1::__cxx_atomic_impl"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"struct.std::__1::__cxx_atomic_impl"*, %"struct.std::__1::__cxx_atomic_impl"** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call noundef %"struct.std::__1::__cxx_atomic_impl"* @_ZNSt3__117__cxx_atomic_implIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusENS_22__cxx_atomic_base_implIS5_EEEC2ES5_(%"struct.std::__1::__cxx_atomic_impl"* noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %6) #8
  ret %"struct.std::__1::__cxx_atomic_impl"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__cxx_atomic_impl"* @_ZNSt3__117__cxx_atomic_implIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusENS_22__cxx_atomic_base_implIS5_EEEC2ES5_(%"struct.std::__1::__cxx_atomic_impl"* noundef nonnull returned align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__cxx_atomic_impl"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::__1::__cxx_atomic_impl"* %0, %"struct.std::__1::__cxx_atomic_impl"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"struct.std::__1::__cxx_atomic_impl"*, %"struct.std::__1::__cxx_atomic_impl"** %3, align 8
  %6 = bitcast %"struct.std::__1::__cxx_atomic_impl"* %5 to %"struct.std::__1::__cxx_atomic_base_impl"*
  %7 = load i32, i32* %4, align 4
  %8 = call noundef %"struct.std::__1::__cxx_atomic_base_impl"* @_ZNSt3__122__cxx_atomic_base_implIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEC2ES5_(%"struct.std::__1::__cxx_atomic_base_impl"* noundef nonnull align 4 dereferenceable(4) %6, i32 noundef %7) #8
  ret %"struct.std::__1::__cxx_atomic_impl"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__cxx_atomic_base_impl"* @_ZNSt3__122__cxx_atomic_base_implIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEC2ES5_(%"struct.std::__1::__cxx_atomic_base_impl"* noundef nonnull returned align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__cxx_atomic_base_impl"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::__1::__cxx_atomic_base_impl"* %0, %"struct.std::__1::__cxx_atomic_base_impl"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"struct.std::__1::__cxx_atomic_base_impl"*, %"struct.std::__1::__cxx_atomic_base_impl"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", %"struct.std::__1::__cxx_atomic_base_impl"* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  ret %"struct.std::__1::__cxx_atomic_base_impl"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexC2Ev(%"class.std::__1::mutex"* noundef nonnull returned align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::mutex"*, align 8
  store %"class.std::__1::mutex"* %0, %"class.std::__1::mutex"** %2, align 8
  %3 = load %"class.std::__1::mutex"*, %"class.std::__1::mutex"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::mutex", %"class.std::__1::mutex"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct._opaque_pthread_mutex_t, %struct._opaque_pthread_mutex_t* %4, i32 0, i32 0
  store i64 850045863, i64* %5, align 8
  %6 = getelementptr inbounds %struct._opaque_pthread_mutex_t, %struct._opaque_pthread_mutex_t* %4, i32 0, i32 1
  %7 = bitcast [56 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 56, i1 false)
  %8 = getelementptr inbounds [56 x i8], [56 x i8]* %6, i64 0, i64 0
  ret %"class.std::__1::mutex"* %3
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEED2Ev(%"class.std::__1::map"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::map"*, align 8
  store %"class.std::__1::map"* %0, %"class.std::__1::map"** %2, align 8
  %3 = load %"class.std::__1::map"*, %"class.std::__1::map"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::map", %"class.std::__1::map"* %3, i32 0, i32 0
  %5 = call noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEED1Ev(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %4) #8
  ret %"class.std::__1::map"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEED1Ev(%"class.std::__1::__tree"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::__tree"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %2, align 8
  %3 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEED2Ev(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::__tree"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__tree"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEED2Ev(%"class.std::__1::__tree"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::__tree"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %2, align 8
  %3 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_node.40"* @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE6__rootEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %3) #8
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE7destroyEPNS_11__tree_nodeIS9_S8_EE(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %3, %"class.std::__1::__tree_node.40"* noundef %4) #8
  ret %"class.std::__1::__tree"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE7destroyEPNS_11__tree_nodeIS9_S8_EE(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::__1::__tree_node.40"* noundef %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__tree"*, align 8
  %4 = alloca %"class.std::__1::__tree_node.40"*, align 8
  %5 = alloca %"class.std::__1::allocator.4"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %3, align 8
  store %"class.std::__1::__tree_node.40"* %1, %"class.std::__1::__tree_node.40"** %4, align 8
  %6 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %3, align 8
  %7 = load %"class.std::__1::__tree_node.40"*, %"class.std::__1::__tree_node.40"** %4, align 8
  %8 = icmp ne %"class.std::__1::__tree_node.40"* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %"class.std::__1::__tree_node.40"*, %"class.std::__1::__tree_node.40"** %4, align 8
  %11 = bitcast %"class.std::__1::__tree_node.40"* %10 to %"class.std::__1::__tree_end_node"*
  %12 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %11, i32 0, i32 0
  %13 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %12, align 8
  %14 = bitcast %"class.std::__1::__tree_node_base"* %13 to %"class.std::__1::__tree_node.40"*
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE7destroyEPNS_11__tree_nodeIS9_S8_EE(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::__1::__tree_node.40"* noundef %14) #8
  %15 = load %"class.std::__1::__tree_node.40"*, %"class.std::__1::__tree_node.40"** %4, align 8
  %16 = bitcast %"class.std::__1::__tree_node.40"* %15 to %"class.std::__1::__tree_node_base"*
  %17 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %16, i32 0, i32 1
  %18 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %17, align 8
  %19 = bitcast %"class.std::__1::__tree_node_base"* %18 to %"class.std::__1::__tree_node.40"*
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE7destroyEPNS_11__tree_nodeIS9_S8_EE(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::__1::__tree_node.40"* noundef %19) #8
  %20 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.4"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE12__node_allocEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %6) #8
  store %"class.std::__1::allocator.4"* %20, %"class.std::__1::allocator.4"** %5, align 8
  %21 = load %"class.std::__1::allocator.4"*, %"class.std::__1::allocator.4"** %5, align 8
  %22 = load %"class.std::__1::__tree_node.40"*, %"class.std::__1::__tree_node.40"** %4, align 8
  %23 = getelementptr inbounds %"class.std::__1::__tree_node.40", %"class.std::__1::__tree_node.40"* %22, i32 0, i32 1
  %24 = invoke noundef %"struct.std::__1::pair.42"* @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEE9__get_ptrERS9_(%"struct.std::__1::__value_type.41"* noundef nonnull align 8 dereferenceable(32) %23)
          to label %25 unwind label %30

25:                                               ; preds = %9
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEEE7destroyINS_4pairIKS8_S9_EEvvEEvRSC_PT_(%"class.std::__1::allocator.4"* noundef nonnull align 1 dereferenceable(1) %21, %"struct.std::__1::pair.42"* noundef %24)
          to label %26 unwind label %30

26:                                               ; preds = %25
  %27 = load %"class.std::__1::allocator.4"*, %"class.std::__1::allocator.4"** %5, align 8
  %28 = load %"class.std::__1::__tree_node.40"*, %"class.std::__1::__tree_node.40"** %4, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEEE10deallocateERSC_PSB_m(%"class.std::__1::allocator.4"* noundef nonnull align 1 dereferenceable(1) %27, %"class.std::__1::__tree_node.40"* noundef %28, i64 noundef 1) #8
  br label %29

29:                                               ; preds = %26, %2
  ret void

30:                                               ; preds = %25, %9
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  call void @__clang_call_terminate(i8* %32) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_node.40"* @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE6__rootEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %2, align 8
  %3 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %2, align 8
  %4 = call noundef %"class.std::__1::__tree_end_node"* @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE10__end_nodeEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %4, i32 0, i32 0
  %6 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8
  %7 = bitcast %"class.std::__1::__tree_node_base"* %6 to %"class.std::__1::__tree_node.40"*
  ret %"class.std::__1::__tree_node.40"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.4"* @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE12__node_allocEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %2, align 8
  %3 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree", %"class.std::__1::__tree"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.4"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEE6secondEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::allocator.4"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEEE7destroyINS_4pairIKS8_S9_EEvvEEvRSC_PT_(%"class.std::__1::allocator.4"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::pair.42"* noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::allocator.4"*, align 8
  %4 = alloca %"struct.std::__1::pair.42"*, align 8
  store %"class.std::__1::allocator.4"* %0, %"class.std::__1::allocator.4"** %3, align 8
  store %"struct.std::__1::pair.42"* %1, %"struct.std::__1::pair.42"** %4, align 8
  %5 = load %"struct.std::__1::pair.42"*, %"struct.std::__1::pair.42"** %4, align 8
  %6 = call noundef %"struct.std::__1::pair.42"* @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvED1Ev(%"struct.std::__1::pair.42"* noundef nonnull align 8 dereferenceable(32) %5) #8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair.42"* @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEE9__get_ptrERS9_(%"struct.std::__1::__value_type.41"* noundef nonnull align 8 dereferenceable(32) %0) #0 align 2 {
  %2 = alloca %"struct.std::__1::__value_type.41"*, align 8
  store %"struct.std::__1::__value_type.41"* %0, %"struct.std::__1::__value_type.41"** %2, align 8
  %3 = load %"struct.std::__1::__value_type.41"*, %"struct.std::__1::__value_type.41"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(32) %"struct.std::__1::pair.42"* @_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvE11__get_valueEv(%"struct.std::__1::__value_type.41"* noundef nonnull align 8 dereferenceable(32) %3)
  %5 = call noundef %"struct.std::__1::pair.42"* @_ZNSt3__19addressofINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEPT_RSB_(%"struct.std::__1::pair.42"* noundef nonnull align 8 dereferenceable(32) %4) #8
  ret %"struct.std::__1::pair.42"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEEE10deallocateERSC_PSB_m(%"class.std::__1::allocator.4"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__1::__tree_node.40"* noundef %1, i64 noundef %2) #3 align 2 {
  %4 = alloca %"class.std::__1::allocator.4"*, align 8
  %5 = alloca %"class.std::__1::__tree_node.40"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator.4"* %0, %"class.std::__1::allocator.4"** %4, align 8
  store %"class.std::__1::__tree_node.40"* %1, %"class.std::__1::__tree_node.40"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator.4"*, %"class.std::__1::allocator.4"** %4, align 8
  %8 = load %"class.std::__1::__tree_node.40"*, %"class.std::__1::__tree_node.40"** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEES8_EEE10deallocateEPSA_m(%"class.std::__1::allocator.4"* noundef nonnull align 1 dereferenceable(1) %7, %"class.std::__1::__tree_node.40"* noundef %8, i64 noundef %9) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.4"* @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEE6secondEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.1"*, align 8
  store %"class.std::__1::__compressed_pair.1"* %0, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.1"*, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.1"* %3 to %"struct.std::__1::__compressed_pair_elem.3"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.4"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator.4"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.4"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEES9_EEEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.3"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.3"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.3"* %0, %"struct.std::__1::__compressed_pair_elem.3"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.3"*, %"struct.std::__1::__compressed_pair_elem.3"** %2, align 8
  %4 = bitcast %"struct.std::__1::__compressed_pair_elem.3"* %3 to %"class.std::__1::allocator.4"*
  ret %"class.std::__1::allocator.4"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair.42"* @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvED1Ev(%"struct.std::__1::pair.42"* noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::pair.42"*, align 8
  store %"struct.std::__1::pair.42"* %0, %"struct.std::__1::pair.42"** %2, align 8
  %3 = load %"struct.std::__1::pair.42"*, %"struct.std::__1::pair.42"** %2, align 8
  %4 = call noundef %"struct.std::__1::pair.42"* @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvED2Ev(%"struct.std::__1::pair.42"* noundef nonnull align 8 dereferenceable(32) %3) #8
  ret %"struct.std::__1::pair.42"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair.42"* @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvED2Ev(%"struct.std::__1::pair.42"* noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::pair.42"*, align 8
  store %"struct.std::__1::pair.42"* %0, %"struct.std::__1::pair.42"** %2, align 8
  %3 = load %"struct.std::__1::pair.42"*, %"struct.std::__1::pair.42"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::pair.42", %"struct.std::__1::pair.42"* %3, i32 0, i32 0
  %5 = call noundef %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* noundef nonnull align 8 dereferenceable(24) %4) #8
  ret %"struct.std::__1::pair.42"* %3
}

; Function Attrs: nounwind
declare noundef %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair.42"* @_ZNSt3__19addressofINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEPT_RSB_(%"struct.std::__1::pair.42"* noundef nonnull align 8 dereferenceable(32) %0) #3 {
  %2 = alloca %"struct.std::__1::pair.42"*, align 8
  store %"struct.std::__1::pair.42"* %0, %"struct.std::__1::pair.42"** %2, align 8
  %3 = load %"struct.std::__1::pair.42"*, %"struct.std::__1::pair.42"** %2, align 8
  ret %"struct.std::__1::pair.42"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) %"struct.std::__1::pair.42"* @_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvE11__get_valueEv(%"struct.std::__1::__value_type.41"* noundef nonnull align 8 dereferenceable(32) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__value_type.41"*, align 8
  store %"struct.std::__1::__value_type.41"* %0, %"struct.std::__1::__value_type.41"** %2, align 8
  %3 = load %"struct.std::__1::__value_type.41"*, %"struct.std::__1::__value_type.41"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__value_type.41", %"struct.std::__1::__value_type.41"* %3, i32 0, i32 0
  %5 = call noundef %"struct.std::__1::pair.42"* @_ZNSt3__19addressofINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEPT_RSB_(%"struct.std::__1::pair.42"* noundef nonnull align 8 dereferenceable(32) %4) #8
  %6 = call noundef %"struct.std::__1::pair.42"* @_ZNSt3__17launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEPT_SC_(%"struct.std::__1::pair.42"* noundef %5) #8
  ret %"struct.std::__1::pair.42"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair.42"* @_ZNSt3__17launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEPT_SC_(%"struct.std::__1::pair.42"* noundef %0) #3 {
  %2 = alloca %"struct.std::__1::pair.42"*, align 8
  store %"struct.std::__1::pair.42"* %0, %"struct.std::__1::pair.42"** %2, align 8
  %3 = load %"struct.std::__1::pair.42"*, %"struct.std::__1::pair.42"** %2, align 8
  %4 = call noundef %"struct.std::__1::pair.42"* @_ZNSt3__19__launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEPT_SC_(%"struct.std::__1::pair.42"* noundef %3) #8
  ret %"struct.std::__1::pair.42"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::pair.42"* @_ZNSt3__19__launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEPT_SC_(%"struct.std::__1::pair.42"* noundef %0) #3 {
  %2 = alloca %"struct.std::__1::pair.42"*, align 8
  store %"struct.std::__1::pair.42"* %0, %"struct.std::__1::pair.42"** %2, align 8
  %3 = load %"struct.std::__1::pair.42"*, %"struct.std::__1::pair.42"** %2, align 8
  ret %"struct.std::__1::pair.42"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEES8_EEE10deallocateEPSA_m(%"class.std::__1::allocator.4"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__1::__tree_node.40"* noundef %1, i64 noundef %2) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::allocator.4"*, align 8
  %5 = alloca %"class.std::__1::__tree_node.40"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator.4"* %0, %"class.std::__1::allocator.4"** %4, align 8
  store %"class.std::__1::__tree_node.40"* %1, %"class.std::__1::__tree_node.40"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator.4"*, %"class.std::__1::allocator.4"** %4, align 8
  %8 = load %"class.std::__1::__tree_node.40"*, %"class.std::__1::__tree_node.40"** %5, align 8
  %9 = bitcast %"class.std::__1::__tree_node.40"* %8 to i8*
  %10 = load i64, i64* %6, align 8
  %11 = mul i64 %10, 64
  invoke void @_ZNSt3__119__libcpp_deallocateEPvmm(i8* noundef %9, i64 noundef %11, i64 noundef 8)
          to label %12 unwind label %13

12:                                               ; preds = %3
  ret void

13:                                               ; preds = %3
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__tree_end_node"* @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_19__map_value_compareIS7_S9_NS_4lessIS7_EELb1EEENS5_IS9_EEE10__end_nodeEv(%"class.std::__1::__tree"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__tree"*, align 8
  store %"class.std::__1::__tree"* %0, %"class.std::__1::__tree"** %2, align 8
  %3 = load %"class.std::__1::__tree"*, %"class.std::__1::__tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__tree", %"class.std::__1::__tree"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %4) #8
  %6 = call noundef %"class.std::__1::__tree_end_node"* @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_(%"class.std::__1::__tree_end_node"* noundef nonnull align 8 dereferenceable(8) %5) #8
  ret %"class.std::__1::__tree_end_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EES3_EEEEE5firstEv(%"class.std::__1::__compressed_pair.1"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.1"*, align 8
  store %"class.std::__1::__compressed_pair.1"* %0, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.1"*, %"class.std::__1::__compressed_pair.1"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.1"* %3 to %"struct.std::__1::__compressed_pair_elem.2"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__tree_end_node"* @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.2"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::__tree_end_node"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEED1Ev(%"class.std::__1::vector"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = call noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEED2Ev(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"class.std::__1::vector"* %3
}

; Function Attrs: nounwind
declare noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"* noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #11

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEED2Ev(%"class.std::__1::vector"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  %3 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %3, align 8
  %4 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %3, align 8
  store %"class.std::__1::vector"* %4, %"class.std::__1::vector"** %2, align 8
  call void @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE17__annotate_deleteEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %5 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  call void @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEE7__clearEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %9 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEE7__allocEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %10 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %4, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = call noundef i64 @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE8capacityEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %4) #8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPKvEEE10deallocateERS4_PS3_m(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %9, i8** noundef %11, i64 noundef %12) #8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  ret %"class.std::__1::vector"* %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE17__annotate_deleteEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = call noundef i8** @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE4dataEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = bitcast i8** %4 to i8*
  %6 = call noundef i8** @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE4dataEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %7 = call noundef i64 @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE8capacityEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  %9 = bitcast i8** %8 to i8*
  %10 = call noundef i8** @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE4dataEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %11 = call noundef i64 @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE4sizeEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = bitcast i8** %12 to i8*
  %14 = call noundef i8** @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE4dataEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %15 = call noundef i64 @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE8capacityEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = bitcast i8** %16 to i8*
  call void @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE31__annotate_contiguous_containerES2_S2_S2_S2_(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3, i8* noundef %5, i8* noundef %9, i8* noundef %13, i8* noundef %17) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEE7__clearEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  call void @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEE22__base_destruct_at_endEPS2_(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3, i8** noundef %5) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIPKvEEE10deallocateERS4_PS3_m(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1, i64 noundef %2) #3 align 2 {
  %4 = alloca %"class.std::__1::allocator"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @_ZNSt3__19allocatorIPKvE10deallocateEPS2_m(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %7, i8** noundef %8, i64 noundef %9) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEE7__allocEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE6secondEv(%"class.std::__1::__compressed_pair"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE8capacityEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE9__end_capEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %3, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE31__annotate_contiguous_containerES2_S2_S2_S2_(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4) #3 align 2 {
  %6 = alloca %"class.std::__1::vector"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE4dataEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = call noundef i8** @_ZNSt3__112__to_addressIPKvEEPT_S4_(i8** noundef %5) #8
  ret i8** %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE4sizeEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %3, i32 0, i32 1
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %3, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__112__to_addressIPKvEEPT_S4_(i8** noundef %0) #3 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  ret i8** %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEE22__base_destruct_at_endEPS2_(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::vector"*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %6, i32 0, i32 1
  %8 = load i8**, i8*** %7, align 8
  store i8** %8, i8*** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = icmp ne i8** %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__16vectorIPKvNS_9allocatorIS2_EEE7__allocEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %6) #8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 -1
  store i8** %16, i8*** %5, align 8
  %17 = call noundef i8** @_ZNSt3__112__to_addressIPKvEEPT_S4_(i8** noundef %16) #8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPKvEEE7destroyIS3_vEEvRS4_PT_(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %14, i8** noundef %17)
          to label %18 unwind label %22

18:                                               ; preds = %13
  br label %9, !llvm.loop !12

19:                                               ; preds = %9
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %6, i32 0, i32 1
  store i8** %20, i8*** %21, align 8
  ret void

22:                                               ; preds = %13
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  call void @__clang_call_terminate(i8* %24) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPKvEEE7destroyIS3_vEEvRS4_PT_(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1) #0 align 2 {
  %3 = alloca %"class.std::__1::allocator"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  call void @_ZNSt3__19allocatorIPKvE7destroyEPS2_(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %5, i8** noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIPKvE7destroyEPS2_(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::allocator"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIPKvE10deallocateEPS2_m(%"class.std::__1::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1, i64 noundef %2) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::allocator"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator"* %0, %"class.std::__1::allocator"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = bitcast i8** %8 to i8*
  %10 = load i64, i64* %6, align 8
  %11 = mul i64 %10, 8
  invoke void @_ZNSt3__119__libcpp_deallocateEPvmm(i8* noundef %9, i64 noundef %11, i64 noundef 8)
          to label %12 unwind label %13

12:                                               ; preds = %3
  ret void

13:                                               ; preds = %3
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE6secondEv(%"class.std::__1::__compressed_pair"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair"* %3 to %"struct.std::__1::__compressed_pair_elem.0"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPKvEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPKvEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.0"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %0, %"struct.std::__1::__compressed_pair_elem.0"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %2, align 8
  %4 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %3 to %"class.std::__1::allocator"*
  ret %"class.std::__1::allocator"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__16vectorIPKvNS_9allocatorIS2_EEE9__end_capEv(%"class.std::__1::vector"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector"*, align 8
  store %"class.std::__1::vector"* %0, %"class.std::__1::vector"** %2, align 8
  %3 = load %"class.std::__1::vector"*, %"class.std::__1::vector"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE5firstEv(%"class.std::__1::__compressed_pair"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE5firstEv(%"class.std::__1::__compressed_pair"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %0, %"class.std::__1::__compressed_pair"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair"* %3 to %"struct.std::__1::__compressed_pair_elem"*
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__122__compressed_pair_elemIPPKvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__122__compressed_pair_elemIPPKvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %0, %"struct.std::__1::__compressed_pair_elem"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %3, i32 0, i32 0
  ret i8*** %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEiNS_18rlbox_test_sandboxEE4implEv(%"class.rlbox::tainted_base_impl.31"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"class.rlbox::tainted_base_impl.31"*, align 8
  store %"class.rlbox::tainted_base_impl.31"* %0, %"class.rlbox::tainted_base_impl.31"** %2, align 8
  %3 = load %"class.rlbox::tainted_base_impl.31"*, %"class.rlbox::tainted_base_impl.31"** %2, align 8
  %4 = bitcast %"class.rlbox::tainted_base_impl.31"* %3 to %"class.rlbox::tainted_volatile.30"*
  ret %"class.rlbox::tainted_volatile.30"* %4
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef i32 @_ZNK5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEE13get_raw_valueEv(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %0) #0 align 2 {
  %2 = alloca %"class.rlbox::tainted_volatile.30"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %"class.rlbox::tainted_volatile.30"* %0, %"class.rlbox::tainted_volatile.30"** %2, align 8
  %6 = load %"class.rlbox::tainted_volatile.30"*, %"class.rlbox::tainted_volatile.30"** %2, align 8
  %7 = getelementptr inbounds %"class.rlbox::tainted_volatile.30", %"class.rlbox::tainted_volatile.30"* %6, i32 0, i32 0
  %8 = bitcast i32* %7 to i8*
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %5, align 8
  %10 = getelementptr inbounds %"class.rlbox::tainted_volatile.30", %"class.rlbox::tainted_volatile.30"* %6, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  call void @_ZN5rlbox6detail22convert_type_non_classINS_18rlbox_test_sandboxELNS0_21adjust_type_directionE1ELNS0_19adjust_type_contextE0EiViEEvRT2_RKT3_PKvPNS_13rlbox_sandboxIT_EE(i32* noundef nonnull align 4 dereferenceable(4) %3, i32* noundef nonnull align 4 dereferenceable(4) %10, i8* noundef %11, %"class.rlbox::rlbox_sandbox"* noundef null)
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox6detail22convert_type_non_classINS_18rlbox_test_sandboxELNS0_21adjust_type_directionE1ELNS0_19adjust_type_contextE0EiViEEvRT2_RKT3_PKvPNS_13rlbox_sandboxIT_EE(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, i8* noundef %2, %"class.rlbox::rlbox_sandbox"* noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %"class.rlbox::rlbox_sandbox"* %3, %"class.rlbox::rlbox_sandbox"** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  call void @_ZN5rlbox6detail33convert_type_fundamental_or_arrayIiViEEvRT_RKT0_(i32* noundef nonnull align 4 dereferenceable(4) %9, i32* noundef nonnull align 4 dereferenceable(4) %10)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox6detail33convert_type_fundamental_or_arrayIiViEEvRT_RKT0_(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %5, align 1
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  call void @_ZN5rlbox6detail24convert_type_fundamentalIiiEEvRT_RVKT0_(i32* noundef nonnull align 4 dereferenceable(4) %6, i32* noundef nonnull align 4 dereferenceable(4) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox6detail24convert_type_fundamentalIiiEEvRT_RVKT0_(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #3 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 1, i8* %9, align 1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load volatile i32, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  store i32 %12, i32* %13, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE23compare_exchange_strongERS5_S5_NS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3) #3 align 2 {
  %5 = alloca %"struct.std::__1::__atomic_base"*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %"struct.std::__1::__atomic_base"* %0, %"struct.std::__1::__atomic_base"** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %5, align 8
  %10 = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::__1::__cxx_atomic_impl"* %10 to %"struct.std::__1::__cxx_atomic_base_impl"*
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call noundef zeroext i1 @_ZNSt3__136__cxx_atomic_compare_exchange_strongIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEEbPNS_22__cxx_atomic_base_implIT_EEPS7_S7_NS_12memory_orderESB_(%"struct.std::__1::__cxx_atomic_base_impl"* noundef %11, i32* noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #8
  ret i1 %16
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %0, i8* noundef %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = zext i1 %0 to i8
  store i8 %7, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %8 = load i8, i8* %3, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = call i8* @__cxa_allocate_exception(i64 16) #8
  %12 = bitcast i8* %11 to %"class.std::runtime_error"*
  %13 = load i8*, i8** %4, align 8
  %14 = invoke noundef %"class.std::runtime_error"* @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %12, i8* noundef %13)
          to label %15 unwind label %16

15:                                               ; preds = %10
  call void @__cxa_throw(i8* %11, i8* bitcast (i8** @_ZTISt13runtime_error to i8*), i8* bitcast (%"class.std::runtime_error"* (%"class.std::runtime_error"*)* @_ZNSt13runtime_errorD1Ev to i8*)) #18
  unreachable

16:                                               ; preds = %10
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %5, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %6, align 4
  call void @__cxa_free_exception(i8* %11) #8
  br label %21

20:                                               ; preds = %2
  ret void

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEEC1ERS1_(%"class.std::__1::unique_lock"* noundef nonnull returned align 8 dereferenceable(9) %0, %"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #1 align 2 {
  %3 = alloca %"class.std::__1::unique_lock"*, align 8
  %4 = alloca %"class.std::__1::shared_timed_mutex"*, align 8
  store %"class.std::__1::unique_lock"* %0, %"class.std::__1::unique_lock"** %3, align 8
  store %"class.std::__1::shared_timed_mutex"* %1, %"class.std::__1::shared_timed_mutex"** %4, align 8
  %5 = load %"class.std::__1::unique_lock"*, %"class.std::__1::unique_lock"** %3, align 8
  %6 = load %"class.std::__1::shared_timed_mutex"*, %"class.std::__1::shared_timed_mutex"** %4, align 8
  %7 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEEC2ERS1_(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %5, %"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %6)
  ret %"class.std::__1::unique_lock"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__14findINS_11__wrap_iterIPPvEEPN5rlbox13rlbox_sandboxINS5_18rlbox_test_sandboxEEEEET_SA_SA_RKT0_(i64 %0, i64 %1, %"class.rlbox::rlbox_sandbox"** noundef nonnull align 8 dereferenceable(8) %2) #3 {
  %4 = alloca %"class.std::__1::__wrap_iter", align 8
  %5 = alloca %"class.std::__1::__wrap_iter", align 8
  %6 = alloca %"class.std::__1::__wrap_iter", align 8
  %7 = alloca %"class.rlbox::rlbox_sandbox"**, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %5, i32 0, i32 0
  %9 = inttoptr i64 %0 to i8**
  store i8** %9, i8*** %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %6, i32 0, i32 0
  %11 = inttoptr i64 %1 to i8**
  store i8** %11, i8*** %10, align 8
  store %"class.rlbox::rlbox_sandbox"** %2, %"class.rlbox::rlbox_sandbox"*** %7, align 8
  br label %12

12:                                               ; preds = %23, %3
  %13 = call noundef zeroext i1 @_ZNSt3__1neIPPvEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %6) #8
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNKSt3__111__wrap_iterIPPvEdeEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %5) #8
  %16 = load i8*, i8** %15, align 8
  %17 = load %"class.rlbox::rlbox_sandbox"**, %"class.rlbox::rlbox_sandbox"*** %7, align 8
  %18 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %17, align 8
  %19 = bitcast %"class.rlbox::rlbox_sandbox"* %18 to i8*
  %20 = icmp eq i8* %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %25

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPPvEppEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %12, !llvm.loop !13

25:                                               ; preds = %21, %12
  %26 = bitcast %"class.std::__1::__wrap_iter"* %4 to i8*
  %27 = bitcast %"class.std::__1::__wrap_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %4, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = ptrtoint i8** %29 to i64
  ret i64 %30
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  %4 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = call i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4, i8** noundef %6) #8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to i8**
  store i8** %9, i8*** %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = ptrtoint i8** %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  %4 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %4, i32 0, i32 1
  %6 = load i8**, i8*** %5, align 8
  %7 = call i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4, i8** noundef %6) #8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to i8**
  store i8** %9, i8*** %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %2, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = ptrtoint i8** %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neIPPvEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %1) #3 {
  %3 = alloca %"class.std::__1::__wrap_iter"*, align 8
  %4 = alloca %"class.std::__1::__wrap_iter"*, align 8
  store %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"** %3, align 8
  store %"class.std::__1::__wrap_iter"* %1, %"class.std::__1::__wrap_iter"** %4, align 8
  %5 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %3, align 8
  %6 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %4, align 8
  %7 = call noundef zeroext i1 @_ZNSt3__1eqIPPvEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %6) #8
  %8 = xor i1 %7, true
  ret i1 %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5eraseENS_11__wrap_iterIPKS1_EE(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i64 %1) #0 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = alloca %"class.std::__1::__wrap_iter.49", align 8
  %5 = alloca %"class.std::__1::vector.22"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::__wrap_iter.49", align 8
  %8 = alloca i8**, align 8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %4, i32 0, i32 0
  %10 = inttoptr i64 %1 to i8**
  store i8** %10, i8*** %9, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %5, align 8
  %11 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %5, align 8
  %12 = call i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE6cbeginEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %11) #8
  %13 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %7, i32 0, i32 0
  %14 = inttoptr i64 %12 to i8**
  store i8** %14, i8*** %13, align 8
  %15 = call noundef i64 @_ZNSt3__1miIPKPvS3_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %4, %"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %7) #8
  store i64 %15, i64* %6, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %11, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8** %19, i8*** %8, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %11, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = call noundef i8** @_ZNSt3__14moveIPPvS2_EET0_T_S4_S3_(i8** noundef %21, i8** noundef %23, i8** noundef %24)
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %11, i8** noundef %25) #8
  %26 = load i8**, i8*** %8, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 -1
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE27__invalidate_iterators_pastEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %11, i8** noundef %27)
  %28 = load i8**, i8*** %8, align 8
  %29 = call i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %11, i8** noundef %28) #8
  %30 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i32 0, i32 0
  %31 = inttoptr i64 %29 to i8**
  store i8** %31, i8*** %30, align 8
  %32 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = ptrtoint i8** %33 to i64
  ret i64 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC1IPS1_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueEvE4typeE(%"class.std::__1::__wrap_iter.49"* noundef nonnull returned align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %1, i8* noundef %2) unnamed_addr #4 align 2 {
  %4 = alloca %"class.std::__1::__wrap_iter.49"*, align 8
  %5 = alloca %"class.std::__1::__wrap_iter"*, align 8
  %6 = alloca i8*, align 8
  store %"class.std::__1::__wrap_iter.49"* %0, %"class.std::__1::__wrap_iter.49"** %4, align 8
  store %"class.std::__1::__wrap_iter"* %1, %"class.std::__1::__wrap_iter"** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.std::__1::__wrap_iter.49"*, %"class.std::__1::__wrap_iter.49"** %4, align 8
  %8 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC2IPS1_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueEvE4typeE(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %7, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %8, i8* noundef %9) #8
  ret %"class.std::__1::__wrap_iter.49"* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEED1Ev(%"class.std::__1::unique_lock"* noundef nonnull returned align 8 dereferenceable(9) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::unique_lock"*, align 8
  store %"class.std::__1::unique_lock"* %0, %"class.std::__1::unique_lock"** %2, align 8
  %3 = load %"class.std::__1::unique_lock"*, %"class.std::__1::unique_lock"** %2, align 8
  %4 = call noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEED2Ev(%"class.std::__1::unique_lock"* noundef nonnull align 8 dereferenceable(9) %3) #8
  ret %"class.std::__1::unique_lock"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE5storeES5_NS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, i32 noundef %2) #3 align 2 {
  %4 = alloca %"struct.std::__1::__atomic_base"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %"struct.std::__1::__atomic_base"* %0, %"struct.std::__1::__atomic_base"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::__1::__cxx_atomic_impl"* %8 to %"struct.std::__1::__cxx_atomic_base_impl"*
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  call void @_ZNSt3__118__cxx_atomic_storeIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEEvPNS_22__cxx_atomic_base_implIT_EES7_NS_12memory_orderE(%"struct.std::__1::__cxx_atomic_base_impl"* noundef %9, i32 noundef %10, i32 noundef %11) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox18rlbox_test_sandbox20impl_destroy_sandboxEv(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %0) #3 align 2 {
  %2 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %3 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void @_ZdaPv(i8* noundef %6) #20
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__136__cxx_atomic_compare_exchange_strongIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEEbPNS_22__cxx_atomic_base_implIT_EEPS7_S7_NS_12memory_orderESB_(%"struct.std::__1::__cxx_atomic_base_impl"* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca %"struct.std::__1::__cxx_atomic_base_impl"*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %"struct.std::__1::__cxx_atomic_base_impl"* %0, %"struct.std::__1::__cxx_atomic_base_impl"** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %"struct.std::__1::__cxx_atomic_base_impl"*, %"struct.std::__1::__cxx_atomic_base_impl"** %6, align 8
  %14 = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", %"struct.std::__1::__cxx_atomic_base_impl"* %13, i32 0, i32 0
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = invoke noundef i32 @_ZNSt3__118__to_failure_orderENS_12memory_orderE(i32 noundef %18)
          to label %20 unwind label %169

20:                                               ; preds = %5
  switch i32 %15, label %21 [
    i32 1, label %22
    i32 2, label %22
    i32 3, label %23
    i32 4, label %24
    i32 5, label %25
  ]

21:                                               ; preds = %20
  switch i32 %19, label %29 [
    i32 1, label %35
    i32 2, label %35
    i32 5, label %41
  ]

22:                                               ; preds = %20, %20
  switch i32 %19, label %57 [
    i32 1, label %63
    i32 2, label %63
    i32 5, label %69
  ]

23:                                               ; preds = %20
  switch i32 %19, label %85 [
    i32 1, label %91
    i32 2, label %91
    i32 5, label %97
  ]

24:                                               ; preds = %20
  switch i32 %19, label %113 [
    i32 1, label %119
    i32 2, label %119
    i32 5, label %125
  ]

25:                                               ; preds = %20
  switch i32 %19, label %141 [
    i32 1, label %147
    i32 2, label %147
    i32 5, label %153
  ]

26:                                               ; preds = %159, %131, %103, %75, %47
  %27 = load i8, i8* %12, align 1
  %28 = trunc i8 %27 to i1
  ret i1 %28

29:                                               ; preds = %21
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = cmpxchg i32* %14, i32 %30, i32 %31 monotonic monotonic, align 4
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %49, label %48

35:                                               ; preds = %21, %21
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %11, align 4
  %38 = cmpxchg i32* %14, i32 %36, i32 %37 monotonic acquire, align 4
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %52, label %51

41:                                               ; preds = %21
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %11, align 4
  %44 = cmpxchg i32* %14, i32 %42, i32 %43 monotonic seq_cst, align 4
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %55, label %54

47:                                               ; preds = %55, %52, %49
  br label %26

48:                                               ; preds = %29
  store i32 %33, i32* %16, align 4
  br label %49

49:                                               ; preds = %48, %29
  %50 = zext i1 %34 to i8
  store i8 %50, i8* %12, align 1
  br label %47

51:                                               ; preds = %35
  store i32 %39, i32* %16, align 4
  br label %52

52:                                               ; preds = %51, %35
  %53 = zext i1 %40 to i8
  store i8 %53, i8* %12, align 1
  br label %47

54:                                               ; preds = %41
  store i32 %45, i32* %16, align 4
  br label %55

55:                                               ; preds = %54, %41
  %56 = zext i1 %46 to i8
  store i8 %56, i8* %12, align 1
  br label %47

57:                                               ; preds = %22
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %11, align 4
  %60 = cmpxchg i32* %14, i32 %58, i32 %59 acquire monotonic, align 4
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %77, label %76

63:                                               ; preds = %22, %22
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %11, align 4
  %66 = cmpxchg i32* %14, i32 %64, i32 %65 acquire acquire, align 4
  %67 = extractvalue { i32, i1 } %66, 0
  %68 = extractvalue { i32, i1 } %66, 1
  br i1 %68, label %80, label %79

69:                                               ; preds = %22
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %11, align 4
  %72 = cmpxchg i32* %14, i32 %70, i32 %71 acquire seq_cst, align 4
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %83, label %82

75:                                               ; preds = %83, %80, %77
  br label %26

76:                                               ; preds = %57
  store i32 %61, i32* %16, align 4
  br label %77

77:                                               ; preds = %76, %57
  %78 = zext i1 %62 to i8
  store i8 %78, i8* %12, align 1
  br label %75

79:                                               ; preds = %63
  store i32 %67, i32* %16, align 4
  br label %80

80:                                               ; preds = %79, %63
  %81 = zext i1 %68 to i8
  store i8 %81, i8* %12, align 1
  br label %75

82:                                               ; preds = %69
  store i32 %73, i32* %16, align 4
  br label %83

83:                                               ; preds = %82, %69
  %84 = zext i1 %74 to i8
  store i8 %84, i8* %12, align 1
  br label %75

85:                                               ; preds = %23
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %11, align 4
  %88 = cmpxchg i32* %14, i32 %86, i32 %87 release monotonic, align 4
  %89 = extractvalue { i32, i1 } %88, 0
  %90 = extractvalue { i32, i1 } %88, 1
  br i1 %90, label %105, label %104

91:                                               ; preds = %23, %23
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %11, align 4
  %94 = cmpxchg i32* %14, i32 %92, i32 %93 release acquire, align 4
  %95 = extractvalue { i32, i1 } %94, 0
  %96 = extractvalue { i32, i1 } %94, 1
  br i1 %96, label %108, label %107

97:                                               ; preds = %23
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %11, align 4
  %100 = cmpxchg i32* %14, i32 %98, i32 %99 release seq_cst, align 4
  %101 = extractvalue { i32, i1 } %100, 0
  %102 = extractvalue { i32, i1 } %100, 1
  br i1 %102, label %111, label %110

103:                                              ; preds = %111, %108, %105
  br label %26

104:                                              ; preds = %85
  store i32 %89, i32* %16, align 4
  br label %105

105:                                              ; preds = %104, %85
  %106 = zext i1 %90 to i8
  store i8 %106, i8* %12, align 1
  br label %103

107:                                              ; preds = %91
  store i32 %95, i32* %16, align 4
  br label %108

108:                                              ; preds = %107, %91
  %109 = zext i1 %96 to i8
  store i8 %109, i8* %12, align 1
  br label %103

110:                                              ; preds = %97
  store i32 %101, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %97
  %112 = zext i1 %102 to i8
  store i8 %112, i8* %12, align 1
  br label %103

113:                                              ; preds = %24
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %11, align 4
  %116 = cmpxchg i32* %14, i32 %114, i32 %115 acq_rel monotonic, align 4
  %117 = extractvalue { i32, i1 } %116, 0
  %118 = extractvalue { i32, i1 } %116, 1
  br i1 %118, label %133, label %132

119:                                              ; preds = %24, %24
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %11, align 4
  %122 = cmpxchg i32* %14, i32 %120, i32 %121 acq_rel acquire, align 4
  %123 = extractvalue { i32, i1 } %122, 0
  %124 = extractvalue { i32, i1 } %122, 1
  br i1 %124, label %136, label %135

125:                                              ; preds = %24
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %11, align 4
  %128 = cmpxchg i32* %14, i32 %126, i32 %127 acq_rel seq_cst, align 4
  %129 = extractvalue { i32, i1 } %128, 0
  %130 = extractvalue { i32, i1 } %128, 1
  br i1 %130, label %139, label %138

131:                                              ; preds = %139, %136, %133
  br label %26

132:                                              ; preds = %113
  store i32 %117, i32* %16, align 4
  br label %133

133:                                              ; preds = %132, %113
  %134 = zext i1 %118 to i8
  store i8 %134, i8* %12, align 1
  br label %131

135:                                              ; preds = %119
  store i32 %123, i32* %16, align 4
  br label %136

136:                                              ; preds = %135, %119
  %137 = zext i1 %124 to i8
  store i8 %137, i8* %12, align 1
  br label %131

138:                                              ; preds = %125
  store i32 %129, i32* %16, align 4
  br label %139

139:                                              ; preds = %138, %125
  %140 = zext i1 %130 to i8
  store i8 %140, i8* %12, align 1
  br label %131

141:                                              ; preds = %25
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %11, align 4
  %144 = cmpxchg i32* %14, i32 %142, i32 %143 seq_cst monotonic, align 4
  %145 = extractvalue { i32, i1 } %144, 0
  %146 = extractvalue { i32, i1 } %144, 1
  br i1 %146, label %161, label %160

147:                                              ; preds = %25, %25
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %11, align 4
  %150 = cmpxchg i32* %14, i32 %148, i32 %149 seq_cst acquire, align 4
  %151 = extractvalue { i32, i1 } %150, 0
  %152 = extractvalue { i32, i1 } %150, 1
  br i1 %152, label %164, label %163

153:                                              ; preds = %25
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %11, align 4
  %156 = cmpxchg i32* %14, i32 %154, i32 %155 seq_cst seq_cst, align 4
  %157 = extractvalue { i32, i1 } %156, 0
  %158 = extractvalue { i32, i1 } %156, 1
  br i1 %158, label %167, label %166

159:                                              ; preds = %167, %164, %161
  br label %26

160:                                              ; preds = %141
  store i32 %145, i32* %16, align 4
  br label %161

161:                                              ; preds = %160, %141
  %162 = zext i1 %146 to i8
  store i8 %162, i8* %12, align 1
  br label %159

163:                                              ; preds = %147
  store i32 %151, i32* %16, align 4
  br label %164

164:                                              ; preds = %163, %147
  %165 = zext i1 %152 to i8
  store i8 %165, i8* %12, align 1
  br label %159

166:                                              ; preds = %153
  store i32 %157, i32* %16, align 4
  br label %167

167:                                              ; preds = %166, %153
  %168 = zext i1 %158 to i8
  store i8 %168, i8* %12, align 1
  br label %159

169:                                              ; preds = %5
  %170 = landingpad { i8*, i32 }
          catch i8* null
  %171 = extractvalue { i8*, i32 } %170, 0
  call void @__clang_call_terminate(i8* %171) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__118__to_failure_orderENS_12memory_orderE(i32 noundef %0) #3 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %12

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 2, %9 ], [ %11, %10 ]
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ 0, %5 ], [ %13, %12 ]
  ret i32 %15
}

declare noundef %"class.std::runtime_error"* @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"* noundef nonnull returned align 8 dereferenceable(16), i8* noundef) unnamed_addr #7

declare void @__cxa_free_exception(i8*)

; Function Attrs: nounwind
declare noundef %"class.std::runtime_error"* @_ZNSt13runtime_errorD1Ev(%"class.std::runtime_error"* noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEEC2ERS1_(%"class.std::__1::unique_lock"* noundef nonnull returned align 8 dereferenceable(9) %0, %"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #1 align 2 {
  %3 = alloca %"class.std::__1::unique_lock"*, align 8
  %4 = alloca %"class.std::__1::shared_timed_mutex"*, align 8
  store %"class.std::__1::unique_lock"* %0, %"class.std::__1::unique_lock"** %3, align 8
  store %"class.std::__1::shared_timed_mutex"* %1, %"class.std::__1::shared_timed_mutex"** %4, align 8
  %5 = load %"class.std::__1::unique_lock"*, %"class.std::__1::unique_lock"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::unique_lock", %"class.std::__1::unique_lock"* %5, i32 0, i32 0
  %7 = load %"class.std::__1::shared_timed_mutex"*, %"class.std::__1::shared_timed_mutex"** %4, align 8
  %8 = call noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__19addressofINS_18shared_timed_mutexEEEPT_RS2_(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %7) #8
  store %"class.std::__1::shared_timed_mutex"* %8, %"class.std::__1::shared_timed_mutex"** %6, align 8
  %9 = getelementptr inbounds %"class.std::__1::unique_lock", %"class.std::__1::unique_lock"* %5, i32 0, i32 1
  store i8 1, i8* %9, align 8
  %10 = getelementptr inbounds %"class.std::__1::unique_lock", %"class.std::__1::unique_lock"* %5, i32 0, i32 0
  %11 = load %"class.std::__1::shared_timed_mutex"*, %"class.std::__1::shared_timed_mutex"** %10, align 8
  call void @_ZNSt3__118shared_timed_mutex4lockEv(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %11)
  ret %"class.std::__1::unique_lock"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__19addressofINS_18shared_timed_mutexEEEPT_RS2_(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %0) #3 {
  %2 = alloca %"class.std::__1::shared_timed_mutex"*, align 8
  store %"class.std::__1::shared_timed_mutex"* %0, %"class.std::__1::shared_timed_mutex"** %2, align 8
  %3 = load %"class.std::__1::shared_timed_mutex"*, %"class.std::__1::shared_timed_mutex"** %2, align 8
  ret %"class.std::__1::shared_timed_mutex"* %3
}

declare void @_ZNSt3__118shared_timed_mutex4lockEv(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168)) #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8** @_ZNKSt3__111__wrap_iterIPPvEdeEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter"*, align 8
  store %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"** %2, align 8
  %3 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  ret i8** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPPvEppEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter"*, align 8
  store %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"** %2, align 8
  %3 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %6, i8*** %4, align 8
  ret %"class.std::__1::__wrap_iter"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = alloca %"class.std::__1::vector.22"*, align 8
  %5 = alloca i8**, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %4, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = call noundef %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPPvEC1ES2_(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %3, i8** noundef %7) #8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = ptrtoint i8** %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPPvEC1ES2_(%"class.std::__1::__wrap_iter"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = call noundef %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPPvEC2ES2_(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %5, i8** noundef %6) #8
  ret %"class.std::__1::__wrap_iter"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__wrap_iter"* @_ZNSt3__111__wrap_iterIPPvEC2ES2_(%"class.std::__1::__wrap_iter"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %5, i32 0, i32 0
  %7 = load i8**, i8*** %4, align 8
  store i8** %7, i8*** %6, align 8
  ret %"class.std::__1::__wrap_iter"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqIPPvEEbRKNS_11__wrap_iterIT_EES7_(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %1) #3 {
  %3 = alloca %"class.std::__1::__wrap_iter"*, align 8
  %4 = alloca %"class.std::__1::__wrap_iter"*, align 8
  store %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"** %3, align 8
  store %"class.std::__1::__wrap_iter"* %1, %"class.std::__1::__wrap_iter"** %4, align 8
  %5 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %3, align 8
  %6 = call noundef i8** @_ZNKSt3__111__wrap_iterIPPvE4baseEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %5) #8
  %7 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %4, align 8
  %8 = call noundef i8** @_ZNKSt3__111__wrap_iterIPPvE4baseEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %7) #8
  %9 = icmp eq i8** %6, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNKSt3__111__wrap_iterIPPvE4baseEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter"*, align 8
  store %"class.std::__1::__wrap_iter"* %0, %"class.std::__1::__wrap_iter"** %2, align 8
  %3 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter", %"class.std::__1::__wrap_iter"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  ret i8** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__1miIPKPvS3_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %1) #3 {
  %3 = alloca %"class.std::__1::__wrap_iter.49"*, align 8
  %4 = alloca %"class.std::__1::__wrap_iter.49"*, align 8
  store %"class.std::__1::__wrap_iter.49"* %0, %"class.std::__1::__wrap_iter.49"** %3, align 8
  store %"class.std::__1::__wrap_iter.49"* %1, %"class.std::__1::__wrap_iter.49"** %4, align 8
  %5 = load %"class.std::__1::__wrap_iter.49"*, %"class.std::__1::__wrap_iter.49"** %3, align 8
  %6 = call noundef i8** @_ZNKSt3__111__wrap_iterIPKPvE4baseEv(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %5) #8
  %7 = load %"class.std::__1::__wrap_iter.49"*, %"class.std::__1::__wrap_iter.49"** %4, align 8
  %8 = call noundef i8** @_ZNKSt3__111__wrap_iterIPKPvE4baseEv(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %7) #8
  %9 = ptrtoint i8** %6 to i64
  %10 = ptrtoint i8** %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE6cbeginEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.49", align 8
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  %4 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %5 = call i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5beginEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %2, i32 0, i32 0
  %7 = inttoptr i64 %5 to i8**
  store i8** %7, i8*** %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %2, i32 0, i32 0
  %9 = load i8**, i8*** %8, align 8
  %10 = ptrtoint i8** %9 to i64
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %7 = load i8**, i8*** %4, align 8
  invoke void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE27__invalidate_iterators_pastEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %6, i8** noundef %7)
          to label %8 unwind label %12

8:                                                ; preds = %2
  %9 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %6) #8
  store i64 %9, i64* %5, align 8
  %10 = load i8**, i8*** %4, align 8
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %6, i8** noundef %10) #8
  %11 = load i64, i64* %5, align 8
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkEm(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %11) #8
  ret void

12:                                               ; preds = %2
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__14moveIPPvS2_EET0_T_S4_S3_(i8** noundef %0, i8** noundef %1, i8** noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load i8**, i8*** %6, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = call noundef i8** @_ZNSt3__113__unwrap_iterIPPvNS_18__unwrap_iter_implIS2_Lb1EEEEEDTclsrT0_7__applycl7declvalIT_EEEES6_(i8** noundef %8) #8
  %10 = load i8**, i8*** %5, align 8
  %11 = call noundef i8** @_ZNSt3__113__unwrap_iterIPPvNS_18__unwrap_iter_implIS2_Lb1EEEEEDTclsrT0_7__applycl7declvalIT_EEEES6_(i8** noundef %10) #8
  %12 = load i8**, i8*** %6, align 8
  %13 = call noundef i8** @_ZNSt3__113__unwrap_iterIPPvNS_18__unwrap_iter_implIS2_Lb1EEEEEDTclsrT0_7__applycl7declvalIT_EEEES6_(i8** noundef %12) #8
  %14 = call noundef i8** @_ZNSt3__16__moveIPvS1_EENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_(i8** noundef %9, i8** noundef %11, i8** noundef %13)
  %15 = call noundef i8** @_ZNSt3__113__rewrap_iterIPPvEET_S3_S3_(i8** noundef %7, i8** noundef %14)
  ret i8** %15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE27__invalidate_iterators_pastEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNKSt3__111__wrap_iterIPKPvE4baseEv(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.49"*, align 8
  store %"class.std::__1::__wrap_iter.49"* %0, %"class.std::__1::__wrap_iter.49"** %2, align 8
  %3 = load %"class.std::__1::__wrap_iter.49"*, %"class.std::__1::__wrap_iter.49"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  ret i8** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5beginEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.49", align 8
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  %4 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = call i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterEPKS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4, i8** noundef %6) #8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to i8**
  store i8** %9, i8*** %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %2, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = ptrtoint i8** %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterEPKS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.49", align 8
  %4 = alloca %"class.std::__1::vector.22"*, align 8
  %5 = alloca i8**, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %4, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = call noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC1ES3_(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %3, i8** noundef %7) #8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %3, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = ptrtoint i8** %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC1ES3_(%"class.std::__1::__wrap_iter.49"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.49"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::__wrap_iter.49"* %0, %"class.std::__1::__wrap_iter.49"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::__wrap_iter.49"*, %"class.std::__1::__wrap_iter.49"** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = call noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC2ES3_(%"class.std::__1::__wrap_iter.49"* noundef nonnull align 8 dereferenceable(8) %5, i8** noundef %6) #8
  ret %"class.std::__1::__wrap_iter.49"* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC2ES3_(%"class.std::__1::__wrap_iter.49"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.49"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::__wrap_iter.49"* %0, %"class.std::__1::__wrap_iter.49"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::__wrap_iter.49"*, %"class.std::__1::__wrap_iter.49"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %5, i32 0, i32 0
  %7 = load i8**, i8*** %4, align 8
  store i8** %7, i8*** %6, align 8
  ret %"class.std::__1::__wrap_iter.49"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 1
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %6, i32 0, i32 1
  %8 = load i8**, i8*** %7, align 8
  store i8** %8, i8*** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = icmp ne i8** %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %6) #8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 -1
  store i8** %16, i8*** %5, align 8
  %17 = call noundef i8** @_ZNSt3__112__to_addressIPvEEPT_S3_(i8** noundef %16) #8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyIS2_vEEvRS3_PT_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %14, i8** noundef %17)
          to label %18 unwind label %22

18:                                               ; preds = %13
  br label %9, !llvm.loop !14

19:                                               ; preds = %9
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %6, i32 0, i32 1
  store i8** %20, i8*** %21, align 8
  ret void

22:                                               ; preds = %13
  %23 = landingpad { i8*, i32 }
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  call void @__clang_call_terminate(i8* %24) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkEm(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %6 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %7 = bitcast i8** %6 to i8*
  %8 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %9 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = bitcast i8** %10 to i8*
  %12 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = bitcast i8** %14 to i8*
  %16 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %17 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = bitcast i8** %18 to i8*
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5, i8* noundef %7, i8* noundef %11, i8* noundef %15, i8* noundef %19) #8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyIS2_vEEvRS3_PT_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1) #0 align 2 {
  %3 = alloca %"class.std::__1::allocator.26"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  call void @_ZNSt3__19allocatorIPvE7destroyEPS1_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %5, i8** noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::allocator.26"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__112__to_addressIPvEEPT_S3_(i8** noundef %0) #3 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  ret i8** %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIPvE7destroyEPS1_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::allocator.26"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.23"*, align 8
  store %"class.std::__1::__compressed_pair.23"* %0, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.23"*, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.23"* %3 to %"struct.std::__1::__compressed_pair_elem.25"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator.26"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.25"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.25"* %0, %"struct.std::__1::__compressed_pair_elem.25"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.25"*, %"struct.std::__1::__compressed_pair_elem.25"** %2, align 8
  %4 = bitcast %"struct.std::__1::__compressed_pair_elem.25"* %3 to %"class.std::__1::allocator.26"*
  ret %"class.std::__1::allocator.26"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4) #3 align 2 {
  %6 = alloca %"class.std::__1::vector.22"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = call noundef i8** @_ZNSt3__112__to_addressIPvEEPT_S3_(i8** noundef %5) #8
  ret i8** %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.23"*, align 8
  store %"class.std::__1::__compressed_pair.23"* %0, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.23"*, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.23"* %3 to %"struct.std::__1::__compressed_pair_elem.24"*
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.24"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.24"* %0, %"struct.std::__1::__compressed_pair_elem.24"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.24"*, %"struct.std::__1::__compressed_pair_elem.24"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.24", %"struct.std::__1::__compressed_pair_elem.24"* %3, i32 0, i32 0
  ret i8*** %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__113__rewrap_iterIPPvEET_S3_S3_(i8** noundef %0, i8** noundef %1) #3 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %4, align 8
  ret i8** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__16__moveIPvS1_EENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_(i8** noundef %0, i8** noundef %1, i8** noundef %2) #3 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = ptrtoint i8** %8 to i64
  %11 = ptrtoint i8** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8**, i8*** %6, align 8
  %18 = bitcast i8** %17 to i8*
  %19 = load i8**, i8*** %4, align 8
  %20 = bitcast i8** %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %21, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i8**, i8*** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  ret i8** %26
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__113__unwrap_iterIPPvNS_18__unwrap_iter_implIS2_Lb1EEEEEDTclsrT0_7__applycl7declvalIT_EEEES6_(i8** noundef %0) #3 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = call noundef i8** @_ZNSt3__118__unwrap_iter_implIPPvLb1EE7__applyES2_(i8** noundef %3) #8
  ret i8** %4
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i8** @_ZNSt3__118__unwrap_iter_implIPPvLb1EE7__applyES2_(i8** noundef %0) #3 align 2 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = call noundef i8** @_ZNSt3__112__to_addressIPvEEPT_S3_(i8** noundef %3) #8
  ret i8** %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__wrap_iter.49"* @_ZNSt3__111__wrap_iterIPKPvEC2IPS1_EERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueEvE4typeE(%"class.std::__1::__wrap_iter.49"* noundef nonnull returned align 8 dereferenceable(8) %0, %"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %1, i8* noundef %2) unnamed_addr #4 align 2 {
  %4 = alloca %"class.std::__1::__wrap_iter.49"*, align 8
  %5 = alloca %"class.std::__1::__wrap_iter"*, align 8
  %6 = alloca i8*, align 8
  store %"class.std::__1::__wrap_iter.49"* %0, %"class.std::__1::__wrap_iter.49"** %4, align 8
  store %"class.std::__1::__wrap_iter"* %1, %"class.std::__1::__wrap_iter"** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.std::__1::__wrap_iter.49"*, %"class.std::__1::__wrap_iter.49"** %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.49", %"class.std::__1::__wrap_iter.49"* %7, i32 0, i32 0
  %9 = load %"class.std::__1::__wrap_iter"*, %"class.std::__1::__wrap_iter"** %5, align 8
  %10 = call noundef i8** @_ZNKSt3__111__wrap_iterIPPvE4baseEv(%"class.std::__1::__wrap_iter"* noundef nonnull align 8 dereferenceable(8) %9) #8
  store i8** %10, i8*** %8, align 8
  ret %"class.std::__1::__wrap_iter.49"* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::unique_lock"* @_ZNSt3__111unique_lockINS_18shared_timed_mutexEED2Ev(%"class.std::__1::unique_lock"* noundef nonnull returned align 8 dereferenceable(9) %0) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__1::unique_lock"*, align 8
  %3 = alloca %"class.std::__1::unique_lock"*, align 8
  store %"class.std::__1::unique_lock"* %0, %"class.std::__1::unique_lock"** %3, align 8
  %4 = load %"class.std::__1::unique_lock"*, %"class.std::__1::unique_lock"** %3, align 8
  store %"class.std::__1::unique_lock"* %4, %"class.std::__1::unique_lock"** %2, align 8
  %5 = getelementptr inbounds %"class.std::__1::unique_lock", %"class.std::__1::unique_lock"* %4, i32 0, i32 1
  %6 = load i8, i8* %5, align 8
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::__1::unique_lock", %"class.std::__1::unique_lock"* %4, i32 0, i32 0
  %10 = load %"class.std::__1::shared_timed_mutex"*, %"class.std::__1::shared_timed_mutex"** %9, align 8
  invoke void @_ZNSt3__118shared_timed_mutex6unlockEv(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %10)
          to label %11 unwind label %14

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %"class.std::__1::unique_lock"*, %"class.std::__1::unique_lock"** %2, align 8
  ret %"class.std::__1::unique_lock"* %13

14:                                               ; preds = %8
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #17
  unreachable
}

declare void @_ZNSt3__118shared_timed_mutex6unlockEv(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168)) #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__cxx_atomic_storeIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEEvPNS_22__cxx_atomic_base_implIT_EES7_NS_12memory_orderE(%"struct.std::__1::__cxx_atomic_base_impl"* noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca %"struct.std::__1::__cxx_atomic_base_impl"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %"struct.std::__1::__cxx_atomic_base_impl"* %0, %"struct.std::__1::__cxx_atomic_base_impl"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %"struct.std::__1::__cxx_atomic_base_impl"*, %"struct.std::__1::__cxx_atomic_base_impl"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", %"struct.std::__1::__cxx_atomic_base_impl"* %8, i32 0, i32 0
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  switch i32 %10, label %12 [
    i32 3, label %14
    i32 5, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  store atomic i32 %13, i32* %9 monotonic, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  store atomic i32 %15, i32* %9 release, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  store atomic i32 %17, i32* %9 seq_cst, align 4
  br label %18

18:                                               ; preds = %16, %14, %12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) #14

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::rlbox_sandbox"* @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEED2Ev(%"class.rlbox::rlbox_sandbox"* noundef nonnull returned align 8 dereferenceable(448) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %3 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %3, i32 0, i32 6
  %5 = call noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1Ev(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %6 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %3, i32 0, i32 5
  %7 = call noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"* noundef nonnull align 8 dereferenceable(64) %6) #8
  %8 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %3, i32 0, i32 3
  %9 = call noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjED1Ev(%"class.rlbox::app_pointer_map"* noundef nonnull align 8 dereferenceable(28) %8) #8
  %10 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %3, i32 0, i32 2
  %11 = call noundef %"class.std::__1::map"* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvNS_4lessIS6_EENS4_INS_4pairIKS6_S7_EEEEED1Ev(%"class.std::__1::map"* noundef nonnull align 8 dereferenceable(24) %10) #8
  %12 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %3, i32 0, i32 1
  %13 = call noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexD1Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull align 8 dereferenceable(168) %12) #8
  %14 = bitcast %"class.rlbox::rlbox_sandbox"* %3 to %"class.rlbox::rlbox_test_sandbox"*
  %15 = call noundef %"class.rlbox::rlbox_test_sandbox"* @_ZN5rlbox18rlbox_test_sandboxD2Ev(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %14) #8
  ret %"class.rlbox::rlbox_sandbox"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjED1Ev(%"class.rlbox::app_pointer_map"* noundef nonnull returned align 8 dereferenceable(28) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.rlbox::app_pointer_map"*, align 8
  store %"class.rlbox::app_pointer_map"* %0, %"class.rlbox::app_pointer_map"** %2, align 8
  %3 = load %"class.rlbox::app_pointer_map"*, %"class.rlbox::app_pointer_map"** %2, align 8
  %4 = call noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjED2Ev(%"class.rlbox::app_pointer_map"* noundef nonnull align 8 dereferenceable(28) %3) #8
  ret %"class.rlbox::app_pointer_map"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::app_pointer_map"* @_ZN5rlbox15app_pointer_mapIjED2Ev(%"class.rlbox::app_pointer_map"* noundef nonnull returned align 8 dereferenceable(28) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.rlbox::app_pointer_map"*, align 8
  store %"class.rlbox::app_pointer_map"* %0, %"class.rlbox::app_pointer_map"** %2, align 8
  %3 = load %"class.rlbox::app_pointer_map"*, %"class.rlbox::app_pointer_map"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::app_pointer_map", %"class.rlbox::app_pointer_map"* %3, i32 0, i32 0
  %5 = call noundef %"class.std::__1::map.10"* @_ZNSt3__13mapIjPvNS_4lessIjEENS_9allocatorINS_4pairIKjS1_EEEEED1Ev(%"class.std::__1::map.10"* noundef nonnull align 8 dereferenceable(24) %4) #8
  ret %"class.rlbox::app_pointer_map"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @"_ZZ27sandbox_array_index_checkedvENK3$_0clEi"(%class.anon* noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) #3 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca %class.anon*, align 8
  %5 = alloca i32, align 4
  store %class.anon* %0, %class.anon** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %class.anon*, %class.anon** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %3, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox18rlbox_test_sandbox19impl_create_sandboxIJEEEvDpT_(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %0) #0 align 2 {
  %2 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  %3 = alloca %"struct.std::__1::pair.50", align 8
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %4 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %2, align 8
  %5 = call [2 x i64] @_ZN5rlbox18rlbox_test_sandbox21pow2SizeAlignedMallocEm(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %4, i64 noundef 4095)
  %6 = bitcast %"struct.std::__1::pair.50"* %3 to [2 x i64]*
  store [2 x i64] %5, [2 x i64]* %6, align 8
  %7 = getelementptr inbounds %"struct.std::__1::pair.50", %"struct.std::__1::pair.50"* %3, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %4, i32 0, i32 3
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.50", %"struct.std::__1::pair.50"* %3, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %4, i32 0, i32 4
  store i64 %13, i64* %14, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backEOS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) #0 align 2 {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i8**, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 1
  %7 = load i8**, i8*** %6, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %9 = load i8**, i8*** %8, align 8
  %10 = icmp ult i8** %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__14moveIRPvEEONS_16remove_referenceIT_E4typeEOS4_(i8** noundef nonnull align 8 dereferenceable(8) %12) #8
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endIJS1_EEEvDpOT_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5, i8** noundef nonnull align 8 dereferenceable(8) %13)
  br label %17

14:                                               ; preds = %2
  %15 = load i8**, i8*** %4, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__14moveIRPvEEONS_16remove_referenceIT_E4typeEOS4_(i8** noundef nonnull align 8 dereferenceable(8) %15) #8
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5, i8** noundef nonnull align 8 dereferenceable(8) %16)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr [2 x i64] @_ZN5rlbox18rlbox_test_sandbox21pow2SizeAlignedMallocEm(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) #0 align 2 {
  %3 = alloca %"struct.std::__1::pair.50", align 8
  %4 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 1
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call noalias noundef nonnull i8* @_Znam(i64 noundef %15) #19
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = call [2 x i64] @_ZNSt3__19make_pairIRPSt4byteS3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(i8** noundef nonnull align 8 dereferenceable(8) %7, i8** noundef nonnull align 8 dereferenceable(8) %7)
  %25 = bitcast %"struct.std::__1::pair.50"* %3 to [2 x i64]*
  store [2 x i64] %24, [2 x i64]* %25, align 8
  br label %50

26:                                               ; preds = %2
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %33, %26
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %9, align 8
  br label %28, !llvm.loop !15

36:                                               ; preds = %28
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  call void @abort() #21
  unreachable

45:                                               ; preds = %36
  %46 = load i64, i64* %9, align 8
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %10, align 8
  %48 = call [2 x i64] @_ZNSt3__19make_pairIRPSt4byteS3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(i8** noundef nonnull align 8 dereferenceable(8) %7, i8** noundef nonnull align 8 dereferenceable(8) %10)
  %49 = bitcast %"struct.std::__1::pair.50"* %3 to [2 x i64]*
  store [2 x i64] %48, [2 x i64]* %49, align 8
  br label %50

50:                                               ; preds = %45, %23
  %51 = bitcast %"struct.std::__1::pair.50"* %3 to [2 x i64]*
  %52 = load [2 x i64], [2 x i64]* %51, align 8
  ret [2 x i64] %52
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #12

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairIRPSt4byteS3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(i8** noundef nonnull align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) #3 {
  %3 = alloca %"struct.std::__1::pair.50", align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIRPSt4byteEEOT_RNS_16remove_referenceIS4_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %6) #8
  %8 = load i8**, i8*** %5, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIRPSt4byteEEOT_RNS_16remove_referenceIS4_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %8) #8
  %10 = call noundef %"struct.std::__1::pair.50"* @_ZNSt3__14pairIPSt4byteS2_EC1IRS2_S5_LPv0EEEOT_OT0_(%"struct.std::__1::pair.50"* noundef nonnull align 8 dereferenceable(16) %3, i8** noundef nonnull align 8 dereferenceable(8) %7, i8** noundef nonnull align 8 dereferenceable(8) %9) #8
  %11 = bitcast %"struct.std::__1::pair.50"* %3 to [2 x i64]*
  %12 = load [2 x i64], [2 x i64]* %11, align 8
  ret [2 x i64] %12
}

; Function Attrs: cold noreturn
declare void @abort() #16

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIRPSt4byteEEOT_RNS_16remove_referenceIS4_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  ret i8** %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair.50"* @_ZNSt3__14pairIPSt4byteS2_EC1IRS2_S5_LPv0EEEOT_OT0_(%"struct.std::__1::pair.50"* noundef nonnull returned align 8 dereferenceable(16) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, i8** noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 {
  %4 = alloca %"struct.std::__1::pair.50"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %"struct.std::__1::pair.50"* %0, %"struct.std::__1::pair.50"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %"struct.std::__1::pair.50"*, %"struct.std::__1::pair.50"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = call noundef %"struct.std::__1::pair.50"* @_ZNSt3__14pairIPSt4byteS2_EC2IRS2_S5_LPv0EEEOT_OT0_(%"struct.std::__1::pair.50"* noundef nonnull align 8 dereferenceable(16) %7, i8** noundef nonnull align 8 dereferenceable(8) %8, i8** noundef nonnull align 8 dereferenceable(8) %9) #8
  ret %"struct.std::__1::pair.50"* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::pair.50"* @_ZNSt3__14pairIPSt4byteS2_EC2IRS2_S5_LPv0EEEOT_OT0_(%"struct.std::__1::pair.50"* noundef nonnull returned align 8 dereferenceable(16) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, i8** noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 {
  %4 = alloca %"struct.std::__1::pair.50"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %"struct.std::__1::pair.50"* %0, %"struct.std::__1::pair.50"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %"struct.std::__1::pair.50"*, %"struct.std::__1::pair.50"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.50", %"struct.std::__1::pair.50"* %7, i32 0, i32 0
  %9 = load i8**, i8*** %5, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIRPSt4byteEEOT_RNS_16remove_referenceIS4_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %9) #8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.50", %"struct.std::__1::pair.50"* %7, i32 0, i32 1
  %13 = load i8**, i8*** %6, align 8
  %14 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIRPSt4byteEEOT_RNS_16remove_referenceIS4_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %13) #8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %12, align 8
  ret %"struct.std::__1::pair.50"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endIJS1_EEEvDpOT_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %"struct.std::__1::vector<void *>::_ConstructTransaction", align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %9 = call noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull align 8 dereferenceable(24) %5, %"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 1)
  %10 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %8) #8
  %11 = getelementptr inbounds %"struct.std::__1::vector<void *>::_ConstructTransaction", %"struct.std::__1::vector<void *>::_ConstructTransaction"* %5, i32 0, i32 1
  %12 = load i8**, i8*** %11, align 8
  %13 = call noundef i8** @_ZNSt3__112__to_addressIPvEEPT_S3_(i8** noundef %12) #8
  %14 = load i8**, i8*** %4, align 8
  %15 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIPvEEOT_RNS_16remove_referenceIS2_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %14) #8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructIS2_JS2_EvEEvRS3_PT_DpOT0_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %10, i8** noundef %13, i8** noundef nonnull align 8 dereferenceable(8) %15)
          to label %16 unwind label %21

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"struct.std::__1::vector<void *>::_ConstructTransaction", %"struct.std::__1::vector<void *>::_ConstructTransaction"* %5, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %17, align 8
  %20 = call noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull align 8 dereferenceable(24) %5) #8
  ret void

21:                                               ; preds = %2
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %6, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %7, align 4
  %25 = call noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull align 8 dereferenceable(24) %5) #8
  br label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1
  resume { i8*, i32 } %30
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__14moveIRPvEEONS_16remove_referenceIT_E4typeEOS4_(i8** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  ret i8** %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %"class.std::__1::allocator.26"*, align 8
  %6 = alloca %"struct.std::__1::__split_buffer", align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9) #8
  store %"class.std::__1::allocator.26"* %10, %"class.std::__1::allocator.26"** %5, align 8
  %11 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9) #8
  %12 = add i64 %11, 1
  %13 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendEm(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %12)
  %14 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9) #8
  %15 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %5, align 8
  %16 = call noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %13, i64 noundef %14, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %15)
  %17 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %5, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %6, i32 0, i32 2
  %19 = load i8**, i8*** %18, align 8
  %20 = call noundef i8** @_ZNSt3__112__to_addressIPvEEPT_S3_(i8** noundef %19) #8
  %21 = load i8**, i8*** %4, align 8
  %22 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIPvEEOT_RNS_16remove_referenceIS2_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %21) #8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructIS2_JS2_EvEEvRS3_PT_DpOT0_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %17, i8** noundef %20, i8** noundef nonnull align 8 dereferenceable(8) %22)
          to label %23 unwind label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %6, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %24, align 8
  invoke void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9, %"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %6)
          to label %27 unwind label %29

27:                                               ; preds = %23
  %28 = call noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %6) #8
  ret void

29:                                               ; preds = %23, %2
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %7, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %8, align 4
  %33 = call noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %6) #8
  br label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.23"*, align 8
  store %"class.std::__1::__compressed_pair.23"* %0, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.23"*, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.23"* %3 to %"struct.std::__1::__compressed_pair_elem.24"*
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.24"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.24"* %0, %"struct.std::__1::__compressed_pair_elem.24"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.24"*, %"struct.std::__1::__compressed_pair_elem.24"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.24", %"struct.std::__1::__compressed_pair_elem.24"* %3, i32 0, i32 0
  ret i8*** %4
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 align 2 {
  %4 = alloca %"struct.std::__1::vector<void *>::_ConstructTransaction"*, align 8
  %5 = alloca %"class.std::__1::vector.22"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::__1::vector<void *>::_ConstructTransaction"* %0, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %4, align 8
  store %"class.std::__1::vector.22"* %1, %"class.std::__1::vector.22"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::__1::vector<void *>::_ConstructTransaction"*, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %4, align 8
  %8 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull align 8 dereferenceable(24) %7, %"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9)
  ret %"struct.std::__1::vector<void *>::_ConstructTransaction"* %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructIS2_JS2_EvEEvRS3_PT_DpOT0_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1, i8** noundef nonnull align 8 dereferenceable(8) %2) #0 align 2 {
  %4 = alloca %"class.std::__1::allocator.26"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIPvEEOT_RNS_16remove_referenceIS2_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %9) #8
  call void @_ZNSt3__19allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %7, i8** noundef %8, i8** noundef nonnull align 8 dereferenceable(8) %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIPvEEOT_RNS_16remove_referenceIS2_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  ret i8** %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::vector<void *>::_ConstructTransaction"*, align 8
  store %"struct.std::__1::vector<void *>::_ConstructTransaction"* %0, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %2, align 8
  %3 = load %"struct.std::__1::vector<void *>::_ConstructTransaction"*, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %2, align 8
  %4 = call noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull align 8 dereferenceable(24) %3) #8
  ret %"struct.std::__1::vector<void *>::_ConstructTransaction"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull returned align 8 dereferenceable(24) %0, %"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #4 align 2 {
  %4 = alloca %"struct.std::__1::vector<void *>::_ConstructTransaction"*, align 8
  %5 = alloca %"class.std::__1::vector.22"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::__1::vector<void *>::_ConstructTransaction"* %0, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %4, align 8
  store %"class.std::__1::vector.22"* %1, %"class.std::__1::vector.22"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::__1::vector<void *>::_ConstructTransaction"*, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::vector<void *>::_ConstructTransaction", %"struct.std::__1::vector<void *>::_ConstructTransaction"* %7, i32 0, i32 0
  %9 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %5, align 8
  store %"class.std::__1::vector.22"* %9, %"class.std::__1::vector.22"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::__1::vector<void *>::_ConstructTransaction", %"struct.std::__1::vector<void *>::_ConstructTransaction"* %7, i32 0, i32 1
  %11 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %5, align 8
  %12 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %10, align 8
  %14 = getelementptr inbounds %"struct.std::__1::vector<void *>::_ConstructTransaction", %"struct.std::__1::vector<void *>::_ConstructTransaction"* %7, i32 0, i32 2
  %15 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %5, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8** %19, i8*** %14, align 8
  ret %"struct.std::__1::vector<void *>::_ConstructTransaction"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorIPvE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1, i8** noundef nonnull align 8 dereferenceable(8) %2) #3 align 2 {
  %4 = alloca %"class.std::__1::allocator.26"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = bitcast i8** %8 to i8*
  %10 = bitcast i8* %9 to i8**
  %11 = load i8**, i8*** %6, align 8
  %12 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIPvEEOT_RNS_16remove_referenceIS2_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %11) #8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::vector<void *>::_ConstructTransaction"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(%"struct.std::__1::vector<void *>::_ConstructTransaction"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::vector<void *>::_ConstructTransaction"*, align 8
  store %"struct.std::__1::vector<void *>::_ConstructTransaction"* %0, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %2, align 8
  %3 = load %"struct.std::__1::vector<void *>::_ConstructTransaction"*, %"struct.std::__1::vector<void *>::_ConstructTransaction"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::vector<void *>::_ConstructTransaction", %"struct.std::__1::vector<void *>::_ConstructTransaction"* %3, i32 0, i32 1
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::vector<void *>::_ConstructTransaction", %"struct.std::__1::vector<void *>::_ConstructTransaction"* %3, i32 0, i32 0
  %7 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %7, i32 0, i32 1
  store i8** %5, i8*** %8, align 8
  ret %"struct.std::__1::vector<void *>::_ConstructTransaction"* %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendEm(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 align 2 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__1::vector.22"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %4, align 8
  %10 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9) #8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9) #18
  unreachable

15:                                               ; preds = %2
  %16 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %9) #8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = udiv i64 %18, 2
  %20 = icmp uge i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %3, align 8
  br label %28

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 2, %24
  store i64 %25, i64* %8, align 8
  %26 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImEERKT_S3_S3_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_(%"struct.std::__1::__split_buffer"* noundef nonnull returned align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 align 2 {
  %5 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %"class.std::__1::allocator.26"* %3, %"class.std::__1::allocator.26"** %8, align 8
  %9 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %8, align 8
  %13 = call noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %9, i64 noundef %10, i64 noundef %11, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %12)
  ret %"struct.std::__1::__split_buffer"* %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, %"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %1) #0 align 2 {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store %"struct.std::__1::__split_buffer"* %1, %"struct.std::__1::__split_buffer"** %4, align 8
  %5 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %7 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 1
  %10 = load i8**, i8*** %9, align 8
  %11 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %4, align 8
  %12 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %11, i32 0, i32 1
  call void @_ZNSt3__146__construct_backward_with_exception_guaranteesINS_9allocatorIPvEES2_vEEvRT_PT0_S7_RS7_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %6, i8** noundef %8, i8** noundef %10, i8*** noundef nonnull align 8 dereferenceable(8) %12)
  %13 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 0
  %14 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %4, align 8
  %15 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %14, i32 0, i32 1
  call void @_ZNSt3__14swapIPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(i8*** noundef nonnull align 8 dereferenceable(8) %13, i8*** noundef nonnull align 8 dereferenceable(8) %15) #8
  %16 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 1
  %17 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %4, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %17, i32 0, i32 2
  call void @_ZNSt3__14swapIPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(i8*** noundef nonnull align 8 dereferenceable(8) %16, i8*** noundef nonnull align 8 dereferenceable(8) %18) #8
  %19 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %20 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %4, align 8
  %21 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %20) #8
  call void @_ZNSt3__14swapIPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(i8*** noundef nonnull align 8 dereferenceable(8) %19, i8*** noundef nonnull align 8 dereferenceable(8) %21) #8
  %22 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %4, align 8
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %4, align 8
  %26 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %25, i32 0, i32 0
  store i8** %24, i8*** %26, align 8
  %27 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newEm(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %27) #8
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__invalidate_all_iteratorsEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev(%"struct.std::__1::__split_buffer"* noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %2, align 8
  %3 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %2, align 8
  %4 = call noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %3) #8
  ret %"struct.std::__1::__split_buffer"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %5 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %7 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeIS3_vEEmRKS3_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %6) #8
  store i64 %7, i64* %3, align 8
  %8 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxEv() #8
  store i64 %8, i64* %4, align 8
  %9 = invoke noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImEERKT_S3_S3_(i64* noundef nonnull align 8 dereferenceable(8) %3, i64* noundef nonnull align 8 dereferenceable(8) %4)
          to label %10 unwind label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %9, align 8
  ret i64 %11

12:                                               ; preds = %1
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #17
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #10 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  call void @_ZNSt3__120__throw_length_errorEPKc(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #18
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImEERKT_S3_S3_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %"struct.std::__1::__less", align 1
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
  ret i64* %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImEERKT_S3_S3_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %"struct.std::__1::__less", align 1
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
  ret i64* %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeIS3_vEEmRKS3_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %2, align 8
  %3 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %2, align 8
  %4 = call noundef i64 @_ZNKSt3__19allocatorIPvE8max_sizeEv(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %3) #8
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret %"class.std::__1::allocator.26"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxEv() #3 align 2 {
  %1 = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv() #8
  ret i64 %1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #0 {
  %3 = alloca %"struct.std::__1::__less", align 1
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclERKmS3_(%"struct.std::__1::__less"* noundef nonnull align 1 dereferenceable(1) %3, i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64*, i64** %5, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %4, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i64* [ %10, %9 ], [ %12, %11 ]
  ret i64* %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessImmEclERKmS3_(%"struct.std::__1::__less"* noundef nonnull align 1 dereferenceable(1) %0, i64* noundef nonnull align 8 dereferenceable(8) %1, i64* noundef nonnull align 8 dereferenceable(8) %2) #3 align 2 {
  %4 = alloca %"struct.std::__1::__less"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %"struct.std::__1::__less"* %0, %"struct.std::__1::__less"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %"struct.std::__1::__less"*, %"struct.std::__1::__less"** %4, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %9, %11
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIPvE8max_sizeEv(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %2, align 8
  %3 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %2, align 8
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondEv(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.23"*, align 8
  store %"class.std::__1::__compressed_pair.23"* %0, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.23"*, %"class.std::__1::__compressed_pair.23"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.23"* %3 to %"struct.std::__1::__compressed_pair_elem.25"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator.26"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getEv(%"struct.std::__1::__compressed_pair_elem.25"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.25"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.25"* %0, %"struct.std::__1::__compressed_pair_elem.25"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.25"*, %"struct.std::__1::__compressed_pair_elem.25"** %2, align 8
  %4 = bitcast %"struct.std::__1::__compressed_pair_elem.25"* %3 to %"class.std::__1::allocator.26"*
  ret %"class.std::__1::allocator.26"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv() #3 align 2 {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorEPKc(i8* noundef %0) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i8* @__cxa_allocate_exception(i64 16) #8
  %6 = bitcast i8* %5 to %"class.std::length_error"*
  %7 = load i8*, i8** %2, align 8
  %8 = invoke noundef %"class.std::length_error"* @_ZNSt12length_errorC1EPKc(%"class.std::length_error"* noundef nonnull align 8 dereferenceable(16) %6, i8* noundef %7)
          to label %9 unwind label %10

9:                                                ; preds = %1
  call void @__cxa_throw(i8* %5, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (%"class.std::length_error"* (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #18
  unreachable

10:                                               ; preds = %1
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %3, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %4, align 4
  call void @__cxa_free_exception(i8* %5) #8
  br label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::length_error"* @_ZNSt12length_errorC1EPKc(%"class.std::length_error"* noundef nonnull returned align 8 dereferenceable(16) %0, i8* noundef %1) unnamed_addr #1 align 2 {
  %3 = alloca %"class.std::length_error"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::length_error"* %0, %"class.std::length_error"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::length_error"*, %"class.std::length_error"** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call noundef %"class.std::length_error"* @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* noundef nonnull align 8 dereferenceable(16) %5, i8* noundef %6)
  ret %"class.std::length_error"* %5
}

; Function Attrs: nounwind
declare noundef %"class.std::length_error"* @_ZNSt12length_errorD1Ev(%"class.std::length_error"* noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::length_error"* @_ZNSt12length_errorC2EPKc(%"class.std::length_error"* noundef nonnull returned align 8 dereferenceable(16) %0, i8* noundef %1) unnamed_addr #1 align 2 {
  %3 = alloca %"class.std::length_error"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::length_error"* %0, %"class.std::length_error"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::length_error"*, %"class.std::length_error"** %3, align 8
  %6 = bitcast %"class.std::length_error"* %5 to %"class.std::logic_error"*
  %7 = load i8*, i8** %4, align 8
  %8 = call noundef %"class.std::logic_error"* @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* noundef nonnull align 8 dereferenceable(16) %6, i8* noundef %7)
  %9 = bitcast %"class.std::length_error"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  ret %"class.std::length_error"* %5
}

declare noundef %"class.std::logic_error"* @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* noundef nonnull returned align 8 dereferenceable(16), i8* noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i64* @_ZNSt3__13maxImNS_6__lessImmEEEERKT_S5_S5_T0_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #3 {
  %3 = alloca %"struct.std::__1::__less", align 1
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclERKmS3_(%"struct.std::__1::__less"* noundef nonnull align 1 dereferenceable(1) %3, i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64*, i64** %5, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %4, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i64* [ %10, %9 ], [ %12, %11 ]
  ret i64* %14
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_(%"struct.std::__1::__split_buffer"* noundef nonnull returned align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 align 2 {
  %5 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %6 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.std::__1::allocator.26"*, align 8
  %10 = alloca i8*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %"class.std::__1::allocator.26"* %3, %"class.std::__1::allocator.26"** %9, align 8
  %11 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %6, align 8
  store %"struct.std::__1::__split_buffer"* %11, %"struct.std::__1::__split_buffer"** %5, align 8
  %12 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %11, i32 0, i32 3
  store i8* null, i8** %10, align 8
  %13 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %9, align 8
  %14 = call noundef %"class.std::__1::__compressed_pair.51"* @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1IDnS5_EEOT_OT0_(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %12, i8** noundef nonnull align 8 dereferenceable(8) %10, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %13)
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %11) #8
  %19 = load i64, i64* %7, align 8
  %20 = call noundef i8** @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8allocateERS3_m(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %18, i64 noundef %19)
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i8** [ %20, %17 ], [ null, %21 ]
  %24 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %11, i32 0, i32 0
  store i8** %23, i8*** %24, align 8
  %25 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %11, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %11, i32 0, i32 2
  store i8** %28, i8*** %29, align 8
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %11, i32 0, i32 1
  store i8** %28, i8*** %30, align 8
  %31 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %11, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %11) #8
  store i8** %34, i8*** %35, align 8
  %36 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %5, align 8
  ret %"struct.std::__1::__split_buffer"* %36
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.51"* @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1IDnS5_EEOT_OT0_(%"class.std::__1::__compressed_pair.51"* noundef nonnull returned align 8 dereferenceable(16) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.51"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"class.std::__1::__compressed_pair.51"* %0, %"class.std::__1::__compressed_pair.51"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %"class.std::__1::allocator.26"* %2, %"class.std::__1::allocator.26"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.51"*, %"class.std::__1::__compressed_pair.51"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %6, align 8
  %10 = call noundef %"class.std::__1::__compressed_pair.51"* @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2IDnS5_EEOT_OT0_(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %7, i8** noundef nonnull align 8 dereferenceable(8) %8, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %9)
  ret %"class.std::__1::__compressed_pair.51"* %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8allocateERS3_m(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 align 2 {
  %3 = alloca %"class.std::__1::allocator.26"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noundef i8** @_ZNSt3__19allocatorIPvE8allocateEm(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6)
  ret i8** %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %2, align 8
  %3 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %3, i32 0, i32 3
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondEv(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %4) #8
  ret %"class.std::__1::allocator.26"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %2, align 8
  %3 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %4) #8
  ret i8*** %5
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.51"* @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2IDnS5_EEOT_OT0_(%"class.std::__1::__compressed_pair.51"* noundef nonnull returned align 8 dereferenceable(16) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.51"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"class.std::__1::__compressed_pair.51"* %0, %"class.std::__1::__compressed_pair.51"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %"class.std::__1::allocator.26"* %2, %"class.std::__1::allocator.26"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.51"*, %"class.std::__1::__compressed_pair.51"** %4, align 8
  %8 = bitcast %"class.std::__1::__compressed_pair.51"* %7 to %"struct.std::__1::__compressed_pair_elem.24"*
  %9 = load i8**, i8*** %5, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %9) #8
  %11 = call noundef %"struct.std::__1::__compressed_pair_elem.24"* @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %8, i8** noundef nonnull align 8 dereferenceable(8) %10)
  %12 = bitcast %"class.std::__1::__compressed_pair.51"* %7 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  %14 = bitcast i8* %13 to %"struct.std::__1::__compressed_pair_elem.52"*
  %15 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %6, align 8
  %16 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__17forwardIRNS_9allocatorIPvEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %15) #8
  %17 = call noundef %"struct.std::__1::__compressed_pair_elem.52"* @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2IS4_vEEOT_(%"struct.std::__1::__compressed_pair_elem.52"* noundef nonnull align 8 dereferenceable(8) %14, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %16)
  ret %"class.std::__1::__compressed_pair.51"* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem.24"* @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.24"*, align 8
  %4 = alloca i8**, align 8
  store %"struct.std::__1::__compressed_pair_elem.24"* %0, %"struct.std::__1::__compressed_pair_elem.24"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem.24"*, %"struct.std::__1::__compressed_pair_elem.24"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.24", %"struct.std::__1::__compressed_pair_elem.24"* %5, i32 0, i32 0
  %7 = load i8**, i8*** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %7) #8
  store i8** null, i8*** %6, align 8
  ret %"struct.std::__1::__compressed_pair_elem.24"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__17forwardIRNS_9allocatorIPvEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %2, align 8
  %3 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %2, align 8
  ret %"class.std::__1::allocator.26"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__compressed_pair_elem.52"* @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2IS4_vEEOT_(%"struct.std::__1::__compressed_pair_elem.52"* noundef nonnull returned align 8 dereferenceable(8) %0, %"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.52"*, align 8
  %4 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.52"* %0, %"struct.std::__1::__compressed_pair_elem.52"** %3, align 8
  store %"class.std::__1::allocator.26"* %1, %"class.std::__1::allocator.26"** %4, align 8
  %5 = load %"struct.std::__1::__compressed_pair_elem.52"*, %"struct.std::__1::__compressed_pair_elem.52"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.52", %"struct.std::__1::__compressed_pair_elem.52"* %5, i32 0, i32 0
  %7 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %4, align 8
  %8 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__17forwardIRNS_9allocatorIPvEEEEOT_RNS_16remove_referenceIS5_E4typeE(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %7) #8
  store %"class.std::__1::allocator.26"* %8, %"class.std::__1::allocator.26"** %6, align 8
  ret %"struct.std::__1::__compressed_pair_elem.52"* %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i8** @_ZNSt3__19allocatorIPvE8allocateEm(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 align 2 {
  %3 = alloca %"class.std::__1::allocator.26"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeIS3_vEEmRKS3_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %5) #8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = mul i64 %11, 8
  %13 = call noundef i8* @_ZNSt3__117__libcpp_allocateEmm(i64 noundef %12, i64 noundef 8)
  %14 = bitcast i8* %13 to i8**
  ret i8** %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondEv(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.51"*, align 8
  store %"class.std::__1::__compressed_pair.51"* %0, %"class.std::__1::__compressed_pair.51"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.51"*, %"class.std::__1::__compressed_pair.51"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.51"* %3 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to %"struct.std::__1::__compressed_pair_elem.52"*
  %7 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.52"* noundef nonnull align 8 dereferenceable(8) %6) #8
  ret %"class.std::__1::allocator.26"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.52"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__compressed_pair_elem.52"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.52"* %0, %"struct.std::__1::__compressed_pair_elem.52"** %2, align 8
  %3 = load %"struct.std::__1::__compressed_pair_elem.52"*, %"struct.std::__1::__compressed_pair_elem.52"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.52", %"struct.std::__1::__compressed_pair_elem.52"* %3, i32 0, i32 0
  %5 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %4, align 8
  ret %"class.std::__1::allocator.26"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.51"*, align 8
  store %"class.std::__1::__compressed_pair.51"* %0, %"class.std::__1::__compressed_pair.51"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.51"*, %"class.std::__1::__compressed_pair.51"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.51"* %3 to %"struct.std::__1::__compressed_pair_elem.24"*
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = bitcast i8** %4 to i8*
  %6 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %7 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  %9 = bitcast i8** %8 to i8*
  %10 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %11 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = bitcast i8** %12 to i8*
  %14 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %15 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3) #8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = bitcast i8** %16 to i8*
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3, i8* noundef %5, i8* noundef %9, i8* noundef %13, i8* noundef %17) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__146__construct_backward_with_exception_guaranteesINS_9allocatorIPvEES2_vEEvRT_PT0_S7_RS7_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1, i8** noundef %2, i8*** noundef nonnull align 8 dereferenceable(8) %3) #3 {
  %5 = alloca %"class.std::__1::allocator.26"*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %10 = load i8**, i8*** %7, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = ptrtoint i8** %10 to i64
  %13 = ptrtoint i8** %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i8***, i8**** %8, align 8
  %18 = load i8**, i8*** %17, align 8
  %19 = sub i64 0, %16
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  store i8** %20, i8*** %17, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i8***, i8**** %8, align 8
  %25 = load i8**, i8*** %24, align 8
  %26 = bitcast i8** %25 to i8*
  %27 = load i8**, i8*** %6, align 8
  %28 = bitcast i8** %27 to i8*
  %29 = load i64, i64* %9, align 8
  %30 = mul i64 %29, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %28, i64 %30, i1 false)
  br label %31

31:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapIPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(i8*** noundef nonnull align 8 dereferenceable(8) %0, i8*** noundef nonnull align 8 dereferenceable(8) %1) #3 {
  %3 = alloca i8***, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8**, align 8
  store i8*** %0, i8**** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %6 = load i8***, i8**** %3, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__14moveIRPPvEEONS_16remove_referenceIT_E4typeEOS5_(i8*** noundef nonnull align 8 dereferenceable(8) %6) #8
  %8 = load i8**, i8*** %7, align 8
  store i8** %8, i8*** %5, align 8
  %9 = load i8***, i8**** %4, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__14moveIRPPvEEONS_16remove_referenceIT_E4typeEOS5_(i8*** noundef nonnull align 8 dereferenceable(8) %9) #8
  %11 = load i8**, i8*** %10, align 8
  %12 = load i8***, i8**** %3, align 8
  store i8** %11, i8*** %12, align 8
  %13 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__14moveIRPPvEEONS_16remove_referenceIT_E4typeEOS5_(i8*** noundef nonnull align 8 dereferenceable(8) %5) #8
  %14 = load i8**, i8*** %13, align 8
  %15 = load i8***, i8**** %4, align 8
  store i8** %14, i8*** %15, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newEm(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 align 2 {
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  %6 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %7 = bitcast i8** %6 to i8*
  %8 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %9 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = bitcast i8** %10 to i8*
  %12 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %13 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = bitcast i8** %14 to i8*
  %16 = call noundef i8** @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4dataEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5) #8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = bitcast i8** %18 to i8*
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %5, i8* noundef %7, i8* noundef %11, i8* noundef %15, i8* noundef %19) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__invalidate_all_iteratorsEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNSt3__14moveIRPPvEEONS_16remove_referenceIT_E4typeEOS5_(i8*** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca i8***, align 8
  store i8*** %0, i8**** %2, align 8
  %3 = load i8***, i8**** %2, align 8
  ret i8*** %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"struct.std::__1::__split_buffer"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev(%"struct.std::__1::__split_buffer"* noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %3 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %3, align 8
  %4 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %3, align 8
  store %"struct.std::__1::__split_buffer"* %4, %"struct.std::__1::__split_buffer"** %2, align 8
  call void @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %4) #8
  %5 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %4) #8
  %10 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %4, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = invoke noundef i64 @_ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %4)
          to label %13 unwind label %16

13:                                               ; preds = %8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateERS3_PS2_m(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %9, i8** noundef %11, i64 noundef %12) #8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %2, align 8
  ret %"struct.std::__1::__split_buffer"* %15

16:                                               ; preds = %8
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %2, align 8
  %3 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %3, i32 0, i32 1
  %5 = load i8**, i8*** %4, align 8
  call void @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endEPS1_(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %3, i8** noundef %5) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateERS3_PS2_m(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1, i64 noundef %2) #3 align 2 {
  %4 = alloca %"class.std::__1::allocator.26"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @_ZNSt3__19allocatorIPvE10deallocateEPS1_m(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %7, i8** noundef %8, i64 noundef %9) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %2, align 8
  %3 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %3) #8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %3, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endEPS1_(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %0, i8** noundef %1) #3 align 2 {
  %3 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %"struct.std::__1::integral_constant", align 1
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %3, align 8
  %7 = load i8**, i8*** %4, align 8
  call void @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endEPS1_NS_17integral_constantIbLb0EEE(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %6, i8** noundef %7) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endEPS1_NS_17integral_constantIbLb0EEE(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %0, i8** noundef %1) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.std::__1::integral_constant", align 1
  %4 = alloca %"struct.std::__1::__split_buffer"*, align 8
  %5 = alloca i8**, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %4, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %6, i32 0, i32 2
  %10 = load i8**, i8*** %9, align 8
  %11 = icmp ne i8** %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %6) #8
  %14 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %6, i32 0, i32 2
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 -1
  store i8** %16, i8*** %14, align 8
  %17 = call noundef i8** @_ZNSt3__112__to_addressIPvEEPT_S3_(i8** noundef %16) #8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyIS2_vEEvRS3_PT_(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %13, i8** noundef %17)
          to label %18 unwind label %20

18:                                               ; preds = %12
  br label %7, !llvm.loop !16

19:                                               ; preds = %7
  ret void

20:                                               ; preds = %12
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  call void @__clang_call_terminate(i8* %22) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIPvE10deallocateEPS1_m(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, i8** noundef %1, i64 noundef %2) #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::allocator.26"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = bitcast i8** %8 to i8*
  %10 = load i64, i64* %6, align 8
  %11 = mul i64 %10, 8
  invoke void @_ZNSt3__119__libcpp_deallocateEPvmm(i8* noundef %9, i64 noundef %11, i64 noundef 8)
          to label %12 unwind label %13

12:                                               ; preds = %3
  ret void

13:                                               ; preds = %3
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capEv(%"struct.std::__1::__split_buffer"* noundef nonnull align 8 dereferenceable(40) %0) #3 align 2 {
  %2 = alloca %"struct.std::__1::__split_buffer"*, align 8
  store %"struct.std::__1::__split_buffer"* %0, %"struct.std::__1::__split_buffer"** %2, align 8
  %3 = load %"struct.std::__1::__split_buffer"*, %"struct.std::__1::__split_buffer"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstEv(%"class.std::__1::__compressed_pair.51"* noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::__compressed_pair.51"*, align 8
  store %"class.std::__1::__compressed_pair.51"* %0, %"class.std::__1::__compressed_pair.51"** %2, align 8
  %3 = load %"class.std::__1::__compressed_pair.51"*, %"class.std::__1::__compressed_pair.51"** %2, align 8
  %4 = bitcast %"class.std::__1::__compressed_pair.51"* %3 to %"struct.std::__1::__compressed_pair_elem.24"*
  %5 = call noundef nonnull align 8 dereferenceable(8) i8*** @_ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getEv(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %4) #8
  ret i8*** %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr i64 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE17malloc_in_sandboxIA4_iEENS_7taintedIPT_S1_EEj(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1) #0 align 2 {
  %3 = alloca %"class.rlbox::tainted", align 8
  %4 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32]*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4 x i32]*, align 8
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %4, align 8
  %14 = getelementptr inbounds %"class.rlbox::rlbox_sandbox", %"class.rlbox::rlbox_sandbox"* %13, i32 0, i32 4
  %15 = bitcast %"struct.std::__1::atomic"* %14 to %"struct.std::__1::__atomic_base"*
  %16 = call noundef i32 @_ZNKSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE4loadENS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %15, i32 noundef 5) #8
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %19 = call i64 @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEE16internal_factoryIDnEES4_OT_(i8** noundef nonnull align 8 dereferenceable(8) %6)
  %20 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %3, i32 0, i32 0
  %21 = inttoptr i64 %19 to [4 x i32]*
  store [4 x i32]* %21, [4 x i32]** %20, align 8
  br label %56

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  call void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %24, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 16, %26
  store i64 %27, i64* %7, align 8
  %28 = bitcast %"class.rlbox::rlbox_sandbox"* %13 to %"class.rlbox::rlbox_test_sandbox"*
  %29 = load i64, i64* %7, align 8
  %30 = call noundef i32 @_ZN5rlbox18rlbox_test_sandbox22impl_malloc_in_sandboxEm(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %28, i64 noundef %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call noundef [4 x i32]* @_ZNK5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE23get_unsandboxed_pointerIPA4_iEET_NS_6detail14convert_detail27convert_base_types_t_helperIS6_siixjvE4typeE(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %13, i32 noundef %31)
  store [4 x i32]* %32, [4 x i32]** %9, align 8
  %33 = load [4 x i32]*, [4 x i32]** %9, align 8
  %34 = icmp ne [4 x i32]* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  store i8* null, i8** %10, align 8
  %36 = call noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC1ERKDn(%"class.rlbox::tainted"* noundef nonnull align 8 dereferenceable(8) %3, i8** noundef nonnull align 8 dereferenceable(8) %10)
  br label %56

37:                                               ; preds = %22
  %38 = load [4 x i32]*, [4 x i32]** %9, align 8
  %39 = bitcast [4 x i32]* %38 to i8*
  %40 = call noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE28is_pointer_in_sandbox_memoryEPKv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %13, i8* noundef %39)
  call void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %40, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %41 = load [4 x i32]*, [4 x i32]** %9, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i64 %44
  %46 = ptrtoint [4 x i32]* %45 to i64
  store i64 %46, i64* %11, align 8
  %47 = load [4 x i32]*, [4 x i32]** %9, align 8
  %48 = bitcast [4 x i32]* %47 to i8*
  %49 = load i64, i64* %11, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE18is_in_same_sandboxEPKvS4_(i8* noundef %48, i8* noundef %50)
  call void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %51, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %52 = load [4 x i32]*, [4 x i32]** %9, align 8
  store [4 x i32]* %52, [4 x i32]** %12, align 8
  %53 = call i64 @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEE16internal_factoryIRS2_EES4_OT_([4 x i32]** noundef nonnull align 8 dereferenceable(8) %12)
  %54 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %3, i32 0, i32 0
  %55 = inttoptr i64 %53 to [4 x i32]*
  store [4 x i32]* %55, [4 x i32]** %54, align 8
  br label %56

56:                                               ; preds = %37, %35, %18
  %57 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %3, i32 0, i32 0
  %58 = load [4 x i32]*, [4 x i32]** %57, align 8
  %59 = ptrtoint [4 x i32]* %58 to i64
  ret i64 %59
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__113__atomic_baseIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusELb0EE4loadENS_12memory_orderE(%"struct.std::__1::__atomic_base"* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) #3 align 2 {
  %3 = alloca %"struct.std::__1::__atomic_base"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::__1::__atomic_base"* %0, %"struct.std::__1::__atomic_base"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"struct.std::__1::__atomic_base"*, %"struct.std::__1::__atomic_base"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__atomic_base", %"struct.std::__1::__atomic_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::__1::__cxx_atomic_impl"* %6 to %"struct.std::__1::__cxx_atomic_base_impl"*
  %8 = load i32, i32* %4, align 4
  %9 = call noundef i32 @_ZNSt3__117__cxx_atomic_loadIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEET_PKNS_22__cxx_atomic_base_implIS6_EENS_12memory_orderE(%"struct.std::__1::__cxx_atomic_base_impl"* noundef %7, i32 noundef %8) #8
  ret i32 %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr i64 @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEE16internal_factoryIDnEES4_OT_(i8** noundef nonnull align 8 dereferenceable(8) %0) #0 align 2 {
  %2 = alloca %"class.rlbox::tainted", align 8
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %4) #8
  %6 = call noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC1ERKDn(%"class.rlbox::tainted"* noundef nonnull align 8 dereferenceable(8) %2, i8** noundef nonnull align 8 dereferenceable(8) %5)
  %7 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %2, i32 0, i32 0
  %8 = load [4 x i32]*, [4 x i32]** %7, align 8
  %9 = ptrtoint [4 x i32]* %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef i32 @_ZN5rlbox18rlbox_test_sandbox22impl_malloc_in_sandboxEm(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) #0 align 2 {
  %3 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %3, align 8
  %8 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, 7
  %13 = and i64 %12, -8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %14
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, 4095
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  call void @abort() #21
  unreachable

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef [4 x i32]* @_ZNK5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE23get_unsandboxed_pointerIPA4_iEET_NS_6detail14convert_detail27convert_base_types_t_helperIS6_siixjvE4typeE(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1) #0 align 2 {
  %3 = alloca [4 x i32]*, align 8
  %4 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store [4 x i32]* null, [4 x i32]** %3, align 8
  br label %17

11:                                               ; preds = %2
  %12 = bitcast %"class.rlbox::rlbox_sandbox"* %7 to %"class.rlbox::rlbox_test_sandbox"*
  %13 = load i32, i32* %5, align 4
  %14 = call noundef i8* @_ZNK5rlbox18rlbox_test_sandbox28impl_get_unsandboxed_pointerIPA4_iEEPvj(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %12, i32 noundef %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to [4 x i32]*
  store [4 x i32]* %16, [4 x i32]** %3, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load [4 x i32]*, [4 x i32]** %3, align 8
  ret [4 x i32]* %18
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC1ERKDn(%"class.rlbox::tainted"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 {
  %3 = alloca %"class.rlbox::tainted"*, align 8
  %4 = alloca i8**, align 8
  store %"class.rlbox::tainted"* %0, %"class.rlbox::tainted"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.rlbox::tainted"*, %"class.rlbox::tainted"** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = call noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC2ERKDn(%"class.rlbox::tainted"* noundef nonnull align 8 dereferenceable(8) %5, i8** noundef nonnull align 8 dereferenceable(8) %6)
  ret %"class.rlbox::tainted"* %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE28is_pointer_in_sandbox_memoryEPKv(%"class.rlbox::rlbox_sandbox"* noundef nonnull align 8 dereferenceable(448) %0, i8* noundef %1) #0 align 2 {
  %3 = alloca %"class.rlbox::rlbox_sandbox"*, align 8
  %4 = alloca i8*, align 8
  store %"class.rlbox::rlbox_sandbox"* %0, %"class.rlbox::rlbox_sandbox"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.rlbox::rlbox_sandbox"*, %"class.rlbox::rlbox_sandbox"** %3, align 8
  %6 = bitcast %"class.rlbox::rlbox_sandbox"* %5 to %"class.rlbox::rlbox_test_sandbox"*
  %7 = load i8*, i8** %4, align 8
  %8 = call noundef zeroext i1 @_ZN5rlbox18rlbox_test_sandbox33impl_is_pointer_in_sandbox_memoryEPKv(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %6, i8* noundef %7)
  ret i1 %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZN5rlbox13rlbox_sandboxINS_18rlbox_test_sandboxEE18is_in_same_sandboxEPKvS4_(i8* noundef %0, i8* noundef %1) #0 align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 2, i64* %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call noundef zeroext i1 @_ZN5rlbox18rlbox_test_sandbox23impl_is_in_same_sandboxEPKvS2_(i8* noundef %6, i8* noundef %7)
  ret i1 %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr i64 @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEE16internal_factoryIRS2_EES4_OT_([4 x i32]** noundef nonnull align 8 dereferenceable(8) %0) #0 align 2 {
  %2 = alloca %"class.rlbox::tainted", align 8
  %3 = alloca [4 x i32]**, align 8
  %4 = alloca i8*, align 8
  store [4 x i32]** %0, [4 x i32]*** %3, align 8
  store i8* null, i8** %4, align 8
  %5 = load [4 x i32]**, [4 x i32]*** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) [4 x i32]** @_ZNSt3__17forwardIRPA4_iEEOT_RNS_16remove_referenceIS4_E4typeE([4 x i32]** noundef nonnull align 8 dereferenceable(8) %5) #8
  %7 = load [4 x i32]*, [4 x i32]** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC1IS2_LPv0EEET_PKv(%"class.rlbox::tainted"* noundef nonnull align 8 dereferenceable(8) %2, [4 x i32]* noundef %7, i8* noundef %8)
  %10 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %2, i32 0, i32 0
  %11 = load [4 x i32]*, [4 x i32]** %10, align 8
  %12 = ptrtoint [4 x i32]* %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__117__cxx_atomic_loadIN5rlbox13rlbox_sandboxINS1_18rlbox_test_sandboxEE14Sandbox_StatusEEET_PKNS_22__cxx_atomic_base_implIS6_EENS_12memory_orderE(%"struct.std::__1::__cxx_atomic_base_impl"* noundef %0, i32 noundef %1) #3 {
  %3 = alloca %"struct.std::__1::__cxx_atomic_base_impl"*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %"struct.std::__1::__cxx_atomic_base_impl"* %0, %"struct.std::__1::__cxx_atomic_base_impl"** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %"struct.std::__1::__cxx_atomic_base_impl"*, %"struct.std::__1::__cxx_atomic_base_impl"** %3, align 8
  %7 = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", %"struct.std::__1::__cxx_atomic_base_impl"* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %9 [
    i32 1, label %11
    i32 2, label %11
    i32 5, label %13
  ]

9:                                                ; preds = %2
  %10 = load atomic i32, i32* %7 monotonic, align 4
  store i32 %10, i32* %5, align 4
  br label %15

11:                                               ; preds = %2, %2
  %12 = load atomic i32, i32* %7 acquire, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load atomic i32, i32* %7 seq_cst, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i8* @_ZNK5rlbox18rlbox_test_sandbox28impl_get_unsandboxed_pointerIPA4_iEEPvj(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1) #3 align 2 {
  %3 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  %4 = alloca i32, align 4
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %3, align 8
  %6 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 %7, %9
  %11 = inttoptr i64 %10 to i8*
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC2ERKDn(%"class.rlbox::tainted"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
  %3 = alloca %"class.rlbox::tainted"*, align 8
  %4 = alloca i8**, align 8
  store %"class.rlbox::tainted"* %0, %"class.rlbox::tainted"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.rlbox::tainted"*, %"class.rlbox::tainted"** %3, align 8
  %6 = bitcast %"class.rlbox::tainted"* %5 to %"class.rlbox::tainted_base_impl"*
  %7 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %5, i32 0, i32 0
  %8 = load i8**, i8*** %4, align 8
  store [4 x i32]* null, [4 x i32]** %7, align 8
  ret %"class.rlbox::tainted"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZN5rlbox18rlbox_test_sandbox33impl_is_pointer_in_sandbox_memoryEPKv(%"class.rlbox::rlbox_test_sandbox"* noundef nonnull align 8 dereferenceable(112) %0, i8* noundef %1) #3 align 2 {
  %3 = alloca %"class.rlbox::rlbox_test_sandbox"*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %"class.rlbox::rlbox_test_sandbox"* %0, %"class.rlbox::rlbox_test_sandbox"** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %"class.rlbox::rlbox_test_sandbox"*, %"class.rlbox::rlbox_test_sandbox"** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = and i64 -4096, %8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %"class.rlbox::rlbox_test_sandbox", %"class.rlbox::rlbox_test_sandbox"* %6, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %10, %12
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef zeroext i1 @_ZN5rlbox18rlbox_test_sandbox23impl_is_in_same_sandboxEPKvS2_(i8* noundef %0, i8* noundef %1) #3 align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = and i64 -4096, %8
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 -4096, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) [4 x i32]** @_ZNSt3__17forwardIRPA4_iEEOT_RNS_16remove_referenceIS4_E4typeE([4 x i32]** noundef nonnull align 8 dereferenceable(8) %0) #3 {
  %2 = alloca [4 x i32]**, align 8
  store [4 x i32]** %0, [4 x i32]*** %2, align 8
  %3 = load [4 x i32]**, [4 x i32]*** %2, align 8
  ret [4 x i32]** %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC1IS2_LPv0EEET_PKv(%"class.rlbox::tainted"* noundef nonnull returned align 8 dereferenceable(8) %0, [4 x i32]* noundef %1, i8* noundef %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.rlbox::tainted"*, align 8
  %5 = alloca [4 x i32]*, align 8
  %6 = alloca i8*, align 8
  store %"class.rlbox::tainted"* %0, %"class.rlbox::tainted"** %4, align 8
  store [4 x i32]* %1, [4 x i32]** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.rlbox::tainted"*, %"class.rlbox::tainted"** %4, align 8
  %8 = load [4 x i32]*, [4 x i32]** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC2IS2_LPv0EEET_PKv(%"class.rlbox::tainted"* noundef nonnull align 8 dereferenceable(8) %7, [4 x i32]* noundef %8, i8* noundef %9)
  ret %"class.rlbox::tainted"* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef %"class.rlbox::tainted"* @_ZN5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEEC2IS2_LPv0EEET_PKv(%"class.rlbox::tainted"* noundef nonnull returned align 8 dereferenceable(8) %0, [4 x i32]* noundef %1, i8* noundef %2) unnamed_addr #4 align 2 {
  %4 = alloca %"class.rlbox::tainted"*, align 8
  %5 = alloca [4 x i32]*, align 8
  %6 = alloca i8*, align 8
  store %"class.rlbox::tainted"* %0, %"class.rlbox::tainted"** %4, align 8
  store [4 x i32]* %1, [4 x i32]** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.rlbox::tainted"*, %"class.rlbox::tainted"** %4, align 8
  %8 = bitcast %"class.rlbox::tainted"* %7 to %"class.rlbox::tainted_base_impl"*
  %9 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %7, i32 0, i32 0
  %10 = load [4 x i32]*, [4 x i32]** %5, align 8
  store [4 x i32]* %10, [4 x i32]** %9, align 8
  ret %"class.rlbox::tainted"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) %"class.rlbox::tainted"* @_ZNK5rlbox17tainted_base_implINS_7taintedEPA4_iNS_18rlbox_test_sandboxEE4implEv(%"class.rlbox::tainted_base_impl"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"class.rlbox::tainted_base_impl"*, align 8
  store %"class.rlbox::tainted_base_impl"* %0, %"class.rlbox::tainted_base_impl"** %2, align 8
  %3 = load %"class.rlbox::tainted_base_impl"*, %"class.rlbox::tainted_base_impl"** %2, align 8
  %4 = bitcast %"class.rlbox::tainted_base_impl"* %3 to %"class.rlbox::tainted"*
  ret %"class.rlbox::tainted"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef [4 x i32]* @_ZNK5rlbox7taintedIPA4_iNS_18rlbox_test_sandboxEE13get_raw_valueEv(%"class.rlbox::tainted"* noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
  %2 = alloca %"class.rlbox::tainted"*, align 8
  store %"class.rlbox::tainted"* %0, %"class.rlbox::tainted"** %2, align 8
  %3 = load %"class.rlbox::tainted"*, %"class.rlbox::tainted"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::tainted", %"class.rlbox::tainted"* %3, i32 0, i32 0
  %5 = load [4 x i32]*, [4 x i32]** %4, align 8
  ret [4 x i32]* %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) %"class.rlbox::tainted_base_impl.29"* @_ZNSt3__18as_constIN5rlbox17tainted_base_implINS1_16tainted_volatileEA4_iNS1_18rlbox_test_sandboxEEEEERNS_9add_constIT_E4typeERS8_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %0) #3 {
  %2 = alloca %"class.rlbox::tainted_base_impl.29"*, align 8
  store %"class.rlbox::tainted_base_impl.29"* %0, %"class.rlbox::tainted_base_impl.29"** %2, align 8
  %3 = load %"class.rlbox::tainted_base_impl.29"*, %"class.rlbox::tainted_base_impl.29"** %2, align 8
  ret %"class.rlbox::tainted_base_impl.29"* %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) %"class.rlbox::tainted_volatile.30"* @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEEixIRiEERKNS1_IiS3_EEOT_(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #0 align 2 {
  %3 = alloca %"class.rlbox::tainted_base_impl.29"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__1::array"*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %"class.rlbox::tainted_volatile.30"*, align 8
  store %"class.rlbox::tainted_base_impl.29"* %0, %"class.rlbox::tainted_base_impl.29"** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %"class.rlbox::tainted_base_impl.29"*, %"class.rlbox::tainted_base_impl.29"** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call noundef i32 @_ZN5rlbox6detail12unwrap_valueIRiEEDaOT_(i32* noundef nonnull align 4 dereferenceable(4) %11) #8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  call void @_ZN5rlbox6detail13dynamic_checkEbPKc(i1 noundef zeroext %20, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %21 = call noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEE4implEv(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %10)
  %22 = call noundef nonnull align 4 dereferenceable(16) %"struct.std::__1::array"* @_ZNK5rlbox16tainted_volatileIA4_iNS_18rlbox_test_sandboxEE21get_sandbox_value_refEv(%"class.rlbox::tainted_volatile"* noundef nonnull align 4 dereferenceable(16) %21) #8
  store %"struct.std::__1::array"* %22, %"struct.std::__1::array"** %7, align 8
  %23 = load %"struct.std::__1::array"*, %"struct.std::__1::array"** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt3__15arrayIViLm4EEixEm(%"struct.std::__1::array"* noundef nonnull align 4 dereferenceable(16) %23, i64 noundef %25) #8
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call noundef i32* @_ZN5rlbox6detail29remove_volatile_from_ptr_castIVKiEEDaPT_(i32* noundef %27)
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %"class.rlbox::tainted_volatile.30"*
  store %"class.rlbox::tainted_volatile.30"* %31, %"class.rlbox::tainted_volatile.30"** %9, align 8
  %32 = load %"class.rlbox::tainted_volatile.30"*, %"class.rlbox::tainted_volatile.30"** %9, align 8
  ret %"class.rlbox::tainted_volatile.30"* %32
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i32 @_ZN5rlbox6detail12unwrap_valueIRiEEDaOT_(i32* noundef nonnull align 4 dereferenceable(4) %0) #3 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(16) %"class.rlbox::tainted_volatile"* @_ZNK5rlbox17tainted_base_implINS_16tainted_volatileEA4_iNS_18rlbox_test_sandboxEE4implEv(%"class.rlbox::tainted_base_impl.29"* noundef nonnull align 1 dereferenceable(1) %0) #3 align 2 {
  %2 = alloca %"class.rlbox::tainted_base_impl.29"*, align 8
  store %"class.rlbox::tainted_base_impl.29"* %0, %"class.rlbox::tainted_base_impl.29"** %2, align 8
  %3 = load %"class.rlbox::tainted_base_impl.29"*, %"class.rlbox::tainted_base_impl.29"** %2, align 8
  %4 = bitcast %"class.rlbox::tainted_base_impl.29"* %3 to %"class.rlbox::tainted_volatile"*
  ret %"class.rlbox::tainted_volatile"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(16) %"struct.std::__1::array"* @_ZNK5rlbox16tainted_volatileIA4_iNS_18rlbox_test_sandboxEE21get_sandbox_value_refEv(%"class.rlbox::tainted_volatile"* noundef nonnull align 4 dereferenceable(16) %0) #3 align 2 {
  %2 = alloca %"class.rlbox::tainted_volatile"*, align 8
  store %"class.rlbox::tainted_volatile"* %0, %"class.rlbox::tainted_volatile"** %2, align 8
  %3 = load %"class.rlbox::tainted_volatile"*, %"class.rlbox::tainted_volatile"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::tainted_volatile", %"class.rlbox::tainted_volatile"* %3, i32 0, i32 0
  ret %"struct.std::__1::array"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt3__15arrayIViLm4EEixEm(%"struct.std::__1::array"* noundef nonnull align 4 dereferenceable(16) %0, i64 noundef %1) #3 align 2 {
  %3 = alloca %"struct.std::__1::array"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::__1::array"* %0, %"struct.std::__1::array"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::__1::array"*, %"struct.std::__1::array"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::array", %"struct.std::__1::array"* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %7
  ret i32* %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i32* @_ZN5rlbox6detail29remove_volatile_from_ptr_castIVKiEEDaPT_(i32* noundef %0) #3 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) i32* @_ZN5rlbox16tainted_volatileIiNS_18rlbox_test_sandboxEE21get_sandbox_value_refEv(%"class.rlbox::tainted_volatile.30"* noundef nonnull align 4 dereferenceable(4) %0) #3 align 2 {
  %2 = alloca %"class.rlbox::tainted_volatile.30"*, align 8
  store %"class.rlbox::tainted_volatile.30"* %0, %"class.rlbox::tainted_volatile.30"** %2, align 8
  %3 = load %"class.rlbox::tainted_volatile.30"*, %"class.rlbox::tainted_volatile.30"** %2, align 8
  %4 = getelementptr inbounds %"class.rlbox::tainted_volatile.30", %"class.rlbox::tainted_volatile.30"* %3, i32 0, i32 0
  ret i32* %4
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox6detail33convert_type_fundamental_or_arrayIViiEEvRT_RKT0_(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %5, align 1
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  call void @_ZN5rlbox6detail24convert_type_fundamentalIViiEEvRT_RVKT0_(i32* noundef nonnull align 4 dereferenceable(4) %6, i32* noundef nonnull align 4 dereferenceable(4) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZN5rlbox6detail24convert_type_fundamentalIViiEEvRT_RVKT0_(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #3 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 1, i8* %9, align 1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load volatile i32, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  store volatile i32 %12, i32* %13, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::shared_timed_mutex"* @_ZNSt3__118shared_timed_mutexD2Ev(%"class.std::__1::shared_timed_mutex"* noundef nonnull returned align 8 dereferenceable(168) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::shared_timed_mutex"*, align 8
  store %"class.std::__1::shared_timed_mutex"* %0, %"class.std::__1::shared_timed_mutex"** %2, align 8
  %3 = load %"class.std::__1::shared_timed_mutex"*, %"class.std::__1::shared_timed_mutex"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::shared_timed_mutex", %"class.std::__1::shared_timed_mutex"* %3, i32 0, i32 0
  %5 = call noundef %"struct.std::__1::__shared_mutex_base"* @_ZNSt3__119__shared_mutex_baseD1Ev(%"struct.std::__1::__shared_mutex_base"* noundef nonnull align 8 dereferenceable(164) %4) #8
  ret %"class.std::__1::shared_timed_mutex"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__shared_mutex_base"* @_ZNSt3__119__shared_mutex_baseD1Ev(%"struct.std::__1::__shared_mutex_base"* noundef nonnull returned align 8 dereferenceable(164) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__shared_mutex_base"*, align 8
  store %"struct.std::__1::__shared_mutex_base"* %0, %"struct.std::__1::__shared_mutex_base"** %2, align 8
  %3 = load %"struct.std::__1::__shared_mutex_base"*, %"struct.std::__1::__shared_mutex_base"** %2, align 8
  %4 = call noundef %"struct.std::__1::__shared_mutex_base"* @_ZNSt3__119__shared_mutex_baseD2Ev(%"struct.std::__1::__shared_mutex_base"* noundef nonnull align 8 dereferenceable(164) %3) #8
  ret %"struct.std::__1::__shared_mutex_base"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__shared_mutex_base"* @_ZNSt3__119__shared_mutex_baseD2Ev(%"struct.std::__1::__shared_mutex_base"* noundef nonnull returned align 8 dereferenceable(164) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__shared_mutex_base"*, align 8
  store %"struct.std::__1::__shared_mutex_base"* %0, %"struct.std::__1::__shared_mutex_base"** %2, align 8
  %3 = load %"struct.std::__1::__shared_mutex_base"*, %"struct.std::__1::__shared_mutex_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__shared_mutex_base", %"struct.std::__1::__shared_mutex_base"* %3, i32 0, i32 2
  %5 = call noundef %"class.std::__1::condition_variable"* @_ZNSt3__118condition_variableD1Ev(%"class.std::__1::condition_variable"* noundef nonnull align 8 dereferenceable(48) %4) #8
  %6 = getelementptr inbounds %"struct.std::__1::__shared_mutex_base", %"struct.std::__1::__shared_mutex_base"* %3, i32 0, i32 1
  %7 = call noundef %"class.std::__1::condition_variable"* @_ZNSt3__118condition_variableD1Ev(%"class.std::__1::condition_variable"* noundef nonnull align 8 dereferenceable(48) %6) #8
  %8 = getelementptr inbounds %"struct.std::__1::__shared_mutex_base", %"struct.std::__1::__shared_mutex_base"* %3, i32 0, i32 0
  %9 = call noundef %"class.std::__1::mutex"* @_ZNSt3__15mutexD1Ev(%"class.std::__1::mutex"* noundef nonnull align 8 dereferenceable(64) %8) #8
  ret %"struct.std::__1::__shared_mutex_base"* %3
}

; Function Attrs: nounwind
declare noundef %"class.std::__1::condition_variable"* @_ZNSt3__118condition_variableD1Ev(%"class.std::__1::condition_variable"* noundef nonnull returned align 8 dereferenceable(48)) unnamed_addr #11

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2Ev(%"class.std::__1::vector.22"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %5 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 0
  store i8** null, i8*** %6, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 1
  store i8** null, i8*** %7, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %5, i32 0, i32 2
  store i8* null, i8** %3, align 8
  %9 = invoke noundef %"class.std::__1::__compressed_pair.23"* @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %8, i8** noundef nonnull align 8 dereferenceable(8) %3, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %10 unwind label %12

10:                                               ; preds = %1
  invoke void @_ZNSt3__119__debug_db_insert_cINS_6vectorIPvNS_9allocatorIS2_EEEEEEvPT_(%"class.std::__1::vector.22"* noundef %5)
          to label %11 unwind label %12

11:                                               ; preds = %10
  ret %"class.std::__1::vector.22"* %5

12:                                               ; preds = %10, %1
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #17
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.23"* @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair.23"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.23"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"class.std::__1::__compressed_pair.23"* %0, %"class.std::__1::__compressed_pair.23"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %7 = load %"class.std::__1::__compressed_pair.23"*, %"class.std::__1::__compressed_pair.23"** %4, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  %10 = call noundef %"class.std::__1::__compressed_pair.23"* @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair.23"* noundef nonnull align 8 dereferenceable(8) %7, i8** noundef nonnull align 8 dereferenceable(8) %8, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %9)
  ret %"class.std::__1::__compressed_pair.23"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cINS_6vectorIPvNS_9allocatorIS2_EEEEEEvPT_(%"class.std::__1::vector.22"* noundef %0) #3 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef %"class.std::__1::__compressed_pair.23"* @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_(%"class.std::__1::__compressed_pair.23"* noundef nonnull returned align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"class.std::__1::__compressed_pair.23"*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair.23"* %0, %"class.std::__1::__compressed_pair.23"** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %"struct.std::__1::__default_init_tag"* %2, %"struct.std::__1::__default_init_tag"** %6, align 8
  %8 = load %"class.std::__1::__compressed_pair.23"*, %"class.std::__1::__compressed_pair.23"** %4, align 8
  %9 = bitcast %"class.std::__1::__compressed_pair.23"* %8 to %"struct.std::__1::__compressed_pair_elem.24"*
  %10 = load i8**, i8*** %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNSt3__17forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE(i8** noundef nonnull align 8 dereferenceable(8) %10) #8
  %12 = call noundef %"struct.std::__1::__compressed_pair_elem.24"* @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2IDnvEEOT_(%"struct.std::__1::__compressed_pair_elem.24"* noundef nonnull align 8 dereferenceable(8) %9, i8** noundef nonnull align 8 dereferenceable(8) %11)
  %13 = bitcast %"class.std::__1::__compressed_pair.23"* %8 to %"struct.std::__1::__compressed_pair_elem.25"*
  %14 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %6, align 8
  %15 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* noundef nonnull align 1 dereferenceable(1) %14) #8
  %16 = call noundef %"struct.std::__1::__compressed_pair_elem.25"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.25"* noundef nonnull align 1 dereferenceable(1) %13)
  ret %"class.std::__1::__compressed_pair.23"* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__compressed_pair_elem.25"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.25"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca %"struct.std::__1::__compressed_pair_elem.25"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.25"* %0, %"struct.std::__1::__compressed_pair_elem.25"** %3, align 8
  %4 = load %"struct.std::__1::__compressed_pair_elem.25"*, %"struct.std::__1::__compressed_pair_elem.25"** %3, align 8
  %5 = bitcast %"struct.std::__1::__compressed_pair_elem.25"* %4 to %"class.std::__1::allocator.26"*
  %6 = call noundef %"class.std::__1::allocator.26"* @_ZNSt3__19allocatorIPvEC2Ev(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %5) #8
  ret %"struct.std::__1::__compressed_pair_elem.25"* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::allocator.26"* @_ZNSt3__19allocatorIPvEC2Ev(%"class.std::__1::allocator.26"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::allocator.26"*, align 8
  store %"class.std::__1::allocator.26"* %0, %"class.std::__1::allocator.26"** %2, align 8
  %3 = load %"class.std::__1::allocator.26"*, %"class.std::__1::allocator.26"** %2, align 8
  %4 = bitcast %"class.std::__1::allocator.26"* %3 to %"struct.std::__1::__non_trivial_if.27"*
  %5 = call noundef %"struct.std::__1::__non_trivial_if.27"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2Ev(%"struct.std::__1::__non_trivial_if.27"* noundef nonnull align 1 dereferenceable(1) %4) #8
  ret %"class.std::__1::allocator.26"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"struct.std::__1::__non_trivial_if.27"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2Ev(%"struct.std::__1::__non_trivial_if.27"* noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"struct.std::__1::__non_trivial_if.27"*, align 8
  store %"struct.std::__1::__non_trivial_if.27"* %0, %"struct.std::__1::__non_trivial_if.27"** %2, align 8
  %3 = load %"struct.std::__1::__non_trivial_if.27"*, %"struct.std::__1::__non_trivial_if.27"** %2, align 8
  ret %"struct.std::__1::__non_trivial_if.27"* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef %"class.std::__1::vector.22"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2Ev(%"class.std::__1::vector.22"* noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  %3 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %3, align 8
  %4 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %3, align 8
  store %"class.std::__1::vector.22"* %4, %"class.std::__1::vector.22"** %2, align 8
  call void @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %5 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %4, i32 0, i32 0
  %6 = load i8**, i8*** %5, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %9 = call noundef nonnull align 1 dereferenceable(1) %"class.std::__1::allocator.26"* @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4) #8
  %10 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %4, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = call noundef i64 @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %4) #8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateERS3_PS2_m(%"class.std::__1::allocator.26"* noundef nonnull align 1 dereferenceable(1) %9, i8** noundef %11, i64 noundef %12) #8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  ret %"class.std::__1::vector.22"* %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearEv(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %0) #3 align 2 {
  %2 = alloca %"class.std::__1::vector.22"*, align 8
  store %"class.std::__1::vector.22"* %0, %"class.std::__1::vector.22"** %2, align 8
  %3 = load %"class.std::__1::vector.22"*, %"class.std::__1::vector.22"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.22", %"class.std::__1::vector.22"* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  call void @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endEPS1_(%"class.std::__1::vector.22"* noundef nonnull align 8 dereferenceable(24) %3, i8** noundef %5) #8
  ret void
}

attributes #0 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #5 = { mustprogress noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #6 = { noinline ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #7 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { mustprogress noinline noreturn optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #11 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 1}
!8 = !{!"Homebrew clang version 14.0.6"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
