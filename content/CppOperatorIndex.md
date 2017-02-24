



 

 

 

 

 

([C++](Cpp.htm)) [operator\[\]()](CppOperatorIndex.htm)
=======================================================

 

[operator\[\]()](CppOperatorIndex.htm) (pronounced as 'the index
operator') is an [operator](CppOperator.htm) used to retrieve an indexed
element from a [container](CppContainer.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  struct StoreTenInts {   StoreTenInts() : mV(std::vector<int>(10,0)) {}     int& operator[](const int i)   {     //Calls the const version of operator[]     //To avoid duplication in const and non-const member functions [1]     return const_cast<int&>(const_cast<const StoreTenInts&>(*this)[i]);   }    const int& operator[](const int i) const   {     //The actual work of operator[]     assert(i >= 0 && i < 10);     return mV[i];   }   private:   std::vector<int> mV; };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   [Avoid duplication in const and non-const member
    functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.htm)
    \[1\]
-   Use [operator\[\]()](CppOperatorIndex.htm) for subscripting and for
    selection based on a single value \[2\]

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 19.5.
    Advice. page 576: '\[1\] Use operator\[\]() for subscripting and for
    selection based on a single value'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
