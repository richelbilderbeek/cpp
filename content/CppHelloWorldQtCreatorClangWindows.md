



 

 

 

 

 

([C++](Cpp.htm)) [HelloWorldQtCreatorClangWindows](CppHelloWorldQtCreatorClangWindows.htm)
==========================================================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloWorldQtCreatorClangWindows/CppHelloWorldQtCreatorClangWindows.pro
--------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  #TARGET_EXT = .bc #QMAKE_EXT_OBJ = .bc #QMAKE_CXXFLAGS += -emit-llvm  #QMAKE_CXXFLAGS -= -no-keep-inline-dllexport #QMAKE_CXXFLAGS -= -mthreads  #exists(C:/LLVM/bin/clang++.exe ) { #  QMAKE_CXX = C:/LLVM/bin/clang++.exe #} #!exists(C:/LLVM/bin/clang++.exe ) { #  error("LLVM clang++.exe not found") #}  #exists(C:/LLVM/bin/clang.exe ) { #  QMAKE_CC = C:/LLVM/bin/clang.exe #} #!exists(C:/LLVM/bin/clang.exe ) { #  error("LLVM clang.exe not found") #}  #QMAKE_LIB = llvm-ld -link-as-library -o #QMAKE_RUN_CXX = $(CXX) $(CXXFLAGS) $(INCPATH) -c $src -o $obj #QMAKE_RUN_CC = $(CC) $(CCFLAGS) $(INCPATH) -c $src -o $obj`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorClangWindows/main.cpp
---------------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
