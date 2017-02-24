



 

 

 

 

 

([C++](Cpp.htm)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable: example 3: Hello Boost](CppQtCrosscompileToWindowsExample3.htm)
================================================================================================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

This is example 3, and one of the solutions of answering the [Qt
FAQ](CppQtFaq.htm) [How to cross-compile a Qt Creator project from
Ubuntu to a windows executable?](CppQtCrosscompileToWindows.htm).

 

It shows how to cross-compile a console application with a Boost
library.

 

 

 

 

 

Downloads
---------

 

-   [Download the Qt Creator project
    'CppQtCrosscompileToWindowsExample3' (zip)](CppQtCrosscompileToWindowsExample3.zip)

 

 

 

 

 

Project information
-------------------

 

The project is set up as [Hello Boost under Qt Creator under
Ubuntu](CppHelloBoostQtCreatorUbuntu.htm).

 

 

 

 

 

Process
-------

 

Because I was trying to solve the [Qt FAQ](CppQtFaq.htm) [How to
cross-compile a Qt Creator project from Ubuntu to a windows
executable?](CppQtCrosscompileToWindows.htm), I
[compiled](CppCompile.htm) the code as follows:

 

  ----------------------------------------------------------
  ` i586-mingw32msvc-g++ -c main.cpp -I/usr/include/boost`
  ----------------------------------------------------------

 

This generates a main.o file. [Linking](CppLink.htm), however, fails due
to many 'undefined reference to \[some [STL](CppStl.htm)
[function](CppFunction.htm)\]' [link errors](CppLinkError.htm), using
any of the lines below:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` i586-mingw32msvc-ld -o MyWin.exe main.o -L/usr/lib -lboost_regex -lstdc++ i586-mingw32msvc-ld -o MyWin.exe main.o -L/usr/lib -lboost_regex -L/usr/lib/gcc/i586-mingw32msvc/4.2.1-sjlj -lstdc++ i586-mingw32msvc-ld -o MyWin.exe main.o -L/usr/lib -lboost_regex -L/usr/lib/gcc/i586-mingw32msvc/4.2.1-sjlj -lgcc -lstdc++  -lsupc++`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



