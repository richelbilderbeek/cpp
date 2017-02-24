



 

 

 

 

 

([C++](Cpp.md)) [Hello GMP](CppHelloGmp.md)
=============================================

 

[Hello GMP](CppHelloGmp.md) is an extension of [Hello
World](CppHelloWorld.md). Like [Hello World](CppHelloWorld.md), [Hello
GMP](CppHelloGmp.md) is a simple console application. [Hello
GMP](CppHelloGmp.md), however, also requires the [GMP](CppGmp.md)
[library](CppLibrary.md) and to [link](CppLink.md) against it.

 

Here are some detailed examples of [Hello GMP](CppHelloGmp.md),
depending on [IDE](CppIde.md) and operating system:

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) ['Hello GMP'
    using Qt Creator under Ubuntu](CppHelloGmpQtCreatorUbuntu.md)
-   ![FAIL](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png) ['Hello GMP'
    using Qt Creator under Windows](CppHelloGmpQtCreatorWindows.md)

 

-   [Download the Qt Creator project 'Hello GMP' (zip)](CppHelloGmp.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppHelloGmp.pro
--------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core gui TARGET = CppHelloGmp QMAKE_CXXFLAGS += -Wextra -Weffc++ -Werror unix:LIBS+= -L/usr/lib -lgmp CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <gmpxx.h>  ///From http://www.richelbilderbeek.nl/CppMpz_tToStr.htm const std::string Mpz_tToStr(const mpz_t& i) {   static char buffer[256];   mpz_get_str(buffer,10,i);   return std::string(buffer); }  int main() {   mpz_t i;   mpz_init_set_str(i,"123456789012345678901234567890",10);   //Perform i = i * i   mpz_mul(i,i,i);    std::cout     << "Hello GMP,\n"     << Mpz_tToStr(i) << " times.\n";    mpz_clear(i); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



