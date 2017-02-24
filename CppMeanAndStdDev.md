[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [MeanAndStdDev](CppMeanAndStdDev.htm)
======================================================

 

[Math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to get the mean
and standard deviation of a [std::vector](CppVector.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath> #include <vector>  //From http://www.richelbilderbeek.nl/CppMeanAndStdDev.htm void MeanAndStdDev(   const std::vector<double>& myVector,    double& mean,    double& stdDev) {   const int size = static_cast<int>(myVector.size());   assert(size>1);   const double dSize = static_cast<double>(size);   mean = 0.0;   double sumX = 0.0;   double sumXsquared = 0.0;   for (int i=0; i!=size; ++i)   {     const double value = myVector[i];     sumX+=value;     sumXsquared+=(value*value);     mean+=value;   }    mean/=dSize;   stdDev = std::sqrt(((dSize*sumXsquared)-(sumX*sumX))/(dSize *(dSize-1.0))); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
