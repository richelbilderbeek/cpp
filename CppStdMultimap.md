[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::multimap](CppMultimap.htm)
=================================================

 

[std::multimap](CppMultimap.htm) is an [STL](CppStl.htm)
[container](CppContainer.htm) similar to [std::map](CppMap.htm), except
that it can hold multiple values for one key.

 

  ---------------------------------------------------------------
  ` #include <map>  std::multimap<std::string, int> phonebook;`
  ---------------------------------------------------------------

 

The [std::string](CppString.htm) is the key (in this case a last name)
and the **[int](CppInt.htm)** is termed the value (in this case the
persons telephone numbers).

 

One key can only have no, one or many values, like a person can have no,
one or many phone numbers.

 

 

 

 

 

Example
-------

 

To add a key-value-pair, use std::multimap&lt;T&gt;::insert. To find a
range of values, use std::multimap&lt;T&gt;::equal\_range. This [member
function](CppMemberFunction.htm) [returns](CppReturn.htm) a
[std::pair](CppPair.htm) of [iterators](CppIterator.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <map> #include <string>  int main() {   std::multimap<std::string, std::string> questions;     questions.insert(std::make_pair("A prime number between 10 to 20","11"));   questions.insert(std::make_pair("A prime number between 10 to 20","13"));   questions.insert(std::make_pair("A prime number between 10 to 20","17"));   questions.insert(std::make_pair("A prime number between 10 to 20","19"));     typedef std::multimap<std::string, std::string>::const_iterator Iterator;     const std::pair<Iterator,Iterator> answers     = questions.equal_range("A prime number between 10 to 20");     for (Iterator i = answers.first; i!= answers.second; ++i)   {     std::cout << i->second << '\n';   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Wikipedia's page about
    std::multimap](http://en.wikipedia.org/wiki/Multimap_(data_structure))
-   [SGI's page about
    std::multimap](http://www.sgi.com/tech/stl/Multimap.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
