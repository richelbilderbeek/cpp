



 

 

 

 

 

([C++](Cpp.md)) [Linking against a library in Qt Creator under Windows](CppQtCreatorLinkingWindows.md)
========================================================================================================

 

![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Qt Creator FAQ](CppQtFaq.md) showing how to [linking](CppLinker.md)
against a [library](CppLibrary.md) in [Qt Creator](CppQtCreator.md)
under Windows.

 

In the [Qt Creator](CppQtCreator.md) [project
file](CppQtProjectFile.md), add the following line, to
[link](CppLinker.md) against the [Boost.Regex](CppRegex.md)
[library](CppLibrary.md):

 

  ----------------------------------------------------
  ` LIBS+=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib`
  ----------------------------------------------------

 

Note that this example assumes that the file
C:/Qt/2010.02.1/qt/lib/libboost\_regex.lib exists. You must link to a
.lib file, not to a .a file.

 

If you have [Dev-C++](CppDevCpp.md) installed, you might want to use:

 

  ----------------------------------------------------
  ` win32:LIBS += C:/Dev-Cpp/lib/libboost_regex.lib`
  ----------------------------------------------------

 

The [Hello Boost](CppHelloBoost.md) program shows how to
[link](CppLinker.md) against the [Boost](CppBoost.md)
[library](CppLibrary.md) [Boost.Regex](CppRegex.md) under both Ubuntu
and Windows:

 

  ------------------------------------------------------------------------------------------------
  ` unix:LIBS += -L/usr/lib -lboost_regex win32:LIBS+=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib`
  ------------------------------------------------------------------------------------------------

 

 

 

 

 





 



