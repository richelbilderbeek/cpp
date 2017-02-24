
 

 

 

 

 

([C++](Cpp.md)) [Product](CppProduct.md)
==========================================

 

[Math](CppMath.md) [code snippet](CppCodeSnippets.md) to calculate the
product of the elements of a [std::vector](CppVector.md).

 

[Product](CppProduct.md) can be programmed multiple ways:

-   Using [algorithms](CppAlgorithm.md) (preferred)
-   Using a [for](CppFor.md)-loop

 

 

 

 

 

[Product](CppProduct.md) using [algorithms](CppAlgorithm.md)
--------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int Product(const std::vector<int>& v) {   const int sz = v.size();   const int product = 1;   for (int i=0; i!=sz; ++i)   {     product*=v[i];   }   return product; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Product](CppProduct.md) using a [for](CppFor.md)-loop
--------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  int Product(const std::vector<int>& v) {   return std::accumulate(v.begin(),v.end(),1,std::multiplies<int>());  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

