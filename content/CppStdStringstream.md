
 

 

 

 

 

([C++](Cpp.md)) [std::stringstream](CppStdStringstream.md)
=========================================================

 

[std::stringstream](CppStdStringstream.md) is a [stream](CppStream.md)
for [std::strings](CppStdString.md).

 

The example below shows how to use
[std::stringstream](CppStdStringstream.md) to concatenate
[container](CppContainer.md) elements.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream>  template <class Container> const std::string ContainerToStr(const Container& c, const std::string& seperator = " ") {   std::stringstream s;   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(s,seperator.c_str()));   return s.str(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

