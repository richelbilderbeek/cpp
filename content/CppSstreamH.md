



 

 

 

 

 

([C++](Cpp.htm)) [sstream.h](CppSstreamH.htm)
=============================================

 

[sstream.h](CppSstreamH.htm) is an [STL](CppStl.htm) [header
file](CppHeaderFile.htm) for stringstreams.

 

List of [definitions](CppDefinition.htm) in [sstream.h](CppSstreamH.htm)
(incomplete):

-   [std::istringstream](CppIstringstream.htm)
-   [std::ostringstream](CppOstringstream.htm)
-   [std::stringstream](CppStringstream.htm)

 

 

 

 

 

Example: [ContainerToStr](CppContainerToStr.htm)
================================================

 

[ContainerToStr](CppContainerToStr.htm) is a
[container](CppContainer.htm) and [convert](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) a
[container](CppContainer.htm) to [std::string](CppString.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream>  template <class Container> const std::string ContainerToStr(const Container& c, const std::string& seperator = " ") {   std::stringstream s;   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(s,seperator.c_str()));   return s.str(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



