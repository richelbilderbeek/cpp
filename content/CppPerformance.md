



 

 

 

 

 

([C++](Cpp.htm)) [performance](CppPerformance.htm)
==================================================

 

[Performance](CppPerformance.htm) is a measure of how well you program
behaves. Often, this is about [run time](CppRunTime.htm) speed.

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   When it comes to [performance](CppPerformance.htm), don't trust your
    [intuition](CppIntuition.htm): measure \[1,4\]
-   Don't assume [performance](CppPerformance.htm) benefits
    from reserve() without measurements \[2\]
-   When necessary, use reserve() to make
    [performance](CppPerformance.htm) predictable \[3\]
-   First make it work, then make it fast \[4\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[5\] When it comes to performance, don't trust
    your intuition: measure'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[19\] Don't assume performance benefits
    from reserve() without measurements'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[22\] When necessary, use reserve() to make
    performance predictable'
4.  [Bruce Eckel](CppBruceEckel.htm). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 1: 'First make it work, then make
    it fast. This is true even if you are certain that a piece of code
    is really important and that it will be a principal bottleneck in
    your system. Don’t do it. Get the system going first with as simple
    a design as possible. Then if it isn’t going fast enough,
    profile it. You’ll almost always discover that “your” bottleneck
    isn’t the problem. Save your time for the really important stuff.'

 

 

 

 

 





 



