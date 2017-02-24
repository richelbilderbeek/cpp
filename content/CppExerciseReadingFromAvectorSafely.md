

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Exercise \#4: Reading from a std::vector safely](CppReadingFromAvectorSafely.htm)
===================================================================================================

 

Difficulty: 1/10

Date added: 13th of July 2008

 

In this [exercise](CppExercise.htm), you must think about problems that
might occur and how to prevent these.

 

Answer the following questions about the code below:

0\) What problem might occur?

1\) How can you prevent this?

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <vector>   int main() {   std::vector<int> v;     //Lots of code #0     const int maxIndex = static_cast<int>(v.size());     //Lots of code #1     const int index = std::rand() % maxIndex; //Draw a random index     //Lots of code #2     v[index] = 0;     //Lots of code #3 }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[View the answer of this
exercise](CppExerciseReadingFromAvectorSafelyAnswer.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
