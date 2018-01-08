
 

 

 

 

 

([C++](Cpp.md)) [std::back\_inserter](CppBack_inserter.md)
============================================================

 

[std::back\_inserter](CppBack_inserter.md) is a type of
[inserter](CppInserter.md).

 

A good use of [std::back\_inserter](CppBack_inserter.md) is when you
[std::copy](CppStdCopy.md) to a [container](CppContainer.md)
[class](CppClass.md).

 

 

 

 

 

Example: [Append](CppAppend.md)
--------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm  //From http://www.richelbilderbeek.nl template <class Container> void Append(Container& toWhat, const Container& whatToAppend) {   std::copy(whatToAppend.begin(),whatToAppend.end(),std::back_inserter (toWhat)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

1.  [SGI's page about
    std::back\_inserter](http://www.sgi.com/tech/stl/back_insert_iterator.html)

 

 

 

 

 

 

