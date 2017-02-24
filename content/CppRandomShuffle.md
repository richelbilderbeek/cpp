[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [RandomShuffle](CppRandomShuffle.htm)
======================================================

 

The [algorithm](CppAlgorithm.htm) to shuffle a
[std::vector](CppVector.htm) to a random order is already present in the
[STL](CppStl.htm). It is called
[std::random\_shuffle](CppRandom_shuffle.htm) and can be found in the
[header file](CppHeaderFile.htm) [algorithm](CppAlgorithmH.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <iterator> #include <ostream> #include <vector>  //From http://www.richelbilderbeek.nl/CppRandomShuffle.htm int main() {   //Create a std::vector   std::vector<int>(v);   //Fill it with 10 values   for (int i=0; i!=10; ++i) v.push_back(i);   //Show it on screen   std::cout << "Before shuffling: " << std::endl;   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout,"\n"));   //Shuffle it   std::random_shuffle(v.begin(),v.end());   //Show it on screen   std::cout << "After shuffling: " << std::endl;   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout,"\n")); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
