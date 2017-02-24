

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Interface](CppInterface.htm)
==============================================

 

The [interface](CppInterface.htm) of a [class](CppClass.htm) consists of
the [public](CppPublic.htm) [member functions](CppMemberFunction.htm)
and [variables](CppVariable.htm) of that [class](CppClass.htm).

 

-   Make [interfaces](CppInterface.htm) easy to use correctly and hard
    to use incorrectly \[1\]
-   Seperate the [interface](CppInterface.htm) of a
    [class](CppClass.htm) from its
    [implementation](CppImplementation.htm) \[4\]: allow the user not to
    know what kind of [data types](CppDataType.htm) you used in the
    [private](CppPrivate.htm) section of your class
-   Use [const](CppConst.htm) [pointers](CppPointer.htm) and
    [const](CppConst.htm) [references](CppReference.htm) to express
    immutability in interfaces \[3\]
-   [Document](CppDocumentation.htm) the [interfaces](CppInterface.htm)
    so that they are usable by others \[2\]
-   Have at least one other developer review each
    [interface](CppInterface.htm) \[2\]
-   Prefer [public](CppPublic.htm) [members](CppMember.htm) for
    [interfaces](CppInterface.htm) \[5\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 18: Make interfaces easy to use correctly
    and hard to use incorrectly.
2.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.6: Document the interfaces so
    that they are usable by others. Have at least one other developer
    review each interface
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[13\] Use const pointers and const references to
    express immutability in interfaces'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[2\] Seperate the interface of a class from its
    implementation'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[11\] Prefer public members for interfaces'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
