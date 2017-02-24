



 

 

 

 

 

([C++](Cpp.md)) [StdFunctionExample3](CppStdFunctionExample3.md)
==================================================================

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdFunctionExample3/CppStdFunctionExample3.pro
--------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(debug, debug|release) {   message(Debug mode) }  CONFIG(release, debug|release) {   message(Release mode)    #Remove all asserts and TRACE   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  # # # Platform specific # #  # # # Compiler flags # # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra  unix {   QMAKE_CXXFLAGS += -Werror }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdFunctionExample3/main.cpp
---------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <functional>  struct Speaker {   Speaker() {}    void SayHello(const std::string& name) const noexcept   {     std::cout << "Hello " << name << '\n';   }   void SayBye(const std::string& name) const noexcept   {     std::cout << "Bye " << name << '\n';   } };  int main() {   const Speaker s1;   const Speaker s2;    const std::function<void (const Speaker*, const std::string&)> say_hello_function = &Speaker::SayHello;   const std::function<void (const Speaker*, const std::string&)> say_bye_function = &Speaker::SayBye;    say_hello_function(&s1,"speaker 1");   say_bye_function(&s1,"speaker 1");    say_hello_function(&s2,"speaker 2");   say_bye_function(&s2,"speaker 2"); }  /* Screen output:  Hello speaker 1 Bye speaker 1 Hello speaker 2 Bye speaker 2 Press <RETURN> to close this window...  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
