

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [\_algobase.h: Cannot convert 'const int' to 'MyClass \*'](CppCompileError_algobaseHcannotConvertConstIntToMyClassPtr.htm)
===========================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------
  ` [C++ Error] _algobase.h(341): E2034 Cannot convert 'const int' to 'MyClass *'`
  ----------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

The following code caused this [compile error](CppCompileError.htm):

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct MyClass {};  int main() {   const int size = 10; //Or other positive int   std::vector<MyClass*> v(size,0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console

 

The zero denotes that the MyClass [pointer](CppPointer.htm) is
uninitialized. The [compiler](CppCompiler.htm), however, believes this
zero denotes an [integer](CppInt.htm) value.

 

The code where the [compiler](CppCompiler.htm) takes you, in
\_algobase.h:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <class _OutputIter, class _Size, class _Tp> _STLP_INLINE_LOOP _OutputIter fill_n(_OutputIter __first, _Size __n, const _Tp& __value) {   _STLP_FIX_LITERAL_BUG(__first)   for ( ; __n > 0; --__n, ++__first)     *__first = __value; //THIS LINE   return __first; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

There are two options:

1.  Change the first [argument](CppArgument.htm)'s [data
    type](CppDataType.htm) to [unsigned](CppUnsigned.htm)
    [int](CppInt.htm)
2.  [Cast](CppCast.htm) the null in the second
    [argument](CppArgument.htm) explicitly to a MyClass\*

 

 

 

 

 

### Change the first [argument](CppArgument.htm)'s [data type](CppDataType.htm) to [unsigned](CppUnsigned.htm) [int](CppInt.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct MyClass {};   int main() {   const unsigned int size = 10; //Or other value   std::vector<MyClass*> v(size,0); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

I would bet that the first [argument](CppArgument.htm)'s [data
type](CppDataType.htm) might also be [std::size\_t](CppSize_t.htm).

 

 

 

 

 

### [Cast](CppCast.htm) the null in the second [argument](CppArgument.htm) explicitly to a MyClass\*

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct MyClass {};  int main() {   const int size = 10; //Or other positive int   std::vector<MyClass*> v(size, static_cast<MyClass*>(0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
