



 

 

 

 

 

([C++](Cpp.md)) [HelloWorldQtCreatorClangWindows](CppHelloWorldQtCreatorClangWindows.md)
==========================================================================================

 

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

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloWorldQtCreatorClangWindows/CppHelloWorldQtCreatorClangWindows.pro
--------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  #TARGET_EXT = .bc #QMAKE_EXT_OBJ = .bc #QMAKE_CXXFLAGS += -emit-llvm  #QMAKE_CXXFLAGS -= -no-keep-inline-dllexport #QMAKE_CXXFLAGS -= -mthreads  #exists(C:/LLVM/bin/clang++.exe ) { #  QMAKE_CXX = C:/LLVM/bin/clang++.exe #} #!exists(C:/LLVM/bin/clang++.exe ) { #  error("LLVM clang++.exe not found") #}  #exists(C:/LLVM/bin/clang.exe ) { #  QMAKE_CC = C:/LLVM/bin/clang.exe #} #!exists(C:/LLVM/bin/clang.exe ) { #  error("LLVM clang.exe not found") #}  #QMAKE_LIB = llvm-ld -link-as-library -o #QMAKE_RUN_CXX = $(CXX) $(CXXFLAGS) $(INCPATH) -c $src -o $obj #QMAKE_RUN_CC = $(CC) $(CCFLAGS) $(INCPATH) -c $src -o $obj`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorClangWindows/main.cpp
---------------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
