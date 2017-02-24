
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [How to add an \#include folder in Qt Creator?](CppQtAddInclude.md)
======================================================================================================

 

[Qt Creator FAQ](CppQtFaq.md).

 

If you want to add an extra [\#include](CppInclude.md) folder in your
[Qt Creator](CppQtCreator.md) [project file](CppQtProjectFile.md), do
the following:

1.  View your project (ALT-0)
2.  Double-click on your [project file](CppQtProjectFile.md)
    (HelloWorld.pro for example) to open the code editor
3.  Add an INCLUDEPATH line:

 

  ------------------------------------
  `  INCLUDEPATH += ../../../boost `
  ------------------------------------

 

 

 

 

 

 

