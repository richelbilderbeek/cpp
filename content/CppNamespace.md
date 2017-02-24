



 

 

 

 

 

([C++](Cpp.htm)) [namespace](CppNamespace.htm)
==============================================

 

[namespace](CppNamespace.htm) is a [keyword](CppKeyword.htm) to group
[functions](CppFunction.htm) and [classes](CppClass.htm).

 

To call something from a certain [namespace](CppNamespace.htm), write
the [namespace](CppNamespace.htm)'s name in front, followed by the
[scope operator, ::](CppOperatorScope.htm).

 

[Functions](CppFunction.htm) and [classes](CppClass.htm) that are not
put into a [namespace](CppNamespace.htm) reside in the
[global](CppGlobal.htm) [namespace](CppNamespace.htm).

 

The default [namespace](CppNamespace.htm) used is the
[global](CppGlobal.htm) [namespace](CppNamespace.htm). You can change
this by using the [keyword](CppKeyword.htm) [using](CppUsing.htm).

 

All [STL](CppStl.htm) [functions](CppFunction.htm) and
[classes](CppClass.htm) are in the [namespace](CppNamespace.htm)
[std](CppStd.htm).

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [namespace example 1: scope](CppNamespaceExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [namespaces](CppNamespace.htm) to express logical structure
    \[1\]
-   Use [namespaces](CppNamespace.htm) to associate [helper
    functions](CppHelperFunction.htm) with the [class](CppClass.htm)
    they work on \[12\]
-   Place every nonlocal name, except [main](CppMain.htm), in some
    [namespace](CppNamespace.htm) \[2\]
-   Design a [namespace](CppNamespace.htm) so that you can conveniently
    us it without accidentally gaining access to unrelated
    [namespaces](CppNamespace.htm) \[3\]
-   Avoid very short names for [namespaces](CppNamespace.htm) \[4\]
-   If necessary, use [namespace](CppNamespace.htm) aliases to
    abbreviate long [namespace](CppNamespace.htm) names \[5\]
-   Avoid placing heavy notational burdens on users of your
    [namespaces](CppNamespace.htm) \[6\]
-   Use seperate [namespaces](CppNamespace.htm) for
    [interfaces](CppInterface.htm) and
    [implementations](CppImplementation.htm) \[7\]
-   Use the Namespace::member notation when
    [defining](CppDefinition.htm) [namespace](CppNamespace.htm) members
    \[8\], as this avoids the possibility to accidentally add new
    members to the namespace

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[1\] Use namespaces to express logical
    structure'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[2\] Place every nonlocal name, except main(),
    in some namespace'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[3\] Design a namespace so that you can
    conveniently us it without accidentally gaining access to unrelated
    namespaces'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[4\] Avoid very short names for namespaces'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[5\] If necessary, use namespace aliases to
    abbreviate long namespace names'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[6\] Avoid placing heavy notational burdens on
    users of your namespaces'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[7\] Use seperate namespaces for interfaces and
    implementations'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[8\] Use the Namespace::member notation when
    defining namespace members'
9.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 57: 'Keep a type and its nonmember function interface in the
    same namespace'
10. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 58: 'Keep types and functions in seperate namespaces unless
    they're specifically intended to work together'
11. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 59: 'Don't write namespace usings in a header file or before an
    \#include'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[7\] Use namespaces to associate helper
    functions with "their" class'

 

 

 

 

 





 



