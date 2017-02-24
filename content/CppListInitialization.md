
 

 

 

 

 

([C++](Cpp.md)) [list initialization](CppListInitialization.md)
=================================================================

 

[List initialization](CppListInitialization.md) is a type of
[initialization](CppInitialize.md).

 

[List initialization](CppListInitialization.md) is the first of the
four [initialization](CppInitialize.md) styles \[1\], prefer this way
of initialization for named types \[2\].

 

  -------------------------------------------------------------
  ` T a { b }; //Preferred [2] T a = { b }; T a = b; T a(b);`
  -------------------------------------------------------------

 

Prefer the [=](CppOperatorAssign.md) [syntax](CppSyntax.md) for the
[initialization](CppListInitialization.md) in
[declarations](CppDeclaration.md) using [auto](CppAuto.md) \[3\]

 

  -------------------------------------------------------------------------
  ` auto a { b }; auto a = { b }; auto a = b; //Preferred [3] auto a(b);`
  -------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2.
    Chapter 6.3.5. Initialization, page 159
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[19\] Prefer the {}-initializer syntax for
    declarations with a named type'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[20\] Prefer the = syntax for the initialization
    in declarations using auto'

 

 

 

 

 

 

