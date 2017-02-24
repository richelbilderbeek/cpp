
 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png) [Hello Boost](CppHelloBoost.md)
========================================================================

 

[Hello Boost](CppHelloBoost.md) is an extension of [Hello
World](CppHelloWorld.md). Like [Hello World](CppHelloWorld.md), [Hello
Boost](CppHelloBoost.md) is a simple console application. [Hello
Boost](CppHelloBoost.md), however, also requires the
[Boost](CppBoost.md) [library](CppLibrary.md) and to
[link](CppLink.md) against the [Boost.Regex](CppRegex.md)
[library](CppLibrary.md).

 

The base code of [Hello Boost](CppHelloBoost.md) is:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/regex.hpp>      int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Here are some detailed examples of [Hello Boost](CppHelloBoost.md),
depending on [IDE](CppIde.md) and operating system:

 

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Cygwin](PicCygwin.png)![Desktop](PicDesktop.png)
    ['Hello Boost' using Qt Creator under
    Cygwin](CppHelloBoostQtCreatorCygwin.md)
-   ![FAIL](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Wine](PicWine.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) ['Hello Boost' using (a Windows version of) Qt
    Creator under Wine under
    Ubuntu](CppHelloBoostQtCreatorWineUbuntu.md)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost' using Qt Creator
    under Ubuntu](CppHelloBoostQtCreatorUbuntu.md)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost' using Qt Creator
    under Lubuntu](CppHelloBoostQtCreatorLubuntu.md)
-   ![OKAY](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    ['Hello Boost' using Qt Creator under Lubuntu, crosscompile to
    Windows](CppHelloBoostQtCreatorLubuntuToWindows.md)
-   ![?FAIL](PicOrange.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![NDS](PicNds.png)![
    ](PicSpacer.png) ['Hello Boost' using Qt Creator under Ubuntu for
    NDS](CppHelloBoostQtCreatorUbuntuNds.md)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost' using Qt Creator
    under Windows](CppHelloBoostQtCreatorWindows.md)

 

 

 

 

 

 

