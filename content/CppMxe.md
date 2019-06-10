# ([C++](Cpp.md)) [MXE](CppMxe.md)

[MXE](CppMxe.md) ('MinGW X-compiling Environment') is one of many ways
to [cross-compile a Qt Creator project to a windows
executable](CppQtCrosscompileToWindows.md) by calling the executable
[i686-pc-mingw32-qmake](CppI686-pc-mingw32-qmake.md).

## [MXE](CppMxe.md) examples

 * ![OKAY](PicGreen.png)![C++98](PicCpp98.png) [MXE example 1: Hello World](CppMxeExample1.md)
 * ![OKAY](PicGreen.png)![C++11](PicCpp11.png) [MXE example 2: Hello World C++0x](CppMxeExample2.md)
 * ![OKAY](PicGreen.png)![Qt](PicQt.png) [MXE example 3: Hello Qt](CppMxeExample3.md)
 * ![OKAY](PicGreen.png)![Boost](PicBoost.png) [MXE example 4: Hello Boost](CppMxeExample4.md)
 * ![FAIL](PicRed.png)![Boost](PicBoost.png) [MXE example 5: Hello Boost.Regex](CppMxeExample5.md)
 * ![FAIL](PicRed.png)![Wt](PicWt.png) [MXE example 6: Hello Wt](CppMxeExample6.md)


## Programs [cross-compiled to a windows executable](CppQtCrosscompileToWindows.md) using [MXE](CppMxe.md)

 * [CityOfThieves](https://github.com/richelbilderbeek/CityOfThieves)
 * [ConnectThree](https://github.com/richelbilderbeek/ConnectThree)
 * [K3OpEenRij](https://github.com/richelbilderbeek/K3OpEenRij)
 * [TicTacToe](https://github.com/richelbilderbeek/TicTacToe)

## [MXE](CppMxe.md) installation errors

### Failed to build package glibc

```
Failed to build package glibc!
```
 
Solution: install libffi-dev:

```
sudo apt-get install libffi-dev
```

### Failed to build package vtk6

```
Failed to build package vtk6!
```

Solution: install libvtk5-dev:

```
sudo apt-get install libvtk5-dev
```

## External links

 * [MinGW cross compiling environment homepage](http://mingw-cross-env.nongnu.org)
