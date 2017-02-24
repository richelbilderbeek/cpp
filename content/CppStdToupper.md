[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::toupper](CppToupper.htm)
===============================================

 

[std::toupper](CppToupper.htm) is a [function](CppFunction.htm)
[defined](CppDefinition.htm) in the [header file](CppHeaderFile.htm)
[cctype.h](CppCctypeH.htm) to [convert](CppConvert.htm) a
[char](CppChar.htm) to upper case.

 

 

 

 

 

Example: [StrToUpper](CppStrToUpper.htm) using a [for](CppFor.htm) loop
-----------------------------------------------------------------------

 

[StrToUpper](CppStrToUpper.htm) can be implemented using a
[for](CppFor.htm) loop, but prefer [algorithm](CppAlgorithm.htm) calls
over hand-written loops \[1\]\[2\]. View [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm) for other ways of replacing
for-loops by algorithms.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cctype> #include <string>  //From http://www.richelbilderbeek.nl/CppStrToUpper.htm const std::string StrToUpper(std::string s) //Not the preferred way {   const int sz = static_cast<int>(s.size());   for(int i=0; i!=sz; ++i)   {     s[i] = std::toupper(s[i]);   }   return s; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops.
2.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
