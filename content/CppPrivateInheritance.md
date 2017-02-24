



 

 

 

 

 

([C++](Cpp.htm)) [Private inheritance](CppPrivateInheritance.htm)
=================================================================

 

[Private inheritance](CppPrivateInheritance.htm) is an uncommonly used
(of three) modes of [inheritance](CppInheritance.htm). [Private
inheritance](CppPrivateInheritance.htm) denotes a
'is-implemented-in-terms-of' relationship between [derived
class](CppDerivedClass.htm) and [base class](CppBaseClass.htm) \[1\].
[Private inheritance](CppPrivateInheritance.htm) is usually inferior to
[composition](CppComposition.htm) \[1\].

 

There are no real-world examples for [Private
inheritance](CppPrivateInheritance.htm), as it means nothing during
software design, only during software implementation \[1\]. In the
example below Widget is not a kind of Timer, but it uses some of the
features of Timer.

 

  -------------------------------------------------------------------------------
  ` struct Widget : private Timer //A derived class, private inheritance {  };`
  -------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++
    (3rd edition).ISBN:0-321-33487-6. Item 39: 'Use private inheritance
    judiciously'

 

 

 

 

 





 



