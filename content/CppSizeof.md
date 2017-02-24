
 

 

 

 

 

([C++](Cpp.md)) [sizeof](CppSizeof.md)
========================================

 

[sizeof](CppSizeof.md) is a compile-time [operator](CppOperator.md) to
determine the size of a [data type](CppDataType.md) in bytes.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout     << "bool size: " << sizeof(bool) << '\n'     << "int size : " << sizeof(int) << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[sizeof](CppSizeof.md) being a compile-time [operator](CppOperator.md)
------------------------------------------------------------------------

 

Because [sizeof](CppSizeof.md) is a compile-time
[operator](CppOperator.md), one can use on it:

-   ![C++11](PicCpp11.png)![STL](PicStl.png)
    [static\_assert](CppStatic_assert.md)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [BOOST\_STATIC\_ASSERT](CppBOOST_STATIC_ASSERT.md)

 

-   [Download the Qt Creator project 'CppSizeof' (zip)](CppSizeof.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int main() {   static_assert(sizeof("")     == 1,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("1")    == 2,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("12")   == 3,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("123")  == 4,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("1234") == 5,"The sizeof of a string is its number of characters + 1"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

