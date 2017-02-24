
 

 

 

 

 

([C++](Cpp.md)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable: example 3: Hello Boost](CppQtCrosscompileToWindowsExample3.md)
================================================================================================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

This is example 3, and one of the solutions of answering the [Qt
FAQ](CppQtFaq.md) [How to cross-compile a Qt Creator project from
Ubuntu to a windows executable?](CppQtCrosscompileToWindows.md).

 

It shows how to cross-compile a console application with a Boost
library.

 

 

 

 

 

Downloads
---------

 

-   [Download the Qt Creator project
    'CppQtCrosscompileToWindowsExample3' (zip)](CppQtCrosscompileToWindowsExample3.zip)

 

 

 

 

 

Project information
-------------------

 

The project is set up as [Hello Boost under Qt Creator under
Ubuntu](CppHelloBoostQtCreatorUbuntu.md).

 

 

 

 

 

Process
-------

 

Because I was trying to solve the [Qt FAQ](CppQtFaq.md) [How to
cross-compile a Qt Creator project from Ubuntu to a windows
executable?](CppQtCrosscompileToWindows.md), I
[compiled](CppCompile.md) the code as follows:

 

  ----------------------------------------------------------
  ` i586-mingw32msvc-g++ -c main.cpp -I/usr/include/boost`
  ----------------------------------------------------------

 

This generates a main.o file. [Linking](CppLink.md), however, fails due
to many 'undefined reference to \[some [STL](CppStl.md)
[function](CppFunction.md)\]' [link errors](CppLinkError.md), using
any of the lines below:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` i586-mingw32msvc-ld -o MyWin.exe main.o -L/usr/lib -lboost_regex -lstdc++ i586-mingw32msvc-ld -o MyWin.exe main.o -L/usr/lib -lboost_regex -L/usr/lib/gcc/i586-mingw32msvc/4.2.1-sjlj -lstdc++ i586-mingw32msvc-ld -o MyWin.exe main.o -L/usr/lib -lboost_regex -L/usr/lib/gcc/i586-mingw32msvc/4.2.1-sjlj -lgcc -lstdc++  -lsupc++`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

