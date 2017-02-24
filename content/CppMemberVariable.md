
 

 

 

 

 

([C++](Cpp.md)) [member variable](CppMemberVariable.md)
=========================================================

 

A [member variable](CppMemberVariable.md) is a type of [class
member](CppMember.md) for an in-[class](CppClass.md)
[variable](CppVariable.md). For example, a Person [class](CppClass.md)
might have a [member variable](CppMemberVariable.md) to hold a Person
his/her name.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  struct Person {   std::string m_name;   //Other member variables };  int main() {   Person p;   p.m_name = "Bilderbikkel"; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------

 

[LocalVersusGlobal](CppLocalVersusGlobal.md) is a simple
[benchmark](CppBenchmark.md) that tests the speed of
[local](CppLocal.md) versus [member variables](CppMemberVariable.md)
versus [global](CppGlobal.md) [variables](CppVariable.md).

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use a consistent method (such as a d\_ prefix) to highlight [member
    variables](CppMemberVariable.md) \[1\]
-   [Declare](CppDeclaration.md) [member
    variables](CppMemberVariable.md) [private](CppPrivate.md) \[2-5\],
    except in [POD](CppPod.md)s \[4\]
-   Avoid [member variables](CppMemberVariable.md) in [abstract
    classes](AbstractClass.md) \[6\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.7: 'Use a consistent method
    (such as a d\_ prefix) to highlight class data members'
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 22: Declare data members private.
3.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 11: 'Hide information'.
4.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 41: 'Make data members private, except in behaviourless
    aggregates (C-style structs).
5.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[2\] Avoid data members in base classes intended
    as interfaces'

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
