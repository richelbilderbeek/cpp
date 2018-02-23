
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#14](CppExerciseNoForLoopsAnswer14.md)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

Question \#14: Make square
--------------------------

 

Replace the [for](CppFor.md)-loop. You will need:

-   [std::transform](CppStdTransform.md)
-   your own [std::unary\_function](CppStdUnary_function.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  void MakeSquare(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=v[i];   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  template <class T> struct Square : public std::unary_function<T,T> {   const T operator()(const T& x) const { return x*x; } };  void MakeSquare(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Square<int>()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

