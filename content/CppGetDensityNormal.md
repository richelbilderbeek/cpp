



 

 

 

 

 

([C++](Cpp.htm)) [GetDensityNormal](CppGetDensityNormal.htm)
============================================================

 

Gets the density at a certain 'x' of a normal distribution with a
certain mean and standard deviation.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath>  //From http://www.richelbilderbeek.nl/CppGetDensityNormal.htm double GetDensityNormal(const double x, const double mean, const double stddev) {   const double firstTerm = 1.0 / (stddev * std::sqrt(2.0 * M_PI));   const double secondTerm = -( (x - mean) * (x - mean) / (2.0 * stddev * stddev) );   const double result = firstTerm * std::exp(secondTerm);   return result; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
