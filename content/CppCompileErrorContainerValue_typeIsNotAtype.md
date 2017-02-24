
 

 

 

 

 

([C++](Cpp.md)) ['Container::value\_type' is not a type](CppCompileErrorContainerValue_typeIsNotAtype.md)
===========================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:4: error: 'Container::value_type' is not a type /MyFolder/main.cpp:4: error: expected initializer before 'MinElement'`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.3.1

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Boost](CppBoost.md) version: 1.42.0

 

The following code caused the error:

 

  -----------------------------------------------------------------------------------------------------------
  ` template <class Container> const Container::value_type::value_type MinElement(const Container& v) {  }`
  -----------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-02T08:31:54 # #------------------------------------------------- QT       -= gui TARGET = MyProjectName peglib   += console peglib   -= app_bundle INCLUDEPATH += ../../../boost_1_42_0 TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Unknown. Feel encouraged to [contact me](Contact.md) if you know the
solution.

 

 

 

 

 

 

