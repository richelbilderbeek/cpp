

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::back\_inserter](CppBack_inserter.htm)
============================================================

 

[std::back\_inserter](CppBack_inserter.htm) is a type of
[inserter](CppInserter.htm).

 

A good use of [std::back\_inserter](CppBack_inserter.htm) is when you
[std::copy](CppCopy.htm) to a [container](CppContainer.htm)
[class](CppClass.htm).

 

 

 

 

 

Example: [Append](CppAppend.htm)
--------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm  //From http://www.richelbilderbeek.nl template <class Container> void Append(Container& toWhat, const Container& whatToAppend) {   std::copy(whatToAppend.begin(),whatToAppend.end(),std::back_inserter (toWhat)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

1.  [SGI's page about
    std::back\_inserter](http://www.sgi.com/tech/stl/back_insert_iterator.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
