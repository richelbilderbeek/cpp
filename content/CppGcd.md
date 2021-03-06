
 

 

 

 

 

([C++](Cpp.md)) [Greatest Common Divisor](CppGcd.md)
======================================================

 

The greatest common divisor can be calculated:

-   using a for-loop
-   using recursion
-   using the [Boost](http://www.boost.org/) library

 

Code in plain text can be found [here](CppGcd.txt).

 

 

 

 

 

A for-loop
----------

 

Using Euclid's algorithm.

 

  ------------------------------------------------------------------------------------------------------------------------------------------
  ` int GreatestCommonDivisor(int x, int y) {   while (y != 0)   {     const int temp = y;     y = x % y;     x = temp;   }   return x; }`
  ------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Using recursion
---------------

 

Using Euclid's algorithm, a recursive function:

 

  -------------------------------------------------------------------------------------------------------------------------
  ` int GreatestCommonDivisor(const int x, const int y) {   if (y==0) return x;   return GreatestCommonDivisor(y,x%y); }`
  -------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Using the [Boost](http://www.boost.org/) library
------------------------------------------------

 

From <http://www.boost.org/doc/html/boost_math/gcd_lcm.html>:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/math/common_factor.hpp> #include <algorithm> #include <iterator> #include <iostream>   int main() {   using std::cout;   using std::endl;     cout << "The GCD and LCM of 6 and 15 are "     << boost::math::gcd(6, 15) << " and "     << boost::math::lcm(6, 15) << ", respectively."     << endl;     cout << "The GCD and LCM of 8 and 9 are "     << boost::math::static_gcd<8, 9>::value     << " and "     << boost::math::static_lcm<8, 9>::value     << ", respectively." << endl;   std::cin.get(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

