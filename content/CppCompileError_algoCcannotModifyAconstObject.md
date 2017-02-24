[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [\_algo.c: Cannot modify a const object](CppCompileError_algoCcannotModifyAconstObject.htm)
============================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------
  ` [C++ Error] _algo.c(151): E2024 Cannot modify a const object`
  -----------------------------------------------------------------

 

The [compiler](CppCompiler.htm) takes you to the following line in
\_algo.c:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` // search_n.  Search for __count consecutive copies of __val.   template <class _ForwardIter, class _Integer, class _Tp> _ForwardIter search_n(_ForwardIter __first, _ForwardIter __last,                       _Integer __count, const _Tp& __val) {   _STLP_DEBUG_CHECK(__check_range(__first, __last))   if (__count <= 0)     return __first;   else {     __first = find(__first, __last, __val);     while (__first != __last) {       _Integer __n = __count - 1;       _ForwardIter __i = __first;       ++__i;       while (__i != __last && __n != 0 && *__i == __val) {         ++__i;         --__n; // <---THIS LINE       }       if (__n == 0)         return __first;       else         __first = find(__i, __last, __val);     }     return __last;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <string>  int main() {   const std::string s = "abc***def";   const int n = 3; //Number of repeats   std::search_n( s.begin(),s.end(),n,'*'); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution/workaround
-------------------

 

Remove the [const](CppConst.htm) of the [int](CppInt.htm) for the number
of repeats, by [static\_cast](CppStatic_cast.htm)ing it in the
[function](CppFunction.htm) call.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <algorithm>  int main() {   const std::string s = "abc***def";   const int n = 3; //Number of repeats   std::search_n( s.begin(),s.end(),static_cast<int>(n),'*'); //n must be copied to int type }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that a [const\_cast](CppConst_cast.htm) does not work. Personally,
I would find this more appropriate, but I do not understand why this
keeps giving the same error.

 

 

 

 

 

In-depth cause and better solution for advanced programmers
-----------------------------------------------------------

 

The actual problem is in \_algo.c. I have made all relevant information
**strong**:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` // search_n.  Search for __count consecutive copies of __val.   template <class _ForwardIter, class _Integer, class _Tp> _ForwardIter search_n(_ForwardIter __first, _ForwardIter __last,                       _Integer __count, const _Tp& __val) {   _STLP_DEBUG_CHECK(__check_range(__first, __last))   if (__count <= 0)     return __first;   else {     __first = find(__first, __last, __val);     while (__first != __last) {       _Integer __n = __count - 1;       _ForwardIter __i = __first;       ++__i;       while (__i != __last && __n != 0 && *__i == __val) {         ++__i;         --__n;       }       if (__n == 0)         return __first;       else         __first = find(__i, __last, __val);     }     return __last;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Because \_Integer is a [template](CppTemplate.htm) type, the
[constness](CppConst.htm) of the \_\_count argument is also taken into
account. The [local](CppLocal.htm) \_Integer \_\_n, however, must not be
[const](CppConst.htm).

 

A better solution would be to make \_\_n of non-[const](CppConst.htm)
\_\_integer type, so the user can write
[const-correct](CppConstCorrect.htm) code.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
