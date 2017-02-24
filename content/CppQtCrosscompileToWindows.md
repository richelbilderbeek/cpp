
 

 

 

 

 

([C++](Cpp.md)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable?](CppQtCrosscompileToWindows.md)
=================================================================================================================================

 

![Qt
Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)

 

[Qt FAQ](CppQtFaq.md) about how to [cross compile](CppCrossCompile.md)
using [Qt Creator](CppQtCreator.md) under Linux to a Windows
executable.

 

I use the approach of [example 15:
MXE](CppQtCrosscompileToWindowsExample15.md) most. See
[MXE](CppMxe.md) for more information about [MXE](CppMxe.md).

 

 

 

 

Examples
--------

 

These examples can be viewed as approaches. Some approaches fail, two
are successful, some are unexplored or abandoned.

 

-   ![OKAY](PicGreen.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 1: Hello World](CppQtCrosscompileToWindowsExample1.md),
    using i586-mingw32msvc-gcc
-   ![?FAIL](PicOrange.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 2: Hello Qt](CppQtCrosscompileToWindowsExample2.md), using
    i586-mingw32msvc-gcc
-   ![?FAIL](PicOrange.png)![Boost](PicBoost.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 3: Hello Boost](CppQtCrosscompileToWindowsExample3.md),
    using i586-mingw32msvc-gcc
-   ![FAIL](PicRed.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 4: any application, changing
    makefile](CppQtCrosscompileToWindowsExample4.md)
-   ![?FAIL](PicOrange.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 5: any application, using Qt Creator -spec
    approach](CppQtCrosscompileToWindowsExample5.md)
-   ![?FAIL](PicOrange.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 6: any application, using tweaked
    Makefile](CppQtCrosscompileToWindowsExample6.md)
-   ![N/A](PicBlack.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 7: any application, using universal
    binaries](CppQtCrosscompileToWindowsExample7.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 8: any application, port to embedded linux
    adaptation](CppQtCrosscompileToWindowsExample8.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 9: any application, use of the moc
    variable](CppQtCrosscompileToWindowsExample9.md)
-   ![N/A](PicBlack.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 10: any application, use of
    MinGW](CppQtCrosscompileToWindowsExample10.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 11: any application, use of
    GCC](CppQtCrosscompileToWindowsExample11.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 12: any application, use of
    crosstool](CppQtCrosscompileToWindowsExample12.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 13: any application, Bezemer
    way](CppQtCrosscompileToWindowsExample13.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 14: any application, NJH
    approach](CppQtCrosscompileToWindowsExample14.md)
-   ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 15: MXE](CppQtCrosscompileToWindowsExample15.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 16: any application, use of
    autotools](CppQtCrosscompileToWindowsExample16.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 17: any application, use of
    dpkg-cross](CppQtCrosscompileToWindowsExample17.md)
-   ![FAIL](PicRed.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 18: Hello World](CppQtCrosscompileToWindowsExample18.md),
    use of [qmake argument](CppQmakeArgument.md) '-spec win32-g++'
-   ![FAIL](PicRed.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 19: Hello World](CppQtCrosscompileToWindowsExample19.md),
    use of [qmake argument](CppQmakeArgument.md) '-spec cygwin-g++'
-   ![?FAIL](PicOrange.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 20: Hello World](CppQtCrosscompileToWindowsExample20.md),
    changing [project file](CppQtProjectFile.md)
-   ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    Example 21: Hello Boost, changing [project
    file](CppQtProjectFile.md)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    Example 22: Hello Qt, changing [project file](CppQtProjectFile.md)
-   ![?FAIL](PicOrange.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 23: Hello World](CppQtCrosscompileToWindowsExample23.md),
    using [MinGW](CppMinGw.md) build script

 

Instead of [cross compiling](CppCrossCompile.md), code can also be
[ported](CppPort.md) from [Linux](CppLinux.md) to
[Windows](CppWindows.md) using the [tool](Tools.md)
[Cygwin](CppCygwin.md): [Cygwin](CppCygwin.md) offers a
[UNIX](CppUnix.md)-like environment, where compiling leads to
[Windows](CppWindows.md) executables.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Linux Journal article about
    cross-compiling](http://www.linuxjournal.com/content/cross-compiling-qt)
2.  [Cross-compiling for embedded
    Linux](http://labs.qt.nokia.com/2009/09/10/cross-compiling-qtx11)

 

 

 

 

 

 

