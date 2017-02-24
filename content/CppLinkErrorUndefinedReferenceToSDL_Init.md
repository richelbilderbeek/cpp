[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'SDL\_Init'](CppLinkErrorUndefinedReferenceToSDL_Init.htm)
===================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:7: error: undefined reference to 'SDL_Init' /MyFolder/main.cpp:9: error: undefined reference to 'SDL_GetError' /MyFolder/main.cpp:12: error: undefined reference to 'SDL_Quit' :: error: collect2: ld returned 1 exit status`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

Additional [libraries](CppLibrary.htm): [SDL](CppSdl.htm)

 

The following source code was used, from [the SDL
tutorial](http://www.libsdl.org/intro.en/usinginit.html):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream> #include <SDL/SDL.h>  int main() {   if ( SDL_Init(SDL_INIT_AUDIO | SDL_INIT_VIDEO) < 0 )   {     std::cerr << "Unable to init SDL: " << SDL_GetError() << '\n';     return 1;   }   std::atexit(SDL_Quit); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-17T14:57:33 # #-------------------------------------------------  QT       += core  QT       -= gui  TARGET = TestSdl CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the [SDL](CppSdl.htm)
[library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  -----------------------------------
  ` LIBS += -L/usr/local/lib -lSDL`
  -----------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
