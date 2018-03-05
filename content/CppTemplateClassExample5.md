# ([C++](Cpp.md)) [TemplateClassExample5](CppTemplateClassExample5.md)

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 5: copy policy of integer
class](CppTemplateClassExample5.md) is a [template
class](CppTemplateClass.md) [example](CppExample.md).

 -   [Download the Qt Creator project
    'CppTemplateClassExample5' (zip)](http://www.richelbilderbeek.nl/CppTemplateClassExample5.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTemplateClassExample5/CppTemplateClassExample5.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample5/main.cpp
-----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` enum class IntCopyPolicy { allow, forbid };  template <IntCopyPolicy copy_policy> struct Int;  template <> struct Int<IntCopyPolicy::forbid> {   Int(const int x) : m_x(x) {}   Int<IntCopyPolicy::forbid>(const Int<IntCopyPolicy::forbid>&) = delete;   Int<IntCopyPolicy::forbid>& operator=(const Int<IntCopyPolicy::forbid>&) = delete;   private:   int m_x; };  template <> struct Int<IntCopyPolicy::allow> {   Int(const int x) : m_x(x) {}   private:   int m_x; };  int main() {   const Int<IntCopyPolicy::allow> a(123);   const Int<IntCopyPolicy::forbid> b(123);    const Int<IntCopyPolicy::allow> c(a);   //const Int<IntCopyPolicy::forbid> d(b); //Won't compile }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

