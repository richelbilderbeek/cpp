[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::srand](CppSrand.htm)
===========================================

 

[std::srand](CppSrand.htm) sets the seed of the random number sequence
that can be created by [std::rand](CppRand.htm) sequence.

 

The code below demonstrates that after setting a seed of zero, the first
'randomly drawn' number is always the same.

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main ()  {   for (int i=0; i!=10; ++i)   {     std::srand(0);     std::cout << std::rand() << std::endl;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [RandomizeTimer](CppRandomizeTimer.htm)
------------------------------------------------

 

[RandomizeTimer](CppRandomizeTimer.htm) can be used to set a seed based
on the system time.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime>   //From http://www.richelbilderbeek.nl/CppRandomizeTimer.htm void RandomizeTimer() {   std::srand(std::time(0)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Setting the seed of the [Boost](CppBoost.htm) Random library
------------------------------------------------------------

 

The code below demonstrates that after setting a seed of zero, the first
'randomly drawn' number is always the same.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <ctime> #include <boost/random/normal_distribution.hpp> #include <boost/random/lagged_fibonacci.hpp>  int main() {   //A random number drawn from a normal distribution   const double mean  = 0.0;   const double sigma = 1.0;   boost::normal_distribution<double> norm_dist(mean, sigma);   boost::lagged_fibonacci19937 engine;    //Obtain a random seed   std::srand(std::clock());   const unsigned long seed = std::rand(); //Must be of type unsigned long!    //Set the seed   engine.seed(seed);    //Obtain the first value   const double firstValue = norm_dist.operator()<boost::lagged_fibonacci19937>(engine);    //Obtain more random numbers   for (int i=0; i!=10; ++i) //Check 10 times   {     //Set the seed again     engine.seed(seed);     //Get a first temp value (why this is needed I don't know)     const double temp = norm_dist.operator()<boost::lagged_fibonacci19937>(engine);     //Obtain the value that should be the same as firstValue     const double value = norm_dist.operator()<boost::lagged_fibonacci19937>(engine);     assert(value==firstValue);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
