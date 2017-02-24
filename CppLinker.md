[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Linker](CppLinker.htm)
========================================

 

The [linker](CppLinker.htm) [links](CppLink.htm) [compilation
units](CppUnit.htm) of a project into a single executable.

 

[Linking](CppLink.htm) takes place after [compiling](CppCompile.htm). An
[error](CppError.htm) during [linking](CppLink.htm) is called a [link
error](CppLinkError.htm).

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Use a custom [linker](CppLinker.htm) in [Qt Creator](CppQtCreator.htm)
------------------------------------------------------------------------------------------------------

 

Add (something like) the following lines to your [Qt project
file](CppQtProjectFile.htm) (from \[1\]):

 

  -------------------------------------------------------------------
  ` QMAKE_CXX = c:/Dev-Cpp/bin/g++ QMAKE_LINK = c:/Dev-Cpp/bin/g++`
  -------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Wikipedia page about
    linker](http://en.wikipedia.org/wiki/Linker_%28computing%29)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [QtForum.org
    post](http://www.qtforum.org/article/33565/specifying-the-linker.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
