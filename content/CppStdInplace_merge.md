[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::inplace\_merge](CppInplace_merge.htm)
============================================================

 

[std::inplace\_merge](CppInplace_merge.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to merge two sorted ranges in the same
[container](CppContainer.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <iterator> #include <vector>  int main() {   std::vector<int> v;   //First sorted part   v.push_back(1);   v.push_back(4);   v.push_back(9);   v.push_back(16);   v.push_back(25);   //Second sorted part   v.push_back(1);   v.push_back(2);   v.push_back(3);   v.push_back(5);   v.push_back(7);    //Display v   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));   std::cout << '\n';    //Perform std::inplace_merge   std::inplace_merge(v.begin(),v.begin()+5,v.end());    //Display v   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));   std::cout << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------------------------------------
  ` 1 4 9 16 25 1 2 3 5 7  1 1 2 3 4 5 7 9 16 25 `
  --------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
