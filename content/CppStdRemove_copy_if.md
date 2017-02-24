
 

 

 

 

 

([C++](Cpp.md)) [std::remove\_copy\_if](CppRemove_copy_if.md)
===============================================================

 

[Algorithm](CppAlgorithm.md) that IMHO could have better be called
std::copy\_if\_not, as it does not remove anything, and only copies the
elements that do not fulfull the predicate.

 

Prefer [algorithm](CppAlgorithm.md) calls over hand-written loops
\[1,2\].

 

 

 

 

 

Example
-------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <iterator> #include <list>   struct IsEven : public std::unary_function<bool,int> {   const bool operator()(const int i) { return i % 2 == 0 ; } };   int main() {   std::list<int> v;   for (int i=0; i!=10; ++i) v.push_back(i);     std::list<int> temp;   std::remove_copy_if(v.begin(),v.end(), std::back_inserter(temp), IsEven() );     std::cout << "Content of v:" << std::endl;   std::copy(v.begin(), v.end(), std::ostream_iterator<int>(std::cout," "));   std::cout << "Content of temp:" << std::endl;   std::copy(temp.begin(), temp.end(), std::ostream_iterator<int>(std::cout," ")); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### Screen output

 

  -----------------------------------------------------------------
  ` Content of v: 0 1 2 3 4 5 6 7 8 9 Content of temp: 1 3 5 7 9`
  -----------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [SGI's std:: remove\_copy\_if
    page](http://www.sgi.com/tech/stl/remove_copy_if.html)
-   [C++ Reference's std::remove\_copy\_if
    page](http://www.cppreference.com/cppalgorithm/remove_copy_if.html)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops.'
2.  [Scott Meyers](CppScottMeyers.md). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'

 

 

 

 

 

 

