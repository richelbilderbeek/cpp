



 

 

 

 

 

([C++](Cpp.md)) [PimplExample1](CppPimplExample1.md)
======================================================

 

[pimpl example 1: Lizard implementation in one file using
boost::shared\_ptr](CppPimplExample1.md) is a [pimpl](CppPimpl.md)
[example](CppExample.md).

 

Most lizards remain having the same gender for all their live.
Therefore, it is a good idea to make a lizard's gender a const member
variable. Problem is, that this makes a lizard class uncopyable. In this
example I solve this by making a Lizard contain an opaque pointer to
LizardImpl, where a LizardImpl does have a constant gender. Because I
want to be able to do a [shallow copy](CppShallowCopy.md) on Lizards, I
use a [boost::shared\_ptr](CppBoostShared_ptr.md). Also note that the
code is very similar to a [Strategy](CppDesignPatternStrategy.md)
[design pattern](CppDesignPattern.md).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppPimplExample1/CppPimplExample1.pro
--------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppPimplExample1/main.cpp
---------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <memory>  enum class Gender { male, female };  struct Lizard {   Lizard(const Gender gender) noexcept;   Gender GetGender() const noexcept;   private:   struct LizardImpl;   const std::shared_ptr<const LizardImpl> m_impl; };  struct Lizard::LizardImpl {   LizardImpl(const Gender gender) noexcept;   Gender GetGender() const noexcept;    private:   const Gender m_gender; };  Lizard::Lizard(const Gender gender) noexcept   : m_impl(std::make_shared<LizardImpl>(gender) ) {  }  Gender Lizard::GetGender() const noexcept {   return m_impl->GetGender(); //Forward to implementation }  Lizard::LizardImpl::LizardImpl(const Gender gender) noexcept   : m_gender(gender) {  }  Gender Lizard::LizardImpl::GetGender() const noexcept {   return m_gender; }   int main() {   const Lizard male(Gender::male);   assert(male.GetGender() == Gender::male);   const Lizard female(Gender::female);   assert(female.GetGender() == Gender::female); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
