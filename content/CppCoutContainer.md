
 

 

 

 

 

([C++](Cpp.md)) [CoutContainer](CppCoutContainer.md)
======================================================

 

[Container](CppContainer.md) [code snippet](CppCodeSnippets.md) to
[std::cout](CppStdCout.md) a [container](CppContainer.md), using the
[algorithm](CppAlgorithm.md) [std::copy](CppStdCopy.md) and the
[std::ostream\_iterator](CppStdOstream_iterator.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <iterator> #include <iostream> #include <ostream>  //From http://www.richelbilderbeek.nl/CppCoutContainer.htm template <class Container> void CoutContainer(const Container& c) {   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(std::cout,"\n")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

When using the [IDE](CppIde.md) [C++ Builder 6.0](CppBuilder.md),
remove the [keyword](CppKeyword.md) [typename](CppTypename.md) to
prevent a [compile error](CppCompileError.md).

 

 

 

 

CoutContainer test
------------------

-   [View the code of 'CoutContainer test' in plain
    text](CppCoutContainerTest.txt).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <iterator> #include <iostream> #include <ostream>  //From http://www.richelbilderbeek.nl/CppCoutContainer.htm template <class Container> void CoutContainer(const Container& c) {   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(std::cout,"\n")); }  int main() {   //Create a vector   std::vector<int> v;   v.push_back(1);   v.push_back(4);   v.push_back(9);   v.push_back(16);   v.push_back(25);    //Show it on screen using CoutContainer   CoutContainer(v); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

