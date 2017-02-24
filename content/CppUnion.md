
 

 

 

 

 

([C++](Cpp.md)) [union](CppUnion.md)
======================================

 

[union](CppUnion.md) is a [C++](Cpp.md) [keyword](CppKeyword.md) to
[declare](CppDeclaration.md) a [struct](CppStruct.md) that uses the
same memory for all elements.

 

In the example below, a [union](CppUnion.md) is created consisting of a
[double](CppDouble.md) and an [int](CppInt.md). When the
[int](CppInt.md) is modified, the [double](CppDouble.md) is modified
as well (and vice versa).

 

-   [Download the Qt Creator project 'CppUnion' (zip)](CppUnion.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/static_assert.hpp> #include <iostream>  struct Struct {   double d;   int i; };  union Union {   double d;   int i; };  int main() {   //Check that a unions' size is   //smaller than a struct's   BOOST_STATIC_ASSERT(sizeof(Union)<sizeof(Struct));    //Create a clean union   Union u;   u.i = 0;   u.d = 0;    u.i = 1000;   std::cout     << "int   : " << u.i << '\n'     << "double: " << u.d << '\n';   u.d = 1000.0;   std::cout     << "int   : " << u.i << '\n'     << "double: " << u.d << '\n';  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------------------------------------
  ` int   : 1000 double: 4.94066e-321 int   : 0 double: 1000`
  -------------------------------------------------------------

 

Consider never using [unions](CppUnion.md) \[1\]. Use
[unions](CppUnion.md) to save space \[2\]. Never use
[unions](CppUnion.md) for type conversion \[2\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 153 (MISRA Rule 110, Revised): 'Unions
    shall not be used.'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[4\] Use unions to save space (represent
    alternatives and never for type conversion'

 

 

 

 

 

 

