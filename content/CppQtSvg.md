



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QtSvg](CppQtSvg.htm)
=======================================================

 

[QtSvg](CppQtSvg.htm) is a [QT](CppQt.htm) [module](CppQtModule.htm) for
[scalable vector graphics](CppSvg.htm).

 

 

 

 

 

[QtSvg](CppQtSvg.htm) examples
------------------------------

 

-   [TicTacToeLearner](ToolTicTacToeLearner.htm)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.htm) (to
prevent [link errors](CppLinkError.htm)):

  ----------------------------------------------------------------------------------------------
  ` equals(QT_MAJOR_VERSION, 4): LIBS += -lQtSvg greaterThan(QT_MAJOR_VERSION, 4): QT +=  svg`
  ----------------------------------------------------------------------------------------------

 

 

 

 

 





 



