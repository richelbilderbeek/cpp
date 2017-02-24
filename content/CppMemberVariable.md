



 

 

 

 

 

([C++](Cpp.htm)) [member variable](CppMemberVariable.htm)
=========================================================

 

A [member variable](CppMemberVariable.htm) is a type of [class
member](CppMember.htm) for an in-[class](CppClass.htm)
[variable](CppVariable.htm). For example, a Person [class](CppClass.htm)
might have a [member variable](CppMemberVariable.htm) to hold a Person
his/her name.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  struct Person {   std::string m_name;   //Other member variables };  int main() {   Person p;   p.m_name = "Bilderbikkel"; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------

 

[LocalVersusGlobal](CppLocalVersusGlobal.htm) is a simple
[benchmark](CppBenchmark.htm) that tests the speed of
[local](CppLocal.htm) versus [member variables](CppMemberVariable.htm)
versus [global](CppGlobal.htm) [variables](CppVariable.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use a consistent method (such as a d\_ prefix) to highlight [member
    variables](CppMemberVariable.htm) \[1\]
-   [Declare](CppDeclaration.htm) [member
    variables](CppMemberVariable.htm) [private](CppPrivate.htm) \[2-5\],
    except in [POD](CppPod.htm)s \[4\]
-   Avoid [member variables](CppMemberVariable.htm) in [abstract
    classes](AbstractClass.htm) \[6\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.7: 'Use a consistent method
    (such as a d\_ prefix) to highlight class data members'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 22: Declare data members private.
3.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 11: 'Hide information'.
4.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 41: 'Make data members private, except in behaviourless
    aggregates (C-style structs).
5.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[2\] Avoid data members in base classes intended
    as interfaces'

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
