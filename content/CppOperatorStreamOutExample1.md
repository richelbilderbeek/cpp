
 

 

 

 

 

([C++](Cpp.md)) [OperatorStreamOutExample1](CppOperatorStreamOutExample1.md)
==============================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppOperatorStreamOutExample1/CppOperatorStreamOutExample1.pro
--------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppOperatorStreamOutExample1/main.cpp
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct MyClass {   MyClass(const int x) noexcept : m_x(x) {}   private:   const int m_x;   friend std::ostream& operator<<(std::ostream& os, const MyClass& myClass) noexcept; };  std::ostream& operator<<(std::ostream& os, const MyClass& myClass) noexcept {   os << "MyClass.value: " << myClass.m_x;   return os; }  int main() {   const MyClass my_class(13);   std::cout << my_class << '\n'; }  /* Screen output  MyClass.value: 13 Press <RETURN> to close this window...  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

