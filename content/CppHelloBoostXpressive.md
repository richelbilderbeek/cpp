



 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png) [Hello Boost.Xpressive](CppHelloXpressive.htm)
======================================================================================

 

[Hello Boost.Xpressive](CppHelloXpressive.htm) is an extension of [Hello
World](CppHelloWorld.htm). Like [Hello World](CppHelloWorld.htm), [Hello
Boost.Xpressive](CppHelloXpressive.htm) is a simple console application.
[Hello Boost.Xpressive](CppHelloXpressive.htm), however, also requires
the [Boost.Xpressive](CppXpressive.htm) [library](CppLibrary.htm).

 

The base code of [Hello Boost.Xpressive](CppHelloXpressive.htm) is:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/xpressive/xpressive.hpp>  ///Example adapted from http://www.boost.org/doc/libs/1_54_0/doc/html/xpressive/user_s_guide.html int main() {   const std::string hello( "hello world!" );    const boost::xpressive::sregex rex = boost::xpressive::sregex::compile( "(\\w+) (\\w+)!" );   boost::xpressive::smatch what;    if( boost::xpressive::regex_match( hello, what, rex ) )   {     std::cout << what[0] << '\n'; // whole match     std::cout << what[1] << '\n'; // first capture     std::cout << what[2] << '\n'; // second capture   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Here are some detailed examples of [Hello
Boost.Xpressive](CppHelloXpressive.htm), depending on [IDE](CppIde.htm)
and operating system:

 

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Cygwin](PicCygwin.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Xpressive' using
    Qt Creator under Cygwin](CppHelloXpressiveQtCreatorCygwin.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Xpressive' using
    Qt Creator under Lubuntu](CppHelloXpressiveQtCreatorLubuntu.htm)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    ['Hello Boost.Xpressive' using Qt Creator under Lubuntu,
    crosscompile to
    Windows](CppHelloXpressiveQtCreatorLubuntuToWindows.htm)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
