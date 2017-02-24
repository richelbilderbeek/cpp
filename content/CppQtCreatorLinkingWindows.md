



 

 

 

 

 

([C++](Cpp.htm)) [Linking against a library in Qt Creator under Windows](CppQtCreatorLinkingWindows.htm)
========================================================================================================

 

![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Qt Creator FAQ](CppQtFaq.htm) showing how to [linking](CppLinker.htm)
against a [library](CppLibrary.htm) in [Qt Creator](CppQtCreator.htm)
under Windows.

 

In the [Qt Creator](CppQtCreator.htm) [project
file](CppQtProjectFile.htm), add the following line, to
[link](CppLinker.htm) against the [Boost.Regex](CppRegex.htm)
[library](CppLibrary.htm):

 

  ----------------------------------------------------
  ` LIBS+=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib`
  ----------------------------------------------------

 

Note that this example assumes that the file
C:/Qt/2010.02.1/qt/lib/libboost\_regex.lib exists. You must link to a
.lib file, not to a .a file.

 

If you have [Dev-C++](CppDevCpp.htm) installed, you might want to use:

 

  ----------------------------------------------------
  ` win32:LIBS += C:/Dev-Cpp/lib/libboost_regex.lib`
  ----------------------------------------------------

 

The [Hello Boost](CppHelloBoost.htm) program shows how to
[link](CppLinker.htm) against the [Boost](CppBoost.htm)
[library](CppLibrary.htm) [Boost.Regex](CppRegex.htm) under both Ubuntu
and Windows:

 

  ------------------------------------------------------------------------------------------------
  ` unix:LIBS += -L/usr/lib -lboost_regex win32:LIBS+=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib`
  ------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
