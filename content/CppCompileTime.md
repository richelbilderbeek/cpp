

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [compile time](CppCompileTime.htm)
===================================================

 

[compile time](CppCompileTime.htm) is the term used for:

-   the time it takes to [compile](CppCompile.htm). Techniques to
    shorten this are:
    -   use of [forward declarations](CppForwardDeclaration.htm)
    -   use of [pimpl idiom](CppPimpl.htm)
    -   use of precompiled [header files](CppHeaderFile.htm)
-   properties known when [compiling](CppCompile.htm). For example, the
    [factorial](CppFactorial.htm) of any ([compile
    time](CppCompileTime.htm)) [constant](CppConst.htm) is known.
    [Template metaprogramming](CppTemplateMetaprogramming.htm) shifts
    the runtime calculations to [compile time](CppCompileTime.htm)

 

What can be checked at [compile time](CppCompileTime.htm) is usually
best checked at [compile time](CppCompileTime.htm), for example by using
[static\_assert](CppStatic_assert.htm).

 

[compile time](CppCompileTime.htm) is followed by [link
time](CppLinkTime.htm).

 

 

 

 

 

List of [compile time](CppCompileTime.htm) checks (incomplete)
--------------------------------------------------------------

 

From [type\_traits.h](CppType_traitsH.htm):

-   [add\_const](CppAdd_const.htm)
-   [add\_cv](CppAdd_cv.htm)
-   [add\_lvalue\_reference](CppAdd_lvalue_reference.htm)
-   [add\_pointer](CppAdd_pointer.htm)
-   [add\_rvalue\_reference](CppAdd_rvalue_reference.htm)
-   [add\_volatile](CppAdd_volatile.htm)
-   [aligned\_storage](CppAligned_storage.htm)
-   [alignment\_of](CppAlignment_of.htm)
-   [common\_type](CppCommon_type.htm)
-   [conditional](CppConditional.htm)
-   [enable\_if](CppEnable_if.htm)
-   [extent](CppExtent.htm)
-   [has\_trivial\_copy\_assign](CppHas_trivial_copy_assign.htm)
-   [has\_trivial\_copy\_constructor](CppHas_trivial_copy_constructor.htm)
-   [has\_trivial\_default\_constructor](CppHas_trivial_default_constructor.htm)
-   [has\_virtual\_destructor](CppHas_virtual_destructor.htm)
-   [integral\_constant](CppIntegral_constant.htm)
-   [is\_abstract](CppIs_abstract.htm)
-   [is\_arithmetic](CppIs_arithmetic.htm)
-   [is\_array](CppIs_array.htm)
-   [is\_assignable](CppIs_assignable.htm)
-   [is\_base\_of](CppIs_base_of.htm)
-   [is\_class](CppIs_class.htm)
-   [is\_compound](CppIs_compound.htm)
-   [is\_const](CppIs_const.htm)
-   [is\_const&lt;\_Tp](CppIs_const%3C_Tp.htm)
-   [is\_constructible](CppIs_constructible.htm)
-   [is\_convertible](CppIs_convertible.htm)
-   [is\_copy\_assignable](CppIs_copy_assignable.htm)
-   [is\_copy\_constructible](CppIs_copy_constructible.htm)
-   [is\_default\_constructible](CppIs_default_constructible.htm)
-   [is\_destructible](CppIs_destructible.htm)
-   [is\_empty](CppIs_empty.htm)
-   [is\_enum](CppIs_enum.htm)
-   [is\_floating\_point](CppIs_floating_point.htm)
-   [is\_function](CppIs_function.htm)
-   [is\_fundamental](CppIs_fundamental.htm)
-   [is\_integral](CppIs_integral.htm)
-   [is\_literal\_type](CppIs_literal_type.htm)
-   [is\_lvalue\_reference](CppIs_lvalue_reference.htm)
-   [is\_lvalue\_reference&lt;\_Tp&&gt;](CppIs_lvalue_reference%3C_Tp&%3E.htm)
-   [is\_member\_function\_pointer](CppIs_member_function_pointer.htm)
-   [is\_member\_object\_pointer](CppIs_member_object_pointer.htm)
-   [is\_member\_pointer](CppIs_member_pointer.htm)
-   [is\_move\_assignable](CppIs_move_assignable.htm)
-   [is\_move\_constructible](CppIs_move_constructible.htm)
-   [is\_nothrow\_assignable](CppIs_nothrow_assignable.htm)
-   [is\_nothrow\_constructible](CppIs_nothrow_constructible.htm)
-   [is\_nothrow\_copy\_assignable](CppIs_nothrow_copy_assignable.htm)
-   [is\_nothrow\_copy\_constructible](CppIs_nothrow_copy_constructible.htm)
-   [is\_nothrow\_default\_constructible](CppIs_nothrow_default_constructible.htm)
-   [is\_nothrow\_destructible](CppIs_nothrow_destructible.htm)
-   [is\_nothrow\_move\_assignable](CppIs_nothrow_move_assignable.htm)
-   [is\_nothrow\_move\_constructible](CppIs_nothrow_move_constructible.htm)
-   [is\_object](CppIs_object.htm)
-   [is\_pod](CppIs_pod.htm)
-   [is\_pointer](CppIs_pointer.htm)
-   [is\_polymorphic](CppIs_polymorphic.htm)
-   [is\_reference](CppIs_reference.htm)
-   [is\_rvalue\_reference](CppIs_rvalue_reference.htm)
-   [is\_rvalue\_reference&lt;\_Tp&&&gt;](CppIs_rvalue_reference%3C_Tp&&%3E.htm)
-   [is\_same](CppIs_same.htm)
-   [is\_scalar](CppIs_scalar.htm)
-   [is\_signed](CppIs_signed.htm)
-   [is\_standard\_layout](CppIs_standard_layout.htm)
-   [is\_trivial](CppIs_trivial.htm)
-   [is\_trivially\_destructible](CppIs_trivially_destructible.htm)
-   [is\_union](CppIs_union.htm)
-   [is\_unsigned](CppIs_unsigned.htm)
-   [is\_void](CppIs_void.htm)
-   [is\_volatile](CppIs_volatile.htm)
-   [is\_volatile&lt;\_Tp](CppIs_volatile%3C_Tp.htm)
-   [make\_signed](CppMake_signed.htm)
-   [make\_unsigned](CppMake_unsigned.htm)
-   [rank](CppRank.htm)
-   [remove\_all\_extents](CppRemove_all_extents.htm)
-   [remove\_const](CppRemove_const.htm)
-   [remove\_const&lt;\_Tp](CppRemove_const%3C_Tp.htm)
-   [remove\_cv](CppRemove_cv.htm)
-   [remove\_extent](CppRemove_extent.htm)
-   [remove\_pointer](CppRemove_pointer.htm)
-   [remove\_reference](CppRemove_reference.htm)
-   [remove\_volatile](CppRemove_volatile.htm)
-   [result\_of](CppResult_of.htm)
-   [underlying\_type](CppUnderlying_type.htm)

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[21\] What can be checked at compile time is
    usually best checked at compile time (using static\_assert)'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
