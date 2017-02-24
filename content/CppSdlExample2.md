[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SDL example 2: showing a bitmap](CppSdlExample2.htm)
======================================================================

 

This [SDL](CppSdl.htm) example shows colors moving, like [this
screenshot (png)](CppSdlExample2.png).

 

Operating system:
[Ubuntu](http://en.wikipedia.org/wiki/Ubuntu_%28operating_system%29)

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

Additional [libraries](CppLibrary.htm): [SDL](CppSdl.htm)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-17T14:57:33 # #-------------------------------------------------  QT       += core  QT       -= gui  TARGET = CppSdlExample2 CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  LIBS += -L/usr/local/lib -lSDL SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib> #include <SDL/SDL.h>  int main() {   //Start SDL   if (SDL_Init( SDL_INIT_EVERYTHING ) < 0)   {     assert(!"Should not get here. Initialization failed");   }   //Call SDL_Quit upon exit   std::atexit(SDL_Quit);   //Set up screen   SDL_Surface * const screen = SDL_SetVideoMode( 450, 450, 32, SDL_SWSURFACE );   assert(screen && "Assume screen can be initialized");   //Load image   SDL_Surface * const image = SDL_LoadBMP( "MyImage.bmp");   assert(image && "Assume image is found in same folder as binary");   //Blit image to screen   SDL_BlitSurface( image, 0, screen, 0);   //Update screen   SDL_Flip( screen );   //Wait for user to close window   while (1)   {     SDL_Event event;     SDL_PollEvent(&event);     if (event.type == SDL_QUIT) break;   }   //Free the loaded image   SDL_FreeSurface( image ); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
