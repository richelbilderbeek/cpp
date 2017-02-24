



 

 

 

 

 

([C++](Cpp.md)) [\_algobase.h: Cannot convert 'const int' to 'MyClass \*'](CppCompileError_algobaseHcannotConvertConstIntToMyClassPtr.md)
===========================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------
  ` [C++ Error] _algobase.h(341): E2034 Cannot convert 'const int' to 'MyClass *'`
  ----------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

The following code caused this [compile error](CppCompileError.md):

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct MyClass {};  int main() {   const int size = 10; //Or other positive int   std::vector<MyClass*> v(size,0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: Console

 

The zero denotes that the MyClass [pointer](CppPointer.md) is
uninitialized. The [compiler](CppCompiler.md), however, believes this
zero denotes an [integer](CppInt.md) value.

 

The code where the [compiler](CppCompiler.md) takes you, in
\_algobase.h:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <class _OutputIter, class _Size, class _Tp> _STLP_INLINE_LOOP _OutputIter fill_n(_OutputIter __first, _Size __n, const _Tp& __value) {   _STLP_FIX_LITERAL_BUG(__first)   for ( ; __n > 0; --__n, ++__first)     *__first = __value; //THIS LINE   return __first; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

There are two options:

1.  Change the first [argument](CppArgument.md)'s [data
    type](CppDataType.md) to [unsigned](CppUnsigned.md)
    [int](CppInt.md)
2.  [Cast](CppCast.md) the null in the second
    [argument](CppArgument.md) explicitly to a MyClass\*

 

 

 

 

 

### Change the first [argument](CppArgument.md)'s [data type](CppDataType.md) to [unsigned](CppUnsigned.md) [int](CppInt.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct MyClass {};   int main() {   const unsigned int size = 10; //Or other value   std::vector<MyClass*> v(size,0); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

I would bet that the first [argument](CppArgument.md)'s [data
type](CppDataType.md) might also be [std::size\_t](CppSize_t.md).

 

 

 

 

 

### [Cast](CppCast.md) the null in the second [argument](CppArgument.md) explicitly to a MyClass\*

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct MyClass {};  int main() {   const int size = 10; //Or other positive int   std::vector<MyClass*> v(size, static_cast<MyClass*>(0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



