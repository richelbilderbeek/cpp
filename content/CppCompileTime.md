
 

 

 

 

 

([C++](Cpp.md)) [compile time](CppCompileTime.md)
===================================================

 

[compile time](CppCompileTime.md) is the term used for:

-   the time it takes to [compile](CppCompile.md). Techniques to
    shorten this are:
    -   use of [forward declarations](CppForwardDeclaration.md)
    -   use of [pimpl idiom](CppPimpl.md)
    -   use of precompiled [header files](CppHeaderFile.md)
-   properties known when [compiling](CppCompile.md). For example, the
    [factorial](CppFactorial.md) of any ([compile
    time](CppCompileTime.md)) [constant](CppConst.md) is known.
    [Template metaprogramming](CppTemplateMetaprogramming.md) shifts
    the runtime calculations to [compile time](CppCompileTime.md)

 

What can be checked at [compile time](CppCompileTime.md) is usually
best checked at [compile time](CppCompileTime.md), for example by using
[static\_assert](CppStatic_assert.md).

 

[compile time](CppCompileTime.md) is followed by [link
time](CppLinkTime.md).

 

 

 

 

 

List of [compile time](CppCompileTime.md) checks (incomplete)
--------------------------------------------------------------

 

From [type\_traits.h](CppType_traitsH.md):

-   [add\_const](CppAdd_const.md)
-   [add\_cv](CppAdd_cv.md)
-   [add\_lvalue\_reference](CppAdd_lvalue_reference.md)
-   [add\_pointer](CppAdd_pointer.md)
-   [add\_rvalue\_reference](CppAdd_rvalue_reference.md)
-   [add\_volatile](CppAdd_volatile.md)
-   [aligned\_storage](CppAligned_storage.md)
-   [alignment\_of](CppAlignment_of.md)
-   [common\_type](CppCommon_type.md)
-   [conditional](CppConditional.md)
-   [enable\_if](CppEnable_if.md)
-   [extent](CppExtent.md)
-   [has\_trivial\_copy\_assign](CppHas_trivial_copy_assign.md)
-   [has\_trivial\_copy\_constructor](CppHas_trivial_copy_constructor.md)
-   [has\_trivial\_default\_constructor](CppHas_trivial_default_constructor.md)
-   [has\_virtual\_destructor](CppHas_virtual_destructor.md)
-   [integral\_constant](CppIntegral_constant.md)
-   [is\_abstract](CppIs_abstract.md)
-   [is\_arithmetic](CppIs_arithmetic.md)
-   [is\_array](CppIs_array.md)
-   [is\_assignable](CppIs_assignable.md)
-   [is\_base\_of](CppIs_base_of.md)
-   [is\_class](CppIs_class.md)
-   [is\_compound](CppIs_compound.md)
-   [is\_const](CppIs_const.md)
-   [is\_const&lt;\_Tp](CppIs_const%3C_Tp.md)
-   [is\_constructible](CppIs_constructible.md)
-   [is\_convertible](CppIs_convertible.md)
-   [is\_copy\_assignable](CppIs_copy_assignable.md)
-   [is\_copy\_constructible](CppIs_copy_constructible.md)
-   [is\_default\_constructible](CppIs_default_constructible.md)
-   [is\_destructible](CppIs_destructible.md)
-   [is\_empty](CppIs_empty.md)
-   [is\_enum](CppIs_enum.md)
-   [is\_floating\_point](CppIs_floating_point.md)
-   [is\_function](CppIs_function.md)
-   [is\_fundamental](CppIs_fundamental.md)
-   [is\_integral](CppIs_integral.md)
-   [is\_literal\_type](CppIs_literal_type.md)
-   [is\_lvalue\_reference](CppIs_lvalue_reference.md)
-   [is\_lvalue\_reference&lt;\_Tp&&gt;](CppIs_lvalue_reference%3C_Tp&%3E.md)
-   [is\_member\_function\_pointer](CppIs_member_function_pointer.md)
-   [is\_member\_object\_pointer](CppIs_member_object_pointer.md)
-   [is\_member\_pointer](CppIs_member_pointer.md)
-   [is\_move\_assignable](CppIs_move_assignable.md)
-   [is\_move\_constructible](CppIs_move_constructible.md)
-   [is\_nothrow\_assignable](CppIs_nothrow_assignable.md)
-   [is\_nothrow\_constructible](CppIs_nothrow_constructible.md)
-   [is\_nothrow\_copy\_assignable](CppIs_nothrow_copy_assignable.md)
-   [is\_nothrow\_copy\_constructible](CppIs_nothrow_copy_constructible.md)
-   [is\_nothrow\_default\_constructible](CppIs_nothrow_default_constructible.md)
-   [is\_nothrow\_destructible](CppIs_nothrow_destructible.md)
-   [is\_nothrow\_move\_assignable](CppIs_nothrow_move_assignable.md)
-   [is\_nothrow\_move\_constructible](CppIs_nothrow_move_constructible.md)
-   [is\_object](CppIs_object.md)
-   [is\_pod](CppIs_pod.md)
-   [is\_pointer](CppIs_pointer.md)
-   [is\_polymorphic](CppIs_polymorphic.md)
-   [is\_reference](CppIs_reference.md)
-   [is\_rvalue\_reference](CppIs_rvalue_reference.md)
-   [is\_rvalue\_reference&lt;\_Tp&&&gt;](CppIs_rvalue_reference%3C_Tp&&%3E.md)
-   [is\_same](CppIs_same.md)
-   [is\_scalar](CppIs_scalar.md)
-   [is\_signed](CppIs_signed.md)
-   [is\_standard\_layout](CppIs_standard_layout.md)
-   [is\_trivial](CppIs_trivial.md)
-   [is\_trivially\_destructible](CppIs_trivially_destructible.md)
-   [is\_union](CppIs_union.md)
-   [is\_unsigned](CppIs_unsigned.md)
-   [is\_void](CppIs_void.md)
-   [is\_volatile](CppIs_volatile.md)
-   [is\_volatile&lt;\_Tp](CppIs_volatile%3C_Tp.md)
-   [make\_signed](CppMake_signed.md)
-   [make\_unsigned](CppMake_unsigned.md)
-   [rank](CppRank.md)
-   [remove\_all\_extents](CppRemove_all_extents.md)
-   [remove\_const](CppRemove_const.md)
-   [remove\_const&lt;\_Tp](CppRemove_const%3C_Tp.md)
-   [remove\_cv](CppRemove_cv.md)
-   [remove\_extent](CppRemove_extent.md)
-   [remove\_pointer](CppRemove_pointer.md)
-   [remove\_reference](CppRemove_reference.md)
-   [remove\_volatile](CppRemove_volatile.md)
-   [result\_of](CppResult_of.md)
-   [underlying\_type](CppUnderlying_type.md)

 

 

 

 

 

[Reference](CppReferences.md)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[21\] What can be checked at compile time is
    usually best checked at compile time (using static\_assert)'

 

 

 

 

 

 

