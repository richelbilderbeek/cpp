
 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png) [Boost.Filesystem](CppBoostFilesystem.md)
=============================================================================

 

[Boost.Filesystem](CppBoostFilesystem.md) is a [library](CppLibrary.md)
part of [Boost](CppBoost.md) for working with files, like
browsing/adding/removing files and folders.

 

 

 

 

 

[Boost.Filesystem](CppBoostFilesystem.md) examples
----------------------------------------------

 

-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)
    [Boost.Filesystem example 1: count C++
    webpages](CppFilesystemExample1.md)
-   ![Lubuntu](PicLubuntu.png) [Boost.Filesystem example 2: count C++
    webpages, GUI](CppFilesystemExample2.md)
-   ![Lubuntu](PicLubuntu.png)
    [GetCurrentFolder](CppGetCurrentFolder.md)
-   ![Lubuntu](PicLubuntu.png)
    [GetFilesInFolder](CppGetFilesInFolder.md)
-   ![Lubuntu](PicLubuntu.png)
    [GetCppFilesInFolder](CppGetCppFilesInFolder.md)
-   ![Lubuntu](PicLubuntu.png) [GetPath](CppGetPath.md)
-   ![Lubuntu](PicLubuntu.png)
    [boost::filesystem::copy\_file](CppBoostCopy_file.md)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent the [link error](CppLinkError.md) [undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.md)):

 

  ----------------------------------------------
  ` LIBS += -lboost_system -lboost_filesystem`
  ----------------------------------------------

 

 

 

 

 

 

