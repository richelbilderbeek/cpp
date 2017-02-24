[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CoutContainer](CppCoutContainer.htm)
======================================================

 

[Container](CppContainer.htm) [code snippet](CppCodeSnippets.htm) to
[std::cout](CppCout.htm) a [container](CppContainer.htm), using the
[algorithm](CppAlgorithm.htm) [std::copy](CppCopy.htm) and the
[std::ostream\_iterator](CppOstream_iterator.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <iterator> #include <iostream> #include <ostream>  //From http://www.richelbilderbeek.nl/CppCoutContainer.htm template <class Container> void CoutContainer(const Container& c) {   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(std::cout,"\n")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

When using the [IDE](CppIde.htm) [C++ Builder 6.0](CppBuilder.htm),
remove the [keyword](CppKeyword.htm) [typename](CppTypename.htm) to
prevent a [compile error](CppCompileError.htm).

 

 

 

 

CoutContainer test
------------------

-   [View the code of 'CoutContainer test' in plain
    text](CppCoutContainerTest.txt).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <iterator> #include <iostream> #include <ostream>  //From http://www.richelbilderbeek.nl/CppCoutContainer.htm template <class Container> void CoutContainer(const Container& c) {   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(std::cout,"\n")); }  int main() {   //Create a vector   std::vector<int> v;   v.push_back(1);   v.push_back(4);   v.push_back(9);   v.push_back(16);   v.push_back(25);    //Show it on screen using CoutContainer   CoutContainer(v); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).
