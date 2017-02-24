

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::filesystem::copy\_file](CppCopy_file.htm)
==================================================================

 

[boost::filesystem::copy\_file](CppCopy_file.htm) is a
[Boost.Filesystem](CppFilesystem.htm) [file I/O](CppFileIo.htm)
[function](CppFunction.htm) to copy a file.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/filesystem.hpp>  int main() {   const std::string from = "from.txt";   const std::string to = "to.txt";   assert(boost::filesystem::is_regular_file(from)     && "Assume file is present");   boost::filesystem::copy_file(from,to); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.htm) (to
prevent the [link error](CppLinkError.htm) [undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.htm)):

 

  ----------------------------------------------
  ` LIBS += -lboost_system -lboost_filesystem`
  ----------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
