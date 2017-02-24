



 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png) [Hello Boost](CppHelloBoost.htm)
========================================================================

 

[Hello Boost](CppHelloBoost.htm) is an extension of [Hello
World](CppHelloWorld.htm). Like [Hello World](CppHelloWorld.htm), [Hello
Boost](CppHelloBoost.htm) is a simple console application. [Hello
Boost](CppHelloBoost.htm), however, also requires the
[Boost](CppBoost.htm) [library](CppLibrary.htm) and to
[link](CppLink.htm) against the [Boost.Regex](CppRegex.htm)
[library](CppLibrary.htm).

 

The base code of [Hello Boost](CppHelloBoost.htm) is:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/regex.hpp>      int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Here are some detailed examples of [Hello Boost](CppHelloBoost.htm),
depending on [IDE](CppIde.htm) and operating system:

 

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Cygwin](PicCygwin.png)![Desktop](PicDesktop.png)
    ['Hello Boost' using Qt Creator under
    Cygwin](CppHelloBoostQtCreatorCygwin.htm)
-   ![FAIL](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Wine](PicWine.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) ['Hello Boost' using (a Windows version of) Qt
    Creator under Wine under
    Ubuntu](CppHelloBoostQtCreatorWineUbuntu.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost' using Qt Creator
    under Ubuntu](CppHelloBoostQtCreatorUbuntu.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost' using Qt Creator
    under Lubuntu](CppHelloBoostQtCreatorLubuntu.htm)
-   ![OKAY](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    ['Hello Boost' using Qt Creator under Lubuntu, crosscompile to
    Windows](CppHelloBoostQtCreatorLubuntuToWindows.htm)
-   ![?FAIL](PicOrange.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![NDS](PicNds.png)![
    ](PicSpacer.png) ['Hello Boost' using Qt Creator under Ubuntu for
    NDS](CppHelloBoostQtCreatorUbuntuNds.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost' using Qt Creator
    under Windows](CppHelloBoostQtCreatorWindows.htm)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
