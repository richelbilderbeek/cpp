



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#15](CppExerciseNoForLoopsAnswer15.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#15: write to [std::cout](CppCout.htm)
------------------------------------------------

 

Replace the [for](CppFor.htm)-loop. You will need:

 

-   [std::copy](CppCopy.htm)
-   [std::ostream\_iterator](CppOstream_iterator.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void CoutVector(std::vector<int>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     std::cout << v[i] << '\n';   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iterator> #include <ostream> #include <vector>   //From http://www.richelbilderbeek.nl/CppCoutVector.htm template <class T> void CoutVector(const std::vector<T>& v) {   std::copy(v.begin(),v.end(),std::ostream_iterator<T>(std::cout,"\n")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



