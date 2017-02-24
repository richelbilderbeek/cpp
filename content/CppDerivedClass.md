



 

 

 

 

 

([C++](Cpp.htm)) [Derived class](CppDerivedClass.htm)
=====================================================

 

A [derived class](CppDerivedClass.htm) is a [class](CppClass.htm) that
has [inherited](CppInheritance.htm) [member
variables](CppMemberVariable.htm) and [member
functions](CppMemberFunction.htm) from a [base class](CppBaseClass.htm).

 

The code below shows how an Animal is used as a [base
class](CppBaseClass.htm) and Cat and Dog are [derived
classes](CppDerivedClass.htm) (of Animal).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  struct Animal //Animal is a (non-abstract) base class {   //All animals have a name (consider making this a const member)   std::string m_name;     // * Herb Sutter, Andrei Alexandrescu. C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6.    //   Item 50: 'Make base class destructors public and virtual, or protected and nonvirtual'.   virtual ~Animal() {} //All animals have a destructor };   //A cat is a-kind-of animal struct Cat : public Animal  {   void Meow() const { std::cout << "Meow" << std::endl; } };  //A dog is a-kind-of animal struct Dog : public Animal {   void Bark() const { std::cout << "Bark" << std::endl; }   bool m_has_bone; };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
