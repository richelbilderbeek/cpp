[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [static](CppStatic.htm)
========================================

 

[Keyword](CppKeyword.htm) enabling in-[class](CppClass.htm) or
in-[function](CppFunction.htm) static [variables](CppVariable.htm) or
create [static member function](CppStaticMemberFunction.htm).

 

A common use of [static](CppStatic.htm) is when you want to keep track
of how many [instances](CppInstance.htm) a [class](CppClass.htm) has:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  class InstanceCounter {   static int mNinstances;      public:   InstanceCounter()   {     ++mNinstances;     std::cout << "Constructed an instance."       << "Now there are " << mNinstances << "." << std::endl;   }   ~InstanceCounter()   {     --mNinstances;     std::cout << "Destructed an instance."       << "Now there are " << mNinstances << "." << std::endl;   } };  int InstanceCounter::mNinstances = 0;  int main() {   InstanceCounter one, two, three, four,five; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   See [static member function](CppStaticMemberFunction.htm)

 

 

 

 

 

Notes to self
-------------

 

-   When in doubt if a [variable](CppVariable.htm) should be
    [static](CppStatic.htm) or not, do not make it
    [static](CppStatic.htm): I note that I do change
    [variables](CppVariable.htm) from [static](CppStatic.htm) to
    non-[static](CppStatic.htm), but never the other way around

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
