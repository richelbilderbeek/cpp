
 

 

 

 

 

([C++](Cpp.md)) [default constructor](CppDefaultConstructor.md)
=================================================================

 

'A [default constructor](CppDefaultConstructor.md) is a
[constructor](CppConstructor.md) which needs no
[arguments](CppArgument.md).' \[2\]

 

  --------------------------------------------------------------------------------------
  ` struct MyClass {   MyClass() {}; //A default constructor   //Rest of the class };`
  --------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   MyClass(int x) : m_x(x) {}; //A default constructor   //Rest of the public part of the class   private:   int m_x;   //Rest of the private part of the class };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Give a [class](CppClass.md) a [default
    constructor](CppDefaultConstructor.md) if and only if there is a
    "natural" default value \[1\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice, page 525: '\[7\] Give a class a default constructor if and
    only if there is a "natural" default value'
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.14: 'A default constructor is a
    constructor which needs no arguments.'

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
