
 

 

 

 

 

([C++](Cpp.md)) [static](CppStatic.md)
========================================

 

[Keyword](CppKeyword.md) enabling in-[class](CppClass.md) or
in-[function](CppFunction.md) static [variables](CppVariable.md) or
create [static member function](CppStaticMemberFunction.md).

 

A common use of [static](CppStatic.md) is when you want to keep track
of how many [instances](CppInstance.md) a [class](CppClass.md) has:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  class InstanceCounter {   static int mNinstances;      public:   InstanceCounter()   {     ++mNinstances;     std::cout << "Constructed an instance."       << "Now there are " << mNinstances << "." << std::endl;   }   ~InstanceCounter()   {     --mNinstances;     std::cout << "Destructed an instance."       << "Now there are " << mNinstances << "." << std::endl;   } };  int InstanceCounter::mNinstances = 0;  int main() {   InstanceCounter one, two, three, four,five; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   See [static member function](CppStaticMemberFunction.md)

 

 

 

 

 

Notes to self
-------------

 

-   When in doubt if a [variable](CppVariable.md) should be
    [static](CppStatic.md) or not, do not make it
    [static](CppStatic.md): I note that I do change
    [variables](CppVariable.md) from [static](CppStatic.md) to
    non-[static](CppStatic.md), but never the other way around

 

 

 

 

 

 

