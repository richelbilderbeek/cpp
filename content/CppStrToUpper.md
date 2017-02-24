

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StrToUpper](CppStrToUpper.htm)
================================================

 

[std::string](CppString.htm) [convert](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) a
[std::string](CppString.htm) to upper case.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cctype> #include <string>  //From http://www.richelbilderbeek.nl/CppStrToUpper.htm const std::string StrToUpper(std::string s) {   std::transform(s.begin(), s.end(), s.begin(),std::ptr_fun<int,int>(std::toupper));   return s; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that in the [C++ Builder](CppBuilder.htm) [IDE](CppIde.htm)
[std::ptr\_fun](CppPtr_fun.htm) can be called without its
[template](CppTemplate.htm) arguments. When using the [G++](CppGpp.htm)
4.4.1 [compiler](CppCompiler.htm) leaving out the
[template](CppTemplate.htm) arguments results in the [compile
error](CppCompileError.htm) [No matching function for call to
'ptr\_fun'](CppCompileErrorNoMatchingFunctionForCallToPtr_fun.htm).

 

 

 

 

 

[StrToUpper](CppStrToUpper.htm) using a [for](CppFor.htm) loop
--------------------------------------------------------------

 

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



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
