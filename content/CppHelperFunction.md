
 

 

 

 

 

([C++](Cpp.md)) [helper function](CppHelperFunction.md)
=========================================================

 

A [helper function](CppHelperFunction.md) is a non-[member
function](CppMemberFunction.md) that belongs to a
[class](CppClass.md):

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` Point operator+(const Point& lhs, const Point& rhs) {   return Point(lhs.GetX() + rhs.GetX(), lhs.GetY() + rhs.GetY()); }`
  ------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Avoid [helper functions](CppHelperFunction.md) (except operator
    functions) at file scope in [header (.h) files](CppHeaderFile.md)
    \[1\]
-   Avoid [helper functions](CppHelperFunction.md) with [external
    linkage](CppExternalLinkage.md) (including operator functions) in
    [implementation (.cpp) files](CppImplementationFile.md) \[1\].
-   Use [namespaces](CppNamespace.md) to associate [helper
    functions](CppHelperFunction.md) with the [class](CppClass.md)
    they work on \[2\]
-   Use [helper functions](CppHelperFunction.md) for symmetric
    [operators](CppOperator.md) \[3\], for example
    [operator+](CppOperatorPlus) and [operator-](CppOperatorPlus)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.2
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[7\] Use namespaces to associate helper
    functions with "their" class'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[8\] Use nonmember functions for symmetric
    operators'

 

 

 

 

 

 

