



 

 

 

 

 

([C++](Cpp.md)) [Interface](CppInterface.md)
==============================================

 

The [interface](CppInterface.md) of a [class](CppClass.md) consists of
the [public](CppPublic.md) [member functions](CppMemberFunction.md)
and [variables](CppVariable.md) of that [class](CppClass.md).

 

-   Make [interfaces](CppInterface.md) easy to use correctly and hard
    to use incorrectly \[1\]
-   Seperate the [interface](CppInterface.md) of a
    [class](CppClass.md) from its
    [implementation](CppImplementation.md) \[4\]: allow the user not to
    know what kind of [data types](CppDataType.md) you used in the
    [private](CppPrivate.md) section of your class
-   Use [const](CppConst.md) [pointers](CppPointer.md) and
    [const](CppConst.md) [references](CppReference.md) to express
    immutability in interfaces \[3\]
-   [Document](CppDocumentation.md) the [interfaces](CppInterface.md)
    so that they are usable by others \[2\]
-   Have at least one other developer review each
    [interface](CppInterface.md) \[2\]
-   Prefer [public](CppPublic.md) [members](CppMember.md) for
    [interfaces](CppInterface.md) \[5\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 18: Make interfaces easy to use correctly
    and hard to use incorrectly.
2.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.6: Document the interfaces so
    that they are usable by others. Have at least one other developer
    review each interface
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[13\] Use const pointers and const references to
    express immutability in interfaces'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[2\] Seperate the interface of a class from its
    implementation'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[11\] Prefer public members for interfaces'

 

 

 

 

 





 



