



 

 

 

 

 

([C++](Cpp.htm)) [PimplExample2](CppPimplExample2.htm)
======================================================

 

[pimpl example 1: Lizard implementation in multiple files using
boost::shared\_ptr](CppPimplExample2.htm) is a [pimpl](CppPimpl.htm)
[example](CppExample.htm).

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

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppPimplExample2/CppPimplExample2.pro
--------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) #include(../../Libraries/GeneralConsole.pri)  SOURCES += main.cpp \     lizard.cpp  HEADERS += \     lizard.h`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppPimplExample2/lizard.h
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef LIZARD_H #define LIZARD_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <boost/shared_ptr.hpp> #pragma GCC diagnostic pop  enum class Gender { male, female };  struct Lizard {   Lizard(const Gender gender) noexcept;   Gender GetGender() const noexcept;   private:   struct LizardImpl;   const std::shared_ptr<const LizardImpl> m_impl; };  #endif // LIZARD_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppPimplExample2/lizard.cpp
-----------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "lizard.h"  struct Lizard::LizardImpl {   LizardImpl(const Gender gender) noexcept;   Gender GetGender() const noexcept;    private:   const Gender m_gender; };  Lizard::Lizard(const Gender gender) noexcept   : m_impl(std::make_shared<LizardImpl>(gender) ) {  }  Lizard::LizardImpl::LizardImpl(const Gender gender) noexcept   : m_gender(gender) {  }  Gender Lizard::LizardImpl::GetGender() const noexcept {   return m_gender; }  Gender Lizard::GetGender() const noexcept {   return m_impl->GetGender(); //Forward to implementation }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppPimplExample2/main.cpp
---------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "lizard.h"  int main() {   const Lizard male(Gender::male);   assert(male.GetGender() == Gender::male);   const Lizard female(Gender::female);   assert(female.GetGender() == Gender::female); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
