

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [throw](CppThrow.htm)
======================================

 

[throw](CppThrow.htm) is the [keyword](CppKeyword.htm) to produce an
exception.

 

  -------------------------------------------------------------------
  ` #include <exception>  int main() {   throw std::exception(); }`
  -------------------------------------------------------------------

 

A [try](CppTry.htm)-block indicates the calling of
[functions](CppFunction.htm) that might [throw](CppThrow.htm) an
[exception](CppException.htm) and is followed by a
[catch](CppCatch.htm)-block, where the [exception](CppException.htm) is
handled.

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   [Throw](CppThrow.htm) an [exception](CppException.htm) to indicate
    that you cannot perform an assigned task \[1\]
-   Let a [constructor](CppConstructor.htm) establish an
    [invariant](CppInvariant.htm), and [throw](CppThrow.htm) if it
    cannot \[2\]
-   If a [function](CppFunction.htm) may not [throw](CppThrow.htm),
    [declare](CppDeclaration.htm) it [noexcept](CppNoexcept.htm) \[3\]

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[2\] Throw an exception to indicate that you
    cannot perform an assigned task'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[11\] Let a constructor establish an invariant,
    and throw if it cannot'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice, page 387: '\[23\] If your function may not throw, declare it
    noexcept'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
