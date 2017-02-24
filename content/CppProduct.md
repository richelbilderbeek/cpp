

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Product](CppProduct.htm)
==========================================

 

[Math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to calculate the
product of the elements of a [std::vector](CppVector.htm).

 

[Product](CppProduct.htm) can be programmed multiple ways:

-   Using [algorithms](CppAlgorithm.htm) (preferred)
-   Using a [for](CppFor.htm)-loop

 

 

 

 

 

[Product](CppProduct.htm) using [algorithms](CppAlgorithm.htm)
--------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int Product(const std::vector<int>& v) {   const int sz = v.size();   const int product = 1;   for (int i=0; i!=sz; ++i)   {     product*=v[i];   }   return product; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Product](CppProduct.htm) using a [for](CppFor.htm)-loop
--------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  int Product(const std::vector<int>& v) {   return std::accumulate(v.begin(),v.end(),1,std::multiplies<int>());  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
