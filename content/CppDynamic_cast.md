
 

 

 

 

 

([C++](Cpp.md)) [dynamic\_cast](CppDynamic_cast.md)
=====================================================

 

[dynamic\_cast](CppDynamic_cast.md)

is a [keyword](CppKeyword.md) to [cast](CppCast.md) [data
types](CppDataType.md) in the same [inheritance](CppInheritance.md)
hierarchy, for example an Animal to a Monkey.

 

 

There are two types of [dynamic\_cast](CppDynamic_cast.md):

1.  From a [derived class](CppDerivedClass.md) to a [base
    class](CppBaseClass.md) (for example, from a Monkey to an Animal):
    this is called an [upcast](CppUpcast.md) and will always succeed
    (as every Monkey is an Animal)
2.  From a [base class](CppBaseClass.md) to a [derived
    class](CppDerivedClass.md) (for example, from an Animal to a
    Monkey): this is called a [downcast](CppDowncast.md) and will not
    always succeed (as not every Animal is a Monkey). If a
    [downcast](CppDowncast.md) cannot succeed,
    [dynamic\_cast](CppDynamic_cast.md) [returns](CppReturn.md) an
    empty [pointer](CppPointer.md)

 

 

It is not possible to use [dynamic\_cast](CppDynamic_cast.md) on [smart
pointers](CppSmartPointer.md), use
[boost::dynamic\_pointer\_cast](CppDynamic_pointer_cast.md) instead.

 

 

 

 

 

[Example](CppExample.md)
-------------------------

 

-   [dynamic\_cast example 1: basics](CppDynamic_castExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [dynamic\_cast](CppDynamic_cast.md) where class hierarchy
    navigation is unavoidable \[1\]
-   Use [dynamic\_cast](CppDynamic_cast.md) for type-safe explicit
    navigation of a class hierarchy \[2\]
-   Use [dynamic\_cast](CppDynamic_cast.md) to a reference type when
    failure to find the required class is considered a failure \[3\]
-   Use [dynamic\_cast](CppDynamic_cast.md) to a reference type when
    failure to find the required class is considered a valid alternative
    \[4\]
-   Prefer [virtual](CppVirtual.md) functions to repeated
    [switch](CppSwitch.md)-statements based on [typeid](CppTypeid.md)
    or [dynamic\_cast](CppDynamic_cast.md) \[5\]

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[2\] Use dynamic\_cast where class hierarchy
    navigation is unavoidable'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[3\] Use dynamic\_cast for type-safe explicit
    navigation of a class hierarchy'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[4\] Use dynamic\_cast to a reference type when
    failure to find the required class is considered a failure'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[5\] Use dynamic\_cast to a reference type when
    failure to find the required class is considered a valid
    alternative'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[10\] Prefer virtual functions to repeated
    switch-statements based on typeid or dynamic\_cast'

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
