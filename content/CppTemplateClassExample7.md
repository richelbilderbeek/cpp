



 

 

 

 

 

([C++](Cpp.md)) [TemplateClassExample7](CppTemplateClassExample7.md)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 7: copy policy of template class type, two
partially specialized classes](CppTemplateClassExample7.md) is a
[template class](CppTemplateClass.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample7' (zip)](CppTemplateClassExample7.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTemplateClassExample7/CppTemplateClassExample7.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample7/main.cpp
-----------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Does not compile // //Unknown how to compile this  enum class CopyPolicy { allow, forbid };  template <class T, CopyPolicy copy_policy> struct MyClass {   //All MyClass template classes must have a same constructor   MyClass<T,copy_policy>(const T& x) : m_x(x) {}   private:   T m_x; };  template <class T> struct MyClass<T,CopyPolicy::forbid> {   MyClass<T,CopyPolicy::forbid>(const MyClass<T,CopyPolicy::forbid>&) = delete;   MyClass<T,CopyPolicy::forbid>& operator=(const MyClass<T,CopyPolicy::forbid>&) = delete; };  template <class T> struct MyClass<T,CopyPolicy::allow> {  };  int main() {    const MyClass<int,CopyPolicy::allow > a(123); //Use general constructor: Does not compile   const MyClass<int,CopyPolicy::forbid> b(123); //Use general constructor: Does not compile    const decltype(a) c(a); //Should compile   const decltype(b) d(b); //Should not compile }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
