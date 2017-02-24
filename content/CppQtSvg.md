



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QtSvg](CppQtSvg.md)
=======================================================

 

[QtSvg](CppQtSvg.md) is a [QT](CppQt.md) [module](CppQtModule.md) for
[scalable vector graphics](CppSvg.md).

 

 

 

 

 

[QtSvg](CppQtSvg.md) examples
------------------------------

 

-   [TicTacToeLearner](ToolTicTacToeLearner.md)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent [link errors](CppLinkError.md)):

  ----------------------------------------------------------------------------------------------
  ` equals(QT_MAJOR_VERSION, 4): LIBS += -lQtSvg greaterThan(QT_MAJOR_VERSION, 4): QT +=  svg`
  ----------------------------------------------------------------------------------------------

 

 

 

 

 





 



