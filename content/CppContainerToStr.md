
 

 

 

 

 

([C++](Cpp.md)) [ContainerToStr](CppContainerToStr.md)
========================================================

 

[ContainerToStr](CppContainerToStr.md) is a
[container](CppContainer.md) and [convert](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) a
[container](CppContainer.md) to [std::string](CppStdString.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream>  template <class Container> const std::string ContainerToStr(const Container& c, const std::string& seperator = " ") {   std::stringstream s;   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(s,seperator.c_str()));   return s.str(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

