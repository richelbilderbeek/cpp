[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [dynamic\_cast](CppDynamic_cast.htm)
=====================================================

 

[dynamic\_cast](CppDynamic_cast.htm)

is a [keyword](CppKeyword.htm) to [cast](CppCast.htm) [data
types](CppDataType.htm) in the same [inheritance](CppInheritance.htm)
hierarchy, for example an Animal to a Monkey.

 

 

There are two types of [dynamic\_cast](CppDynamic_cast.htm):

1.  From a [derived class](CppDerivedClass.htm) to a [base
    class](CppBaseClass.htm) (for example, from a Monkey to an Animal):
    this is called an [upcast](CppUpcast.htm) and will always succeed
    (as every Monkey is an Animal)
2.  From a [base class](CppBaseClass.htm) to a [derived
    class](CppDerivedClass.htm) (for example, from an Animal to a
    Monkey): this is called a [downcast](CppDowncast.htm) and will not
    always succeed (as not every Animal is a Monkey). If a
    [downcast](CppDowncast.htm) cannot succeed,
    [dynamic\_cast](CppDynamic_cast.htm) [returns](CppReturn.htm) an
    empty [pointer](CppPointer.htm)

 

 

It is not possible to use [dynamic\_cast](CppDynamic_cast.htm) on [smart
pointers](CppSmartPointer.htm), use
[boost::dynamic\_pointer\_cast](CppDynamic_pointer_cast.htm) instead.

 

 

 

 

 

[Example](CppExample.htm)
-------------------------

 

-   [dynamic\_cast example 1: basics](CppDynamic_castExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [dynamic\_cast](CppDynamic_cast.htm) where class hierarchy
    navigation is unavoidable \[1\]
-   Use [dynamic\_cast](CppDynamic_cast.htm) for type-safe explicit
    navigation of a class hierarchy \[2\]
-   Use [dynamic\_cast](CppDynamic_cast.htm) to a reference type when
    failure to find the required class is considered a failure \[3\]
-   Use [dynamic\_cast](CppDynamic_cast.htm) to a reference type when
    failure to find the required class is considered a valid alternative
    \[4\]
-   Prefer [virtual](CppVirtual.htm) functions to repeated
    [switch](CppSwitch.htm)-statements based on [typeid](CppTypeid.htm)
    or [dynamic\_cast](CppDynamic_cast.htm) \[5\]

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[2\] Use dynamic\_cast where class hierarchy
    navigation is unavoidable'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[3\] Use dynamic\_cast for type-safe explicit
    navigation of a class hierarchy'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[4\] Use dynamic\_cast to a reference type when
    failure to find the required class is considered a failure'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[5\] Use dynamic\_cast to a reference type when
    failure to find the required class is considered a valid
    alternative'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[10\] Prefer virtual functions to repeated
    switch-statements based on typeid or dynamic\_cast'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
