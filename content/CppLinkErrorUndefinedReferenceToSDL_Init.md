
 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'SDL\_Init'](CppLinkErrorUndefinedReferenceToSDL_Init.md)
===================================================================================================

 

[Link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:7: error: undefined reference to 'SDL_Init' /MyFolder/main.cpp:9: error: undefined reference to 'SDL_GetError' /MyFolder/main.cpp:12: error: undefined reference to 'SDL_Quit' :: error: collect2: ld returned 1 exit status`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

Additional [libraries](CppLibrary.md): [SDL](CppSdl.md)

 

The following source code was used, from [the SDL
tutorial](http://www.libsdl.org/intro.en/usinginit.html):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream> #include <SDL/SDL.h>  int main() {   if ( SDL_Init(SDL_INIT_AUDIO | SDL_INIT_VIDEO) < 0 )   {     std::cerr << "Unable to init SDL: " << SDL_GetError() << '\n';     return 1;   }   std::atexit(SDL_Quit); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-17T14:57:33 # #-------------------------------------------------  QT       += core  QT       -= gui  TARGET = TestSdl CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.md) against the [SDL](CppSdl.md)
[library](CppLibrary.md). Add the following line to your [project
file](CppQtProjectFile.md):

 

  -----------------------------------
  ` LIBS += -L/usr/local/lib -lSDL`
  -----------------------------------

 

 

 

 

 

 

