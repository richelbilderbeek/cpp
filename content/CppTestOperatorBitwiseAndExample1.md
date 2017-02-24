



 

 

 

 

 

([C++](Cpp.md)) [TestOperatorBitwiseAndExample1](CppTestOperatorBitwiseAndExample1.md)
========================================================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTestOperatorBitwiseAndExample1/CppTestOperatorBitwiseAndExample1.pro
------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTestOperatorBitwiseAndExample1/main.cpp
--------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  struct Int {   int x; };  int main() {   Int * const my_int = new Int;   my_int->x = 42;    //Evaluates both operands   if ( (static_cast<bool>(my_int)) & (my_int->x == 42) )   {     //OK   }   else   {     assert(!"Should not get here");   }   Int * const my_null = 0;    //Only evaluates the left operand   if ( (static_cast<bool>(my_null) ) & (my_null->x == 0) )   {     assert(!"Should not get here");   }   else if ( (static_cast<bool>(my_null) ) & (my_null->x != 0) )   {     assert(!"Should not get here");   }   else   {     //OK   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
