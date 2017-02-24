[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::copy](CppCopy.htm)
=========================================

 

[STL](CppStl.htm) [algorithm](CppAlgorithm.htm) to copy
[container](CppContainer.htm) elements.

 

[std::copy](CppCopy.htm) assumes that the memory data is copied to is
valid. For example, if you copy a [std::vector](CppVector.htm) of size
10 to another [std::vector](CppVector.htm), the latter must have a size
of 10 at least. But if the size is unknown, use an
[inserter](CppInserter.htm) like
[std::back\_inserter](CppBack_inserter.htm).

 

Related algorithms are:

-   [std::copy\_backward](CppCopy_backward.htm): copy values to the back
    of a [container](CppContainer.htm)
-   [std::copy\_if](CppCopy_if.htm): for performing a conditional copy
-   [std::transform](CppTransform.htm): for copy and modify

 

Prefer [algorithm](CppAlgorithm.htm) calls over hand-written loops
\[1\]\[2\].

 

 

 

 

 

Example without using an [inserter](CppInserter.htm)
----------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <cassert> #include <iostream> #include <map> #include <vector>   int main() {   const int size = 10;   //Generate a std::map   std::map<int,int> myMap;   for (int i=0; i!=size; ++i) myMap[i] = i*i;   //Generate a std::vector   std::vector<std::pair<int,int> > myVector;   myVector.resize(size);     //Copy the std::map to the std::vector   std::copy(myMap.begin(),myMap.end(),myVector.begin());     assert(myVector.size()==size);   //Display the std::vector   for (int i=0; i!=size; ++i)   {     std::cout       << myVector[i].first       << " "       << myVector[i].second       << std::endl;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example with using an [inserter](CppInserter.htm)
-------------------------------------------------

 

Copies a [std::map](CppMap.htm) to a [std::vector](CppVector.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <cassert> #include <iostream> #include <map> #include <vector>   int main() {   const int size = 10;   //Generate a std::map   std::map<int,int> myMap;   for (int i=0; i!=size; ++i) myMap[i] = i*i;   //Generate a std::vector   std::vector<std::pair<int,int> > myVector;     //Copy the std::map to the std::vector   std::copy(myMap.begin(),myMap.end(),std::back_inserter(myVector));     //Display the std::vector   for (int i=0; i!=size; ++i)   {     std::cout       << myVector[i].first       << " "       << myVector[i].second       << std::endl;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [Append](CppAppend.htm)
--------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm  //From http://www.richelbilderbeek.nl template <class Container> void Append(Container& toWhat, const Container& whatToAppend) {   std::copy(whatToAppend.begin(),whatToAppend.end(),std::back_inserter (toWhat)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [CoutVector](CppCoutVector.htm)
----------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iterator> #include <ostream> #include <vector>  //From http://www.richelbilderbeek.nl/CppCoutVector.htm template <class T> void CoutVector(const std::vector<T>& v) {   std::copy(v.begin(),v.end(),std::ostream_iterator<T>(std::cout,"\n")); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [CoutContainer](CppCoutContainer.htm)
----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iterator> #include <ostream> #include <vector>  //From http://www.richelbilderbeek.nl/CppCoutContainer.htm template <class Container> void CoutContainer(const Container& c) {   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(std::cout,"\n")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [SGI's page about std::copy](http://www.sgi.com/tech/stl/copy.html)
-   [Cplusplus.com page about
    std::copy](http://www.cplusplus.com/reference/algorithm/copy)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops.
2.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
