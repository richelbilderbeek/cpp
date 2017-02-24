[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable: example 4: any application, changing makefile](CppQtCrosscompileToWindowsExample4.htm)
=======================================================================================================================================================================================

 

This is example 4, and a failed attempt of answering the [Qt
FAQ](CppQtFaq.htm) [How to cross-compile a Qt Creator project from
Ubuntu to a windows executable?](CppQtCrosscompileToWindows.htm).

 

 

 

 

 

Project information
-------------------

 

The project is a standard [Hello
World](CppHelloWorldQtCreatorUbuntu.htm) program.

 

 

 

 

 

Process
-------

 

Running the following command in the same folder as the .pro file,
generates some makefiles:

 

  ------------------------------
  ` qmake-qt4 -spec win32-g++`
  ------------------------------

 

As \[1\] indicated, I also typed the following:

 

  ------------------------------------------------
  ` QMAKESPEC=win32-g++ qmake-qt4 QT_LIBINFIX=4`
  ------------------------------------------------

And then I typed:

 

  ---------
  ` make`
  ---------

 

Screen output:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  make -f Makefile.Release make[1]: Entering directory `/home/richel/qtsdk-2010.04/bin/Projects/Website/CppQtCrosscompileToWindowsExample4' /usr/bin/uic.exe dialog.ui -o ui_dialog.h make[1]: /usr/bin/uic.exe: Command not found make[1]: *** [ui_dialog.h] Error 127 make[1]: Leaving directory `/home/richel/qtsdk-2010.04/bin/Projects/Website/CppQtCrosscompileToWindowsExample4' make: *** [release] Error 2 ``
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[\[ui\_dialog.h\] Error 127](CppMiscErrorUi_dialogHerror127.htm) is a
known (yet unsolved) error.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

 

 

 

 

### \[1\] http://lukast.mediablog.sk/log/?p=155

 

  -------------------------------------------------------------------
  ` This approach seems to result in an invalid Windows executable`
  -------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Cross-compile Qt4 app for Windows on Fedora 11  I made school project in Qt4.5.3 and my teacher does not use Linux so I decided to try to cross-compile the project for her from Fedora 11. Here are the steps. Let’s hope it is useful for you too.  First you have to install mingw compiler, so I did something crazy like:  yum install mingw32*  That grabs everything related to mingw (installs Qt4 libs, compiler, qt-qmake specs files) on Fedora 11. Many unrelated libs are installed too (Gtk, …) – you have been warned.  Then you create Qt4 project file if you don’t have one already  qmake-qt4 -project  Pass the qmake specification:  qmake-qt4 -spec fedora-win32-cross  Run this so that QtGui is found  QMAKESPEC=fedora-win32-cross qmake-qt4 QT_LIBINFIX=4  Compile!  make  Then I found exe file in release/ directory. I wanted to distribute it so I needed to distribute some dlls too. To find out I run  i686-pc-mingw32-objdump -p prog.exe | grep dll  It lists all used dlls.I copied them from Fedora box to the same folder as the binary and I was done!  I used locate to find them (found in /usr/i686-pc-mingw32/sys-root/mingw/bin/). QtCore4.dll, QtGui4.dll and libgcc_s_sjlj-1.dll was needed for me. I did not copied KERNEL32.dll, msvcrt.dll etc. Windows users usually have those files.  Then it worked for me. The app looked bad but worked as supposed to. In Wine it had some bug, but it worked on Windows XP.  Thanks for help to the fedora-mingw team at #fedora-mingw on freenode IRC ;) https://fedoraproject.org/wiki/MinGW/Tips – related wiki page`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
