[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Hello GMP](CppHelloGmp.htm)
=============================================

 

[Hello GMP](CppHelloGmp.htm) is an extension of [Hello
World](CppHelloWorld.htm). Like [Hello World](CppHelloWorld.htm), [Hello
GMP](CppHelloGmp.htm) is a simple console application. [Hello
GMP](CppHelloGmp.htm), however, also requires the [GMP](CppGmp.htm)
[library](CppLibrary.htm) and to [link](CppLink.htm) against it.

 

Here are some detailed examples of [Hello GMP](CppHelloGmp.htm),
depending on [IDE](CppIde.htm) and operating system:

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) ['Hello GMP'
    using Qt Creator under Ubuntu](CppHelloGmpQtCreatorUbuntu.htm)
-   ![FAIL](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png) ['Hello GMP'
    using Qt Creator under Windows](CppHelloGmpQtCreatorWindows.htm)

 

-   [Download the Qt Creator project 'Hello GMP' (zip)](CppHelloGmp.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppHelloGmp.pro
--------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core gui TARGET = CppHelloGmp QMAKE_CXXFLAGS += -Wextra -Weffc++ -Werror unix:LIBS+= -L/usr/lib -lgmp CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <gmpxx.h>  ///From http://www.richelbilderbeek.nl/CppMpz_tToStr.htm const std::string Mpz_tToStr(const mpz_t& i) {   static char buffer[256];   mpz_get_str(buffer,10,i);   return std::string(buffer); }  int main() {   mpz_t i;   mpz_init_set_str(i,"123456789012345678901234567890",10);   //Perform i = i * i   mpz_mul(i,i,i);    std::cout     << "Hello GMP,\n"     << Mpz_tToStr(i) << " times.\n";    mpz_clear(i); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
