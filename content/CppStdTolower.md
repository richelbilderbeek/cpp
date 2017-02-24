



 

 

 

 

 

([C++](Cpp.htm)) [std::tolower](CppTolower.htm)
===============================================

 

[std::tolower](CppTolower.htm) is a [function](CppFunction.htm)
[defined](CppDefinition.htm) in the [header file](CppHeaderFile.htm)
[cctype.h](CppCctypeH.htm) to [convert](CppConvert.htm) a
[char](CppChar.htm) to lower case.

 

 

 

 

 

Example: [StrToLower](CppStrToLower.htm) using a [for](CppFor.htm) loop
-----------------------------------------------------------------------

 

[StrToLower](CppStrToLower.htm) can be implemented using a
[for](CppFor.htm) loop, but prefer [algorithm](CppAlgorithm.htm) calls
over hand-written loops \[1\]\[2\]. View [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm) for other ways of replacing
for-loops by algorithms.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cctype> #include <string>  //From http://www.richelbilderbeek.nl/CppStrToLower.htm const std::string StrToLower(std::string s) {   std::transform(s.begin(), s.end(), s.begin(),std::ptr_fun(std::tolower));   return s; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops.
2.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'.

 

 

 

 

 





 



