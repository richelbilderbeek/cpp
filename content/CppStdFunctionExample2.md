
 

 

 

 

 

([C++](Cpp.md)) [StdFunctionExample2](CppStdFunctionExample2.md)
==================================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[std::function example 2: member functions](CppStdFunctionExample2.md)
is a [std::function](CppStdFunction.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppStdFunctionExample2' (zip)](CppStdFunctionExample2.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdFunctionExample2/CppStdFunctionExample2.pro
--------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(debug, debug|release) {   message(Debug mode) }  CONFIG(release, debug|release) {   message(Release mode)    #Remove all asserts and TRACE   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  # # # Platform specific # #  # # # Compiler flags # # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra  unix {   QMAKE_CXXFLAGS += -Werror }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdFunctionExample2/main.cpp
---------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <functional>  struct Speaker {   Speaker(const std::string hello_message, const std::string bye_message)     : m_hello_message(hello_message),       m_bye_message(bye_message)   {    }    void SayHello() const { std::cout << m_hello_message << '\n'; }   void SayBye() const { std::cout << m_bye_message << '\n'; }    const std::string m_hello_message;   const std::string m_bye_message; };  int main() {   const Speaker s1("Hello!","Bye!");   const Speaker s2("HELLO!","BYE!");    const std::function<void (const Speaker*)> say_hello_function = &Speaker::SayHello;   const std::function<void (const Speaker*)> say_bye_function = &Speaker::SayBye;    say_hello_function(&s1);   say_bye_function(&s1);    say_hello_function(&s2);   say_bye_function(&s2); }  /* Screen output:  Hello! Bye! HELLO! BYE! Press <RETURN> to close this window...  */`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

