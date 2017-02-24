

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::reverse](CppReverse.htm)
===============================================

 

[std::reverse](CppReverse.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to reverse the contents of a
[container](CppContainer.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iterator> #include <iostream> #include <vector>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   v.push_back(3);    //Show the std::vector   std::copy(v.begin(),v.end(),     std::ostream_iterator<int>(std::cout," "));   std::cout << '\n';    //Reverse the std::vector   std::reverse(v.begin(),v.end());    //Show the std::vector   std::copy(v.begin(),v.end(),     std::ostream_iterator<int>(std::cout," "));   std::cout << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ----------------------
  ` 0 1 2 3  3 2 1 0 `
  ----------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
