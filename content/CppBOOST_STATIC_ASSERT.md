



 

 

 

 

 

([C++](Cpp.md)) [BOOST\_STATIC\_ASSERT](CppBOOST_STATIC_ASSERT.md)
====================================================================

 

[BOOST\_STATIC\_ASSERT](CppBOOST_STATIC_ASSERT.md) is a
[Boost](CppBoost.md) [macro](CppMacro.md)[]() to test assertions (that
can be made at [compile time](CppCompileTime.md)) at [compile
time](CppCompileTime.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/static_assert.hpp>  int main() {   BOOST_STATIC_ASSERT(16 * 16 == 256);   BOOST_STATIC_ASSERT(sizeof(char) == 1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) Note for users of the [C++11](Cpp11.md) [standard](CppStandard.md)
-------------------------------------------------------------------------------------------

 

The [C++11](Cpp11.md) [standard](CppStandard.md) has the
[keyword](CppKeyword.md) [static\_assert](CppStatic_assert.md) serving
the same function.

 

 

 

 

 





 



