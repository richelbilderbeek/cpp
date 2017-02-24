
 

 

 

 

 

([C++](Cpp.md)) [PimplExample2](CppPimplExample2.md)
======================================================

 

[pimpl example 1: Lizard implementation in multiple files using
boost::shared\_ptr](CppPimplExample2.md) is a [pimpl](CppPimpl.md)
[example](CppExample.md).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppPimplExample2/CppPimplExample2.pro
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

 

 

 

 

 

 

