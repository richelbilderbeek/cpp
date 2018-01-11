
 

 

 

 

 

([C++](Cpp.md)) [boost::filesystem::copy\_file](CppCopy_file.md)
==================================================================

 

[boost::filesystem::copy\_file](CppCopy_file.md) is a
[Boost.Filesystem](CppBoostFilesystem.md) [file I/O](CppFileIo.md)
[function](CppFunction.md) to copy a file.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/filesystem.hpp>  int main() {   const std::string from = "from.txt";   const std::string to = "to.txt";   assert(boost::filesystem::is_regular_file(from)     && "Assume file is present");   boost::filesystem::copy_file(from,to); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent the [link error](CppLinkError.md) [undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.md)):

 

  ----------------------------------------------
  ` LIBS += -lboost_system -lboost_filesystem`
  ----------------------------------------------

 

 

 

 

 

 

