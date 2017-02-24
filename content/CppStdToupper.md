
 

 

 

 

 

([C++](Cpp.md)) [std::toupper](CppToupper.md)
===============================================

 

[std::toupper](CppToupper.md) is a [function](CppFunction.md)
[defined](CppDefinition.md) in the [header file](CppHeaderFile.md)
[cctype.h](CppCctypeH.md) to [convert](CppConvert.md) a
[char](CppChar.md) to upper case.

 

 

 

 

 

Example: [StrToUpper](CppStrToUpper.md) using a [for](CppFor.md) loop
-----------------------------------------------------------------------

 

[StrToUpper](CppStrToUpper.md) can be implemented using a
[for](CppFor.md) loop, but prefer [algorithm](CppAlgorithm.md) calls
over hand-written loops \[1\]\[2\]. View [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md) for other ways of replacing
for-loops by algorithms.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cctype> #include <string>  //From http://www.richelbilderbeek.nl/CppStrToUpper.htm const std::string StrToUpper(std::string s) //Not the preferred way {   const int sz = static_cast<int>(s.size());   for(int i=0; i!=sz; ++i)   {     s[i] = std::toupper(s[i]);   }   return s; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops.
2.  [Scott Meyers](CppScottMeyers.md). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'.

 

 

 

 

 

 

