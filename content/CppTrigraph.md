



 

 

 

 

 

([C++](Cpp.htm)) [trigraph](CppTrigraph.htm)
============================================

 

A [trigraph](CppTrigraph.htm) is a three-character-combinatition to
replace certain characters.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Monograph   Trigraph     [          ??(     ]          ??)     {          ??<     }          ??>     #          ??=     \          ??/     ^          ??'     |          ??!     ~          ??-`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Hello World](CppHelloWorld.htm) with [trigraphs](CppTrigraph.htm)
------------------------------------------------------------------

 

  --------------------------------------------------------------------------------
  ` ??=include <iostream>  int main() ??<   std::cout << "Hello world??/n"; ??>`
  --------------------------------------------------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

Add the following line to your [Qt project file](CppQtProjectFile.htm)
to enable [trigraphs](CppTrigraph.htm):

 

  ---------------------------------
  ` QMAKE_CXXFLAGS += -trigraphs`
  ---------------------------------

 

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
