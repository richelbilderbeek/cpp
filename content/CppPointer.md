



 

 

 

 

 

([C++](Cpp.md)) [pointer](CppPointer.md)
==========================================

 

A [pointer](CppPointer.md) is a type that holds an
[address](CppAddress.md).

 

A [pointer](CppPointer.md) can be initialized with the
[keyword](CppKeyword.md) [new](CppNew.md), which reserves free space
for the dynamically allocated [instance](CppInstance.md) and
**[return](CppReturn.md)**s the [address](CppAddress.md) to it.

 

[C++](Cpp.md) does not free this [memory](CppMemory.md) on its own.
Therefore, you have to call [delete](CppDelete.md) to do so.

 

Reading/writing from/to an uninitialized [pointer](CppPointer.md)
results in an [access violation](CppAccessViolation.md).

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Keep use of [pointers](CppPointer.md) simple and straightforward
    \[6\]
-   Initialize a [pointer](CppPointer.md) with
    [nullptr](CppNullptr.md) \[8\] (in [C++11](Cpp11.md)) or the
    [integer literal](CppIntegerLiteral.md) 0 \[4\] (in
    [C++98](Cpp98.md)), rather than [NULL](CppNULL.md).
-   Avoid non-trivial [pointer](CppPointer.md) arithmetic \[5,7\]
-   Prefer using a [smart pointer](CppSmartPointer.md) over a plain
    [pointer](CppPointer.md) \[1-3\]
-   Keep [pointers](CppPointer.md) that represent ownership inside
    handle [classes](CppClass.md) \[9-11\]
-   Use [const](CppConst.md) [pointers](CppPointer.md) to express
    immutability in [interfaces](CppInterface.md) \[13\]
-   Prefer [references](CppReference.md) to [pointers](CppPointer.md)
    as [arguments](CppArgument.md), except where "no object" is a
    reasonable option \[14,15\]
-   Avoid [void\*](CppVoidPointer.md) except in low-level code \[12\]

 

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 13: 'Use objects to manage resources'.
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 17: 'Store [new](CppNew.md)ed objects in
    [smart pointer](CppSmartPointer.md)s in standalone statements'
3.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 5.8.3:
    'Use 0 rather than [NULL](CppNULL.md)'.
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 5.8.1:
    'Avoid non-trivial [pointer](CppPointer.md) arithmetic'.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[1\] Keep use of pointers simple and
    straightforward'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[2\] Avoid nontrivial pointer arithmetic'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[5\] Use nullptr rather than 0 or NULL'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[11\] Keep pointers that represent ownership
    inside handle classes'
10. [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 13: 'Use objects to manage resources'.
11. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
12. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: 'Avoid [void\*](CppVoidPointer.md) except in
    low-level code'
13. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[13\] Use const pointers and const references to
    express immutability in interfaces'
14. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[14\] Prefer references to pointers as
    arguments, except where "no object" is a reasonable option'
15. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[11\] Pass a pointer if "no object" is a valid
    alternative (and represent "no object" by nullptr)'

 

 

 

 

 





 



