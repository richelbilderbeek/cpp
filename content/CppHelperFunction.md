

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [helper function](CppHelperFunction.htm)
=========================================================

 

A [helper function](CppHelperFunction.htm) is a non-[member
function](CppMemberFunction.htm) that belongs to a
[class](CppClass.htm):

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` Point operator+(const Point& lhs, const Point& rhs) {   return Point(lhs.GetX() + rhs.GetX(), lhs.GetY() + rhs.GetY()); }`
  ------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Avoid [helper functions](CppHelperFunction.htm) (except operator
    functions) at file scope in [header (.h) files](CppHeaderFile.htm)
    \[1\]
-   Avoid [helper functions](CppHelperFunction.htm) with [external
    linkage](CppExternalLinkage.htm) (including operator functions) in
    [implementation (.cpp) files](CppImplementationFile.htm) \[1\].
-   Use [namespaces](CppNamespace.htm) to associate [helper
    functions](CppHelperFunction.htm) with the [class](CppClass.htm)
    they work on \[2\]
-   Use [helper functions](CppHelperFunction.htm) for symmetric
    [operators](CppOperator.htm) \[3\], for example
    [operator+](CppOperatorPlus) and [operator-](CppOperatorPlus)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.2
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[7\] Use namespaces to associate helper
    functions with "their" class'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[8\] Use nonmember functions for symmetric
    operators'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
