



 

 

 

 

 

([C++](Cpp.htm)) [sizeof](CppSizeof.htm)
========================================

 

[sizeof](CppSizeof.htm) is a compile-time [operator](CppOperator.htm) to
determine the size of a [data type](CppDataType.htm) in bytes.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout     << "bool size: " << sizeof(bool) << '\n'     << "int size : " << sizeof(int) << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[sizeof](CppSizeof.htm) being a compile-time [operator](CppOperator.htm)
------------------------------------------------------------------------

 

Because [sizeof](CppSizeof.htm) is a compile-time
[operator](CppOperator.htm), one can use on it:

-   ![C++11](PicCpp11.png)![STL](PicStl.png)
    [static\_assert](CppStatic_assert.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [BOOST\_STATIC\_ASSERT](CppBOOST_STATIC_ASSERT.htm)

 

-   [Download the Qt Creator project 'CppSizeof' (zip)](CppSizeof.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int main() {   static_assert(sizeof("")     == 1,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("1")    == 2,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("12")   == 3,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("123")  == 4,"The sizeof of a string is its number of characters + 1");   static_assert(sizeof("1234") == 5,"The sizeof of a string is its number of characters + 1"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
