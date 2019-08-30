# ([C++](Cpp.md)) [Avoid duplication in const and non-const member functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.md)

In good [member function design](CppMemberFunctionDesign.md), avoid
duplication in const and non-const member functions \[1,2\]. Instead,
have the non-const [member function](CppMemberFunction.md) call the
[const member function](CppConstMemberFunction.md).

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <cassert>   struct StoreTenInts {   StoreTenInts() : mV(std::vector<int>(10,0)) {}     int& operator[](const int i)   {     //Calls the const version of operator[]     //To avoid duplication in const and non-const member functions [1]     return const_cast<int&>(const_cast<const StoreTenInts&>(*this)[i]);   }   const int& operator[](const int i) const   {     //The actual work of operator[]     assert(i >= 0 && i < 10);     return mV[i];   }     private:   std::vector<int> mV; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## [References](CppReferences.md)

 * [1] [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 94: 'Avoid casting away const', item 'Exceptions'
 * [2] [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'
