



 

 

 

 

 

([C++](Cpp.htm)) [pointer](CppPointer.htm)
==========================================

 

A [pointer](CppPointer.htm) is a type that holds an
[address](CppAddress.htm).

 

A [pointer](CppPointer.htm) can be initialized with the
[keyword](CppKeyword.htm) [new](CppNew.htm), which reserves free space
for the dynamically allocated [instance](CppInstance.htm) and
**[return](CppReturn.htm)**s the [address](CppAddress.htm) to it.

 

[C++](Cpp.htm) does not free this [memory](CppMemory.htm) on its own.
Therefore, you have to call [delete](CppDelete.htm) to do so.

 

Reading/writing from/to an uninitialized [pointer](CppPointer.htm)
results in an [access violation](CppAccessViolation.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Keep use of [pointers](CppPointer.htm) simple and straightforward
    \[6\]
-   Initialize a [pointer](CppPointer.htm) with
    [nullptr](CppNullptr.htm) \[8\] (in [C++11](Cpp11.htm)) or the
    [integer literal](CppIntegerLiteral.htm) 0 \[4\] (in
    [C++98](Cpp98.htm)), rather than [NULL](CppNULL.htm).
-   Avoid non-trivial [pointer](CppPointer.htm) arithmetic \[5,7\]
-   Prefer using a [smart pointer](CppSmartPointer.htm) over a plain
    [pointer](CppPointer.htm) \[1-3\]
-   Keep [pointers](CppPointer.htm) that represent ownership inside
    handle [classes](CppClass.htm) \[9-11\]
-   Use [const](CppConst.htm) [pointers](CppPointer.htm) to express
    immutability in [interfaces](CppInterface.htm) \[13\]
-   Prefer [references](CppReference.htm) to [pointers](CppPointer.htm)
    as [arguments](CppArgument.htm), except where "no object" is a
    reasonable option \[14,15\]
-   Avoid [void\*](CppVoidPointer.htm) except in low-level code \[12\]

 

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 13: 'Use objects to manage resources'.
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 17: 'Store [new](CppNew.htm)ed objects in
    [smart pointer](CppSmartPointer.htm)s in standalone statements'
3.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 5.8.3:
    'Use 0 rather than [NULL](CppNULL.htm)'.
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 5.8.1:
    'Avoid non-trivial [pointer](CppPointer.htm) arithmetic'.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[1\] Keep use of pointers simple and
    straightforward'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[2\] Avoid nontrivial pointer arithmetic'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[5\] Use nullptr rather than 0 or NULL'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: '\[11\] Keep pointers that represent ownership
    inside handle classes'
10. [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 13: 'Use objects to manage resources'.
11. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice, page 199: 'Avoid [void\*](CppVoidPointer.htm) except in
    low-level code'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[13\] Use const pointers and const references to
    express immutability in interfaces'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[14\] Prefer references to pointers as
    arguments, except where "no object" is a reasonable option'
15. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[11\] Pass a pointer if "no object" is a valid
    alternative (and represent "no object" by nullptr)'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
