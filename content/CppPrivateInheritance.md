
 

 

 

 

 

([C++](Cpp.md)) [Private inheritance](CppPrivateInheritance.md)
=================================================================

 

[Private inheritance](CppPrivateInheritance.md) is an uncommonly used
(of three) modes of [inheritance](CppInheritance.md). [Private
inheritance](CppPrivateInheritance.md) denotes a
'is-implemented-in-terms-of' relationship between [derived
class](CppDerivedClass.md) and [base class](CppBaseClass.md) \[1\].
[Private inheritance](CppPrivateInheritance.md) is usually inferior to
[composition](CppComposition.md) \[1\].

 

There are no real-world examples for [Private
inheritance](CppPrivateInheritance.md), as it means nothing during
software design, only during software implementation \[1\]. In the
example below Widget is not a kind of Timer, but it uses some of the
features of Timer.

 

  -------------------------------------------------------------------------------
  ` struct Widget : private Timer //A derived class, private inheritance {  };`
  -------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++
    (3rd edition).ISBN:0-321-33487-6. Item 39: 'Use private inheritance
    judiciously'

 

 

 

 

 

 

