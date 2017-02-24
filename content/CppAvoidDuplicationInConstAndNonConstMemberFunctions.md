

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Avoid duplication in const and non-const member functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.htm)
======================================================================================================================================

 

In good [member function design](CppMemberFunctionDesign.htm), avoid
duplication in const and non-const member functions \[1,2\]. Instead,
have the non-const [member function](CppMemberFunction.htm) call the
[const member function](CppConstMemberFunction.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <cassert>   struct StoreTenInts {   StoreTenInts() : mV(std::vector<int>(10,0)) {}     int& operator[](const int i)   {     //Calls the const version of operator[]     //To avoid duplication in const and non-const member functions [1]     return const_cast<int&>(const_cast<const StoreTenInts&>(*this)[i]);   }   const int& operator[](const int i) const   {     //The actual work of operator[]     assert(i >= 0 && i < 10);     return mV[i];   }     private:   std::vector<int> mV; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 94: 'Avoid casting away const', item 'Exceptions'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
