# ([C++](Cpp.md)) ![Boost](PicBoost.png) [Hello Boost.Regex](CppHelloBoostRegex.md)

[Hello Boost.Regex](CppHelloBoostRegex.md) is an extension of [Hello
World](CppHelloWorld.md). Like [Hello World](CppHelloWorld.md), [Hello
Boost.Regex](CppHelloBoostRegex.md) is a simple console application.
[Hello Boost.Regex](CppHelloBoostRegex.md), however, also requires the
[Boost](CppBoost.md) [library](CppLibrary.md) and to
[link](CppLink.md) against the [Boost.Regex](CppRegex.md)
[library](CppLibrary.md).

The base code of [Hello Boost.Regex](CppHelloBoostRegex.md) is:

```c++
#include <iostream>
#include <boost/regex.hpp>

int main()
{
  std::string s = "Hello World";
  s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));
  std::cout << s << '\n';
}
```

Here are some detailed examples of [Hello
Boost.Regex](CppHelloBoostRegex.md), depending on [IDE](CppIde.md) and
operating system:

-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png)![Cygwin](PicCygwin.png)![Desktop](PicDesktop.png) ['Hello Boost.Regex' using Qt Creator under Cygwin](CppHelloBoostRegexQtCreatorCygwin.md)
-   ![OKAY](PicRed.png)![Qt5](PicQt5.png)![Qt Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png) ['Hello Boost.Regex' using Qt5 under Qt Creator under Lubuntu, crosscompile to Windows](CppHelloBoostRegexQt5QtCreatorLubuntuToWindows.md)
-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![ ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt Creator under Lubuntu](CppHelloBoostRegexQtCreatorLubuntu.md)
-   ![OKAY](PicRed.png)![Qt Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png) ['Hello Boost.Regex' using Qt Creator under Lubuntu, crosscompile to Windows](CppHelloBoostRegexQtCreatorLubuntuToWindows.md)
-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png)![SliTaz](PicSliTaz.png)![ ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt Creator under SliTaz](CppHelloBoostRegexQtCreatorSliTaz.md)
-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt Creator under Ubuntu](CppHelloBoostRegexQtCreatorUbuntu.md)
-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)![ ](PicSpacer.png)![ ](PicSpacer.png) ['Hello Boost.Regex' using Qt Creator under Windows](CppHelloBoostRegexQtCreatorWindows.md)
