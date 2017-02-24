

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [list initialization](CppListInitialization.htm)
=================================================================

 

[List initialization](CppListInitialization.htm) is a type of
[initialization](CppInitialize.htm).

 

[List initialization](CppListInitialization.htm) is the first of the
four [initialization](CppInitialize.htm) styles \[1\], prefer this way
of initialization for named types \[2\].

 

  -------------------------------------------------------------
  ` T a { b }; //Preferred [2] T a = { b }; T a = b; T a(b);`
  -------------------------------------------------------------

 

Prefer the [=](CppOperatorAssign.htm) [syntax](CppSyntax.htm) for the
[initialization](CppListInitialization.htm) in
[declarations](CppDeclaration.htm) using [auto](CppAuto.htm) \[3\]

 

  -------------------------------------------------------------------------
  ` auto a { b }; auto a = { b }; auto a = b; //Preferred [3] auto a(b);`
  -------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2.
    Chapter 6.3.5. Initialization, page 159
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[19\] Prefer the {}-initializer syntax for
    declarations with a named type'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[20\] Prefer the = syntax for the initialization
    in declarations using auto'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
