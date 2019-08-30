# ([C++](Cpp.md)) [TemplateClassExample6](CppTemplateClassExample6.md)

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 6: copy policy of template class type, two
specialized classes](CppTemplateClassExample6.md) is a [template
class](CppTemplateClass.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample6' (zip)](CppTemplateClassExample6.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTemplateClassExample6/CppTemplateClassExample6.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample6/main.cpp
-----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` enum class CopyPolicy { allow, forbid };  template <class T, CopyPolicy copy_policy = CopyPolicy::allow> struct MyClass;  template <class T> struct MyClass<T,CopyPolicy::forbid> {   MyClass(const T& x) : m_x(x) {}   MyClass<T,CopyPolicy::forbid>(const MyClass<T,CopyPolicy::forbid>&) = delete;   MyClass<T,CopyPolicy::forbid>& operator=(const MyClass<T,CopyPolicy::forbid>&) = delete;   private:   T m_x; };  template <class T> struct MyClass<T,CopyPolicy::allow> {   MyClass(const T& x) : m_x(x) {}   private:   T m_x; };  int main() {   const MyClass<int,CopyPolicy::allow> a(123);   const MyClass<int,CopyPolicy::forbid> b(123);    const MyClass<int> c(a);   //const MyClass<int,IntCopyPolicy::forbid> d(b); //Won't compile }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

