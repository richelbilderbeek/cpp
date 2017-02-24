



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#14](CppExerciseNoForLoopsAnswer14.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#14: Make square
--------------------------

 

Replace the [for](CppFor.htm)-loop. You will need:

-   [std::transform](CppTransform.htm)
-   your own [std::unary\_function](CppUnary_function.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  void MakeSquare(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=v[i];   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  template <class T> struct Square : public std::unary_function<T,T> {   const T operator()(const T& x) const { return x*x; } };  void MakeSquare(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Square<int>()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
