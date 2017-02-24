

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable?](CppQtCrosscompileToWindows.htm)
=================================================================================================================================

 

![Qt
Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)

 

[Qt FAQ](CppQtFaq.htm) about how to [cross compile](CppCrossCompile.htm)
using [Qt Creator](CppQtCreator.htm) under Linux to a Windows
executable.

 

I use the approach of [example 15:
MXE](CppQtCrosscompileToWindowsExample15.htm) most. See
[MXE](CppMxe.htm) for more information about [MXE](CppMxe.htm).

 

 

 

 

Examples
--------

 

These examples can be viewed as approaches. Some approaches fail, two
are successful, some are unexplored or abandoned.

 

-   ![OKAY](PicGreen.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 1: Hello World](CppQtCrosscompileToWindowsExample1.htm),
    using i586-mingw32msvc-gcc
-   ![?FAIL](PicOrange.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 2: Hello Qt](CppQtCrosscompileToWindowsExample2.htm), using
    i586-mingw32msvc-gcc
-   ![?FAIL](PicOrange.png)![Boost](PicBoost.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 3: Hello Boost](CppQtCrosscompileToWindowsExample3.htm),
    using i586-mingw32msvc-gcc
-   ![FAIL](PicRed.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 4: any application, changing
    makefile](CppQtCrosscompileToWindowsExample4.htm)
-   ![?FAIL](PicOrange.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 5: any application, using Qt Creator -spec
    approach](CppQtCrosscompileToWindowsExample5.htm)
-   ![?FAIL](PicOrange.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 6: any application, using tweaked
    Makefile](CppQtCrosscompileToWindowsExample6.htm)
-   ![N/A](PicBlack.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 7: any application, using universal
    binaries](CppQtCrosscompileToWindowsExample7.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 8: any application, port to embedded linux
    adaptation](CppQtCrosscompileToWindowsExample8.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 9: any application, use of the moc
    variable](CppQtCrosscompileToWindowsExample9.htm)
-   ![N/A](PicBlack.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 10: any application, use of
    MinGW](CppQtCrosscompileToWindowsExample10.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 11: any application, use of
    GCC](CppQtCrosscompileToWindowsExample11.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 12: any application, use of
    crosstool](CppQtCrosscompileToWindowsExample12.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 13: any application, Bezemer
    way](CppQtCrosscompileToWindowsExample13.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 14: any application, NJH
    approach](CppQtCrosscompileToWindowsExample14.htm)
-   ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 15: MXE](CppQtCrosscompileToWindowsExample15.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 16: any application, use of
    autotools](CppQtCrosscompileToWindowsExample16.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 17: any application, use of
    dpkg-cross](CppQtCrosscompileToWindowsExample17.htm)
-   ![FAIL](PicRed.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 18: Hello World](CppQtCrosscompileToWindowsExample18.htm),
    use of [qmake argument](CppQmakeArgument.htm) '-spec win32-g++'
-   ![FAIL](PicRed.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 19: Hello World](CppQtCrosscompileToWindowsExample19.htm),
    use of [qmake argument](CppQmakeArgument.htm) '-spec cygwin-g++'
-   ![?FAIL](PicOrange.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 20: Hello World](CppQtCrosscompileToWindowsExample20.htm),
    changing [project file](CppQtProjectFile.htm)
-   ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    Example 21: Hello Boost, changing [project
    file](CppQtProjectFile.htm)
-   ![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    Example 22: Hello Qt, changing [project file](CppQtProjectFile.htm)
-   ![?FAIL](PicOrange.png)![STL](PicStl.png)![Qt
    Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Windows](PicWindows.png)
    [Example 23: Hello World](CppQtCrosscompileToWindowsExample23.htm),
    using [MinGW](CppMinGw.htm) build script

 

Instead of [cross compiling](CppCrossCompile.htm), code can also be
[ported](CppPort.htm) from [Linux](CppLinux.htm) to
[Windows](CppWindows.htm) using the [tool](Tools.htm)
[Cygwin](CppCygwin.htm): [Cygwin](CppCygwin.htm) offers a
[UNIX](CppUnix.htm)-like environment, where compiling leads to
[Windows](CppWindows.htm) executables.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Linux Journal article about
    cross-compiling](http://www.linuxjournal.com/content/cross-compiling-qt)
2.  [Cross-compiling for embedded
    Linux](http://labs.qt.nokia.com/2009/09/10/cross-compiling-qtx11)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
