
 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png) [Hello Boost.Xpressive](CppHelloXpressive.md)
======================================================================================

 

[Hello Boost.Xpressive](CppHelloXpressive.md) is an extension of [Hello
World](CppHelloWorld.md). Like [Hello World](CppHelloWorld.md), [Hello
Boost.Xpressive](CppHelloXpressive.md) is a simple console application.
[Hello Boost.Xpressive](CppHelloXpressive.md), however, also requires
the [Boost.Xpressive](CppXpressive.md) [library](CppLibrary.md).

 

The base code of [Hello Boost.Xpressive](CppHelloXpressive.md) is:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/xpressive/xpressive.hpp>  ///Example adapted from http://www.boost.org/doc/libs/1_54_0/doc/html/xpressive/user_s_guide.html int main() {   const std::string hello( "hello world!" );    const boost::xpressive::sregex rex = boost::xpressive::sregex::compile( "(\\w+) (\\w+)!" );   boost::xpressive::smatch what;    if( boost::xpressive::regex_match( hello, what, rex ) )   {     std::cout << what[0] << '\n'; // whole match     std::cout << what[1] << '\n'; // first capture     std::cout << what[2] << '\n'; // second capture   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Here are some detailed examples of [Hello
Boost.Xpressive](CppHelloXpressive.md), depending on [IDE](CppIde.md)
and operating system:

 

-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Cygwin](PicCygwin.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Xpressive' using
    Qt Creator under Cygwin](CppHelloXpressiveQtCreatorCygwin.md)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Xpressive' using
    Qt Creator under Lubuntu](CppHelloXpressiveQtCreatorLubuntu.md)
-   ![OKAY](PicGreen.png)![Qt
    Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    ['Hello Boost.Xpressive' using Qt Creator under Lubuntu,
    crosscompile to
    Windows](CppHelloXpressiveQtCreatorLubuntuToWindows.md)

 

 

 

 

 

 

