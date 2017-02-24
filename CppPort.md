[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Port](CppPort.htm)
====================================

 

There are two meanings for 'port':

-   'porting is the process of adapting software so that an executable
    program can be created for a computing environment that is different
    from the one for which it was originally designed' \[1\]
-   'a port is an application-specific or process-specific software
    construct serving as a communications endpoint' \[2\]

 

 

 

 

 

Porting
-------

 

To port your code from environment (operation system) A to B, there are
multiple ways:

1.  [Cross-compiling](CppCrossCompile.htm)
2.  [Compile](CppCompile.htm) the same code under the same
    [IDE](CppIde.htm) with same cross-platform
    [libraries](CppLibrary.htm) on a computer with environment B
    installed. [Qt Creator is an example of a
    cross-platform](CppQtCreator.htm)[IDE](CppIde.htm). The
    [STL](CppStl.htm), [Boost](CppBoost.htm) and [Qt](CppQt.htm)
    [libraries](CppLibrary.htm) are examples of cross-platform
    [libraries](CppLibrary.htm)
3.  [Compile](CppCompile.htm) the same code under the same
    [IDE](CppIde.htm) with same cross-platform
    [libraries](CppLibrary.htm) on a computer in an environment like A,
    but creating executables for B, like [Cygwin](CppCygwin.htm):
    [Cygwin](CppCygwin.htm) is a UNIX-like environment for Windows, so
    [Cygwin](CppCygwin.htm) can be used to [port](CppPort.htm) UNIX code
    to [Windows](CppWindows.htm)
4.  [Emulate](CppEmulate.htm) the executable from environment A under B.
    For example, [WINE](CppWine.htm) can be used to run
    [Windows](CppWindows.htm) executables under Linux

 

Items \#2 and \#3 are described below.

 

 

 

 

 

![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt Creator](PicQtCreator.png)![any platform](PicTransparent.png) How to [port](CppPort.htm) your code from [Qt Creator](CppQtCreator.htm) under [Ubuntu](CppUbuntu.htm) to another [operating system](CppOs.htm)?
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

-   ![TODO](PicTransparent.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
    Creator](PicQtCreator.png)![Wine](PicWine.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [From Qt Creator under Ubuntu to Qt Creator under
    Wine under Ubuntu](CppPortQtCreatorUbuntuToQtCreatorWineUbuntu.htm)
-   ![?OKAY](PicYellow.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [From Qt Creator under Ubuntu to
    Qt Creator under
    Windows](CppPortQtCreatorUbuntuToQtCreatorWindows.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Wikipedia page about porting](http://en.wikipedia.org/wiki/Porting)
2.  [Wikipedia page about port (noun,
    internet protocol)](http://en.wikipedia.org/wiki/Port_number)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
