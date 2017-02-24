
 

 

 

 

 

([C++](Cpp.md)) [std::copy](CppCopy.md)
=========================================

 

[STL](CppStl.md) [algorithm](CppAlgorithm.md) to copy
[container](CppContainer.md) elements.

 

[std::copy](CppCopy.md) assumes that the memory data is copied to is
valid. For example, if you copy a [std::vector](CppVector.md) of size
10 to another [std::vector](CppVector.md), the latter must have a size
of 10 at least. But if the size is unknown, use an
[inserter](CppInserter.md) like
[std::back\_inserter](CppBack_inserter.md).

 

Related algorithms are:

-   [std::copy\_backward](CppCopy_backward.md): copy values to the back
    of a [container](CppContainer.md)
-   [std::copy\_if](CppCopy_if.md): for performing a conditional copy
-   [std::transform](CppTransform.md): for copy and modify

 

Prefer [algorithm](CppAlgorithm.md) calls over hand-written loops
\[1\]\[2\].

 

 

 

 

 

Example without using an [inserter](CppInserter.md)
----------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <cassert> #include <iostream> #include <map> #include <vector>   int main() {   const int size = 10;   //Generate a std::map   std::map<int,int> myMap;   for (int i=0; i!=size; ++i) myMap[i] = i*i;   //Generate a std::vector   std::vector<std::pair<int,int> > myVector;   myVector.resize(size);     //Copy the std::map to the std::vector   std::copy(myMap.begin(),myMap.end(),myVector.begin());     assert(myVector.size()==size);   //Display the std::vector   for (int i=0; i!=size; ++i)   {     std::cout       << myVector[i].first       << " "       << myVector[i].second       << std::endl;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example with using an [inserter](CppInserter.md)
-------------------------------------------------

 

Copies a [std::map](CppMap.md) to a [std::vector](CppVector.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <cassert> #include <iostream> #include <map> #include <vector>   int main() {   const int size = 10;   //Generate a std::map   std::map<int,int> myMap;   for (int i=0; i!=size; ++i) myMap[i] = i*i;   //Generate a std::vector   std::vector<std::pair<int,int> > myVector;     //Copy the std::map to the std::vector   std::copy(myMap.begin(),myMap.end(),std::back_inserter(myVector));     //Display the std::vector   for (int i=0; i!=size; ++i)   {     std::cout       << myVector[i].first       << " "       << myVector[i].second       << std::endl;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [Append](CppAppend.md)
--------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm  //From http://www.richelbilderbeek.nl template <class Container> void Append(Container& toWhat, const Container& whatToAppend) {   std::copy(whatToAppend.begin(),whatToAppend.end(),std::back_inserter (toWhat)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [CoutVector](CppCoutVector.md)
----------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iterator> #include <ostream> #include <vector>  //From http://www.richelbilderbeek.nl/CppCoutVector.htm template <class T> void CoutVector(const std::vector<T>& v) {   std::copy(v.begin(),v.end(),std::ostream_iterator<T>(std::cout,"\n")); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [CoutContainer](CppCoutContainer.md)
----------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iterator> #include <ostream> #include <vector>  //From http://www.richelbilderbeek.nl/CppCoutContainer.htm template <class Container> void CoutContainer(const Container& c) {   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(std::cout,"\n")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [SGI's page about std::copy](http://www.sgi.com/tech/stl/copy.html)
-   [Cplusplus.com page about
    std::copy](http://www.cplusplus.com/reference/algorithm/copy)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops.
2.  [Scott Meyers](CppScottMeyers.md). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'

 

 

 

 

 

 

