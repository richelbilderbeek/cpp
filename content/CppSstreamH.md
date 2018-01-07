
 

 

 

 

 

([C++](Cpp.md)) [sstream.h](CppSstreamH.md)
=============================================

 

[sstream.h](CppSstreamH.md) is an [STL](CppStl.md) [header
file](CppHeaderFile.md) for stringstreams.

 

List of [definitions](CppDefinition.md) in [sstream.h](CppSstreamH.md)
(incomplete):

-   [std::istringstream](CppIstringstream.md)
-   [std::ostringstream](CppOstringstream.md)
-   [std::stringstream](CppStringstream.md)

 

 

 

 

 

Example: [ContainerToStr](CppContainerToStr.md)
================================================

 

[ContainerToStr](CppContainerToStr.md) is a
[container](CppContainer.md) and [convert](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) a
[container](CppContainer.md) to [std::string](CppStdString.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream>  template <class Container> const std::string ContainerToStr(const Container& c, const std::string& seperator = " ") {   std::stringstream s;   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(s,seperator.c_str()));   return s.str(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

