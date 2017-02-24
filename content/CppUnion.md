



 

 

 

 

 

([C++](Cpp.htm)) [union](CppUnion.htm)
======================================

 

[union](CppUnion.htm) is a [C++](Cpp.htm) [keyword](CppKeyword.htm) to
[declare](CppDeclaration.htm) a [struct](CppStruct.htm) that uses the
same memory for all elements.

 

In the example below, a [union](CppUnion.htm) is created consisting of a
[double](CppDouble.htm) and an [int](CppInt.htm). When the
[int](CppInt.htm) is modified, the [double](CppDouble.htm) is modified
as well (and vice versa).

 

-   [Download the Qt Creator project 'CppUnion' (zip)](CppUnion.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/static_assert.hpp> #include <iostream>  struct Struct {   double d;   int i; };  union Union {   double d;   int i; };  int main() {   //Check that a unions' size is   //smaller than a struct's   BOOST_STATIC_ASSERT(sizeof(Union)<sizeof(Struct));    //Create a clean union   Union u;   u.i = 0;   u.d = 0;    u.i = 1000;   std::cout     << "int   : " << u.i << '\n'     << "double: " << u.d << '\n';   u.d = 1000.0;   std::cout     << "int   : " << u.i << '\n'     << "double: " << u.d << '\n';  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------------------------------------
  ` int   : 1000 double: 4.94066e-321 int   : 0 double: 1000`
  -------------------------------------------------------------

 

Consider never using [unions](CppUnion.htm) \[1\]. Use
[unions](CppUnion.htm) to save space \[2\]. Never use
[unions](CppUnion.htm) for type conversion \[2\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 153 (MISRA Rule 110, Revised): 'Unions
    shall not be used.'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[4\] Use unions to save space (represent
    alternatives and never for type conversion'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
