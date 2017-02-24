



 

 

 

 

 

([C++](Cpp.htm)) [std::stringstream](CppStringstream.htm)
=========================================================

 

[std::stringstream](CppStringstream.htm) is a [stream](CppStream.htm)
for [std::strings](CppString.htm).

 

The example below shows how to use
[std::stringstream](CppStringstream.htm) to concatenate
[container](CppContainer.htm) elements.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream>  template <class Container> const std::string ContainerToStr(const Container& c, const std::string& seperator = " ") {   std::stringstream s;   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(s,seperator.c_str()));   return s.str(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
