
 

 

 

 

 

([C++](Cpp.md)) [throw](CppThrow.md)
======================================

 

[throw](CppThrow.md) is the [keyword](CppKeyword.md) to produce an
exception.

 

  -------------------------------------------------------------------
  ` #include <exception>  int main() {   throw std::exception(); }`
  -------------------------------------------------------------------

 

A [try](CppTry.md)-block indicates the calling of
[functions](CppFunction.md) that might [throw](CppThrow.md) an
[exception](CppException.md) and is followed by a
[catch](CppCatch.md)-block, where the [exception](CppException.md) is
handled.

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   [Throw](CppThrow.md) an [exception](CppException.md) to indicate
    that you cannot perform an assigned task \[1\]
-   Let a [constructor](CppConstructor.md) establish an
    [invariant](CppInvariant.md), and [throw](CppThrow.md) if it
    cannot \[2\]
-   If a [function](CppFunction.md) may not [throw](CppThrow.md),
    [declare](CppDeclaration.md) it [noexcept](CppNoexcept.md) \[3\]

 

 

 

 

 

[Reference](CppReferences.md)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[2\] Throw an exception to indicate that you
    cannot perform an assigned task'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[11\] Let a constructor establish an invariant,
    and throw if it cannot'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice, page 387: '\[23\] If your function may not throw, declare it
    noexcept'

 

 

 

 

 

 

