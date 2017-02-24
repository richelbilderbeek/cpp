



 

 

 

 

 

([C++](Cpp.htm)) [CoutVector](CppCoutVector.htm)
================================================

 

[std::vector](CppVector.htm) [code snippet](CppCodeSnippets.htm) to
write every element in a [std::vector](CppVector.htm) to
[std::cout](CppCout.htm). There is also a more general solution for
every [container](CppContainer.htm):
[CoutContainer](CppCoutContainer.htm). To be also able to read the
[std::vector](CppVector.htm), go to [write and read a std::vector
to/from a std::stream](CppVectorToStream.htm).

 

Instead of using a [for](CppFor.htm)-loop (See question 15 of [Exercise
\#9: No for-loops](CppExerciseNoForLoops.htm)), the
[algorithm](CppAlgorithm.htm) [std::copy](CppCopy.htm) can be used to
copy the contents of a [std::vector](CppVector.htm) to
[std::cout](CppCout.htm) using the
[std::ostream\_iterator](CppOstream_iterator.htm). Prefer algorithms
over loops \[1\]\[2\].

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <iterator> #include <iostream> #include <ostream>  //From http://www.richelbilderbeek.nl/CppCoutVector.htm template <class T> void CoutVector(const std::vector<T>& v) {   std::copy(v.begin(),v.end(),std::ostream_iterator<T>(std::cout,"\n")); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CoutVector test
---------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <iterator> #include <iostream> #include <ostream>  //From http://www.richelbilderbeek.nl/CppCoutVector.htm template <class T> void CoutVector(const std::vector<T>& v) {   std::copy(v.begin(),v.end(),std::ostream_iterator<T>(std::cout,"\n")); }  int main() {   //Create a vector   std::vector<int> v;   v.push_back(1);   v.push_back(4);   v.push_back(9);   v.push_back(16);   v.push_back(25);    //Show it on screen using CoutVector   CoutVector(v); } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1 :
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
