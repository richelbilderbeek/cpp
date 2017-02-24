



 

 

 

 

 

([C++](Cpp.md)) [exception](CppException.md)
==============================================

 

[Exceptions](CppException.md) are a mechanism for error handling. The
[STL](CppStl.md) [class](CppClass.md) for an
[exceptions](CppException.md) is called
[std::exception](CppStdException.md).

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [exceptions](CppException.md) for error handling, instead of
    using return error codes \[2,11\]
-   [Throw](CppThrow.md) an [exception](CppException.md) to indicate
    that you cannot perform an assigned task \[1\]
-   Use purpose-designed user-defined types as exceptions (not
    built-in types) \[3\]
-   Always [catch](CppCatch.md) [exception](CppStdException.md)&
    and ... \[12\]
-   Don't try to [catch](CppCatch.md) every
    [exception](CppException.md) in every [function](CppFunction.md)
    \[4\]
-   Release locally owned resources before [throwing](CppThrow.md) an
    [exception](CppException.md) \[5\]
-   Don't use [exceptions](CppException.md) where more local control
    structures will suffice \[6\]
-   Not every program needs to be exception-safe \[7\]
-   Don't use [exception](CppException.md) specification \[8\]
-   The [STL](CppStl.md) [exception
    hierarchy](CppExceptionHierarchy.md) can be (but does not have
    to be) used for a user's own [exceptions](CppException.md) \[13\]
-   Don't assume that every [exception](CppException.md) is derived
    from class [std::exception](CppStdException.md) \[9\]
-   Have [main](CppMain.md) [catch](CppCatch.md) and report every
    [exception](CppException.md) \[10\]
-   If you can't use [exceptions](CppException.md), consider
    [system\_error](CppSystem_errorH.md) \[14\]

 

 

 

 

 

[Reference](CppReferences.md)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[2\] Throw an exception to indicate that you
    cannot perform an assigned task'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[3\] Use exceptions for error handling'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[4\] Use purpose-designed user-defined types as
    exceptions (not built-in types)'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[8\] Don't try to catch every exception in every
    function'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[12\] Release locally owned resources before
    throwing an exception'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[14\] Don't use exceptions where more local
    control structures will suffice'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[17\] Not every program needs to be
    exception-safe'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[24\] Don't use exception specification'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[26\] Don't assume that every exception is
    derived from class exception'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[27\] Have main() catch and report every
    exception'
11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[9\] Prefer exception-based error handling over
    return-code-based error handling'
12. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[10\] Always catch exception& (for
    standard-library and language support exceptions) and ... (for
    unexpected exceptions)'
13. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[11\] The standard-library exception hierarchy
    can be (but does not have to be) used for a user's own exceptions'
14. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 884: '\[15\] If you can't use exceptions, consider
    &lt;system\_error&gt;'

 

 

 

 

 





 



