
 

 

 

 

 

([C++](Cpp.md)) [trigraph](CppTrigraph.md)
============================================

 

A [trigraph](CppTrigraph.md) is a three-character-combinatition to
replace certain characters.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Monograph   Trigraph     [          ??(     ]          ??)     {          ??<     }          ??>     #          ??=     \          ??/     ^          ??'     |          ??!     ~          ??-`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Hello World](CppHelloWorld.md) with [trigraphs](CppTrigraph.md)
------------------------------------------------------------------

 

  --------------------------------------------------------------------------------
  ` ??=include <iostream>  int main() ??<   std::cout << "Hello world??/n"; ??>`
  --------------------------------------------------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [Qt project file](CppQtProjectFile.md)
to enable [trigraphs](CppTrigraph.md):

 

  ---------------------------------
  ` QMAKE_CXXFLAGS += -trigraphs`
  ---------------------------------

 

 

 

 

 

 

 

