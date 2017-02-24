



 

 

 

 

 

([C++](Cpp.htm)) [Invariant](CppInvariant.htm)
==============================================

 

An [invariant](CppInvariant.htm) is something that is assumed to be
true. For example, the sole integer member variable of a class called
'OddIntegerNumber' can reasonably be assumed to be an odd number.

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Let a [constructor](CppConstructor.htm) establish an
    [invariant](CppInvariant.htm), and [throw](CppThrow.htm) if it
    cannot \[1\]
-   Use [RAII](CppRaii.htm) and exception handlers to maintain
    [invariants](CppInvariant.htm) \[2\]
-   Design your error-handling strategy around
    [invariants](CppInvariant.htm) \[3\]
-   Use [POD](CppPod.htm)s only when it really is just data and no
    [invariant](CppInvariant.htm) is meaningful for the data members
    \[4\]

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[11\] Let a constructor establish an invariant,
    and throw if it cannot'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[18\] Use "Resource Acquisition Is
    Initialization" and exception handlers to maintain invariants'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[20\] Design your error-handling strategy around
    invariants'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[3\] Use public data (structs) only when it
    really is just data and no invariant is meaningful for the data
    members'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
