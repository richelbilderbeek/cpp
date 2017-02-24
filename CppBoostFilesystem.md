[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png) [Boost.Filesystem](CppFilesystem.htm)
=============================================================================

 

[Boost.Filesystem](CppFilesystem.htm) is a [library](CppLibrary.htm)
part of [Boost](CppBoost.htm) for working with files, like
browsing/adding/removing files and folders.

 

 

 

 

 

[Boost.Filesystem](CppFilesystem.htm) examples
----------------------------------------------

 

-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)
    [Boost.Filesystem example 1: count C++
    webpages](CppFilesystemExample1.htm)
-   ![Lubuntu](PicLubuntu.png) [Boost.Filesystem example 2: count C++
    webpages, GUI](CppFilesystemExample2.htm)
-   ![Lubuntu](PicLubuntu.png)
    [GetCurrentFolder](CppGetCurrentFolder.htm)
-   ![Lubuntu](PicLubuntu.png)
    [GetFilesInFolder](CppGetFilesInFolder.htm)
-   ![Lubuntu](PicLubuntu.png)
    [GetCppFilesInFolder](CppGetCppFilesInFolder.htm)
-   ![Lubuntu](PicLubuntu.png) [GetPath](CppGetPath.htm)
-   ![Lubuntu](PicLubuntu.png)
    [boost::filesystem::copy\_file](CppCopy_file.htm)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.htm) (to
prevent the [link error](CppLinkError.htm) [undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.htm)):

 

  ----------------------------------------------
  ` LIBS += -lboost_system -lboost_filesystem`
  ----------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
