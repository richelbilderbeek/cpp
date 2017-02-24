[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [exception](CppException.htm)
==============================================

 

[Exceptions](CppException.htm) are a mechanism for error handling. The
[STL](CppStl.htm) [class](CppClass.htm) for an
[exceptions](CppException.htm) is called
[std::exception](CppStdException.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [exceptions](CppException.htm) for error handling, instead of
    using return error codes \[2,11\]
-   [Throw](CppThrow.htm) an [exception](CppException.htm) to indicate
    that you cannot perform an assigned task \[1\]
-   Use purpose-designed user-defined types as exceptions (not
    built-in types) \[3\]
-   Always [catch](CppCatch.htm) [exception](CppStdException.htm)&
    and ... \[12\]
-   Don't try to [catch](CppCatch.htm) every
    [exception](CppException.htm) in every [function](CppFunction.htm)
    \[4\]
-   Release locally owned resources before [throwing](CppThrow.htm) an
    [exception](CppException.htm) \[5\]
-   Don't use [exceptions](CppException.htm) where more local control
    structures will suffice \[6\]
-   Not every program needs to be exception-safe \[7\]
-   Don't use [exception](CppException.htm) specification \[8\]
-   The [STL](CppStl.htm) [exception
    hierarchy](CppExceptionHierarchy.htm) can be (but does not have
    to be) used for a user's own [exceptions](CppException.htm) \[13\]
-   Don't assume that every [exception](CppException.htm) is derived
    from class [std::exception](CppStdException.htm) \[9\]
-   Have [main](CppMain.htm) [catch](CppCatch.htm) and report every
    [exception](CppException.htm) \[10\]
-   If you can't use [exceptions](CppException.htm), consider
    [system\_error](CppSystem_errorH.htm) \[14\]

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[2\] Throw an exception to indicate that you
    cannot perform an assigned task'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[3\] Use exceptions for error handling'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[4\] Use purpose-designed user-defined types as
    exceptions (not built-in types)'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[8\] Don't try to catch every exception in every
    function'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[12\] Release locally owned resources before
    throwing an exception'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[14\] Don't use exceptions where more local
    control structures will suffice'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[17\] Not every program needs to be
    exception-safe'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[24\] Don't use exception specification'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[26\] Don't assume that every exception is
    derived from class exception'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[27\] Have main() catch and report every
    exception'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[9\] Prefer exception-based error handling over
    return-code-based error handling'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[10\] Always catch exception& (for
    standard-library and language support exceptions) and ... (for
    unexpected exceptions)'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[11\] The standard-library exception hierarchy
    can be (but does not have to be) used for a user's own exceptions'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 884: '\[15\] If you can't use exceptions, consider
    &lt;system\_error&gt;'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
