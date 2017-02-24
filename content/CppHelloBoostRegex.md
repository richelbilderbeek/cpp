



 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png) [Hello Boost.Regex](CppHelloBoostRegex.htm)
===================================================================================

 

[Hello Boost.Regex](CppHelloBoostRegex.htm) is an extension of [Hello
World](CppHelloWorld.htm). Like [Hello World](CppHelloWorld.htm), [Hello
Boost.Regex](CppHelloBoostRegex.htm) is a simple console application.
[Hello Boost.Regex](CppHelloBoostRegex.htm), however, also requires the
[Boost](CppBoost.htm) [library](CppLibrary.htm) and to
[link](CppLink.htm) against the [Boost.Regex](CppRegex.htm)
[library](CppLibrary.htm).

 

The base code of [Hello Boost.Regex](CppHelloBoostRegex.htm) is:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/regex.hpp>      int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Here are some detailed examples of [Hello
Boost.Regex](CppHelloBoostRegex.htm), depending on [IDE](CppIde.htm) and
operating system:

 

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Cygwin](PicCygwin.png)![Desktop](PicDesktop.png)
    ['Hello Boost.Regex' using Qt Creator under
    Cygwin](CppHelloBoostRegexQtCreatorCygwin.htm)
-   ![OKAY](PicRed.png)![Qt5](PicQt5.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    ['Hello Boost.Regex' using Qt5 under Qt Creator under Lubuntu,
    crosscompile to
    Windows](CppHelloBoostRegexQt5QtCreatorLubuntuToWindows.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt
    Creator under Lubuntu](CppHelloBoostRegexQtCreatorLubuntu.htm)
-   ![OKAY](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    ['Hello Boost.Regex' using Qt Creator under Lubuntu, crosscompile to
    Windows](CppHelloBoostRegexQtCreatorLubuntuToWindows.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![SliTaz](PicSliTaz.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt
    Creator under SliTaz](CppHelloBoostRegexQtCreatorSliTaz.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt
    Creator under Ubuntu](CppHelloBoostRegexQtCreatorUbuntu.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt
    Creator under Windows](CppHelloBoostRegexQtCreatorWindows.htm)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
