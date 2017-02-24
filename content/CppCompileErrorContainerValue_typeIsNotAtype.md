



 

 

 

 

 

([C++](Cpp.htm)) ['Container::value\_type' is not a type](CppCompileErrorContainerValue_typeIsNotAtype.htm)
===========================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:4: error: 'Container::value_type' is not a type /MyFolder/main.cpp:4: error: expected initializer before 'MinElement'`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.3.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Boost](CppBoost.htm) version: 1.42.0

 

The following code caused the error:

 

  -----------------------------------------------------------------------------------------------------------
  ` template <class Container> const Container::value_type::value_type MinElement(const Container& v) {  }`
  -----------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProjectName peglib   += console peglib   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Unknown. Feel encouraged to [contact me](Contact.htm) if you know the
solution.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
