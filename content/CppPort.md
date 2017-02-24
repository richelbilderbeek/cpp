



 

 

 

 

 

([C++](Cpp.md)) [Port](CppPort.md)
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

1.  [Cross-compiling](CppCrossCompile.md)
2.  [Compile](CppCompile.md) the same code under the same
    [IDE](CppIde.md) with same cross-platform
    [libraries](CppLibrary.md) on a computer with environment B
    installed. [Qt Creator is an example of a
    cross-platform](CppQtCreator.md)[IDE](CppIde.md). The
    [STL](CppStl.md), [Boost](CppBoost.md) and [Qt](CppQt.md)
    [libraries](CppLibrary.md) are examples of cross-platform
    [libraries](CppLibrary.md)
3.  [Compile](CppCompile.md) the same code under the same
    [IDE](CppIde.md) with same cross-platform
    [libraries](CppLibrary.md) on a computer in an environment like A,
    but creating executables for B, like [Cygwin](CppCygwin.md):
    [Cygwin](CppCygwin.md) is a UNIX-like environment for Windows, so
    [Cygwin](CppCygwin.md) can be used to [port](CppPort.md) UNIX code
    to [Windows](CppWindows.md)
4.  [Emulate](CppEmulate.md) the executable from environment A under B.
    For example, [WINE](CppWine.md) can be used to run
    [Windows](CppWindows.md) executables under Linux

 

Items \#2 and \#3 are described below.

 

 

 

 

 

![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt Creator](PicQtCreator.png)![any platform](PicTransparent.png) How to [port](CppPort.md) your code from [Qt Creator](CppQtCreator.md) under [Ubuntu](CppUbuntu.md) to another [operating system](CppOs.md)?
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

-   ![TODO](PicTransparent.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
    Creator](PicQtCreator.png)![Wine](PicWine.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [From Qt Creator under Ubuntu to Qt Creator under
    Wine under Ubuntu](CppPortQtCreatorUbuntuToQtCreatorWineUbuntu.md)
-   ![?OKAY](PicYellow.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [From Qt Creator under Ubuntu to
    Qt Creator under
    Windows](CppPortQtCreatorUbuntuToQtCreatorWindows.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Wikipedia page about porting](http://en.wikipedia.org/wiki/Porting)
2.  [Wikipedia page about port (noun,
    internet protocol)](http://en.wikipedia.org/wiki/Port_number)

 

 

 

 

 





 



