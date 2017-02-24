

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable: example 5: any application, using Qt Creator -spec approach](CppQtCrosscompileToWindowsExample5.htm)
=====================================================================================================================================================================================================

 

This is example 5, and a failed solutions of answering the [Qt
FAQ](CppQtFaq.htm) [How to cross-compile a Qt Creator project from
Ubuntu to a windows executable?](CppQtCrosscompileToWindows.htm), which
follows \[1\].

 

 

 

 

 

 

Downloads
---------

 

 

 

 

 

 

Project information

 

The project is a standard [Hello
Boost](CppHelloBoostQtCreatorUbuntu.htm) program.

 

 

 

 

 

Process
-------

 

I set the [qmake](CppQmake.htm) arguments to '-xplatform win32-g++' and
got the following error:

 

  ---------------------------------
  ` ***Unknown option -xplatform`
  ---------------------------------

 

\[3-5\] do not mention the existence of the '-xplatform' option.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  http://www.linuxjournal.com/content/cross-compiling-qt\
     \
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     What is important is if you want to build Qt static or dynamic, if you want to use platform libs for various features (libjpeg, zlib, libpng, etc). Another important, and not so straight forward, configuration option is the compiler to use. This is controlled by what is known as an mkspec - a make specification.          Qt comes with quite a few prepared mkspecs, but it is not uncommon to tweak them a little. They are all kept in the mkspec subdirectory of Qt, with another subdirectory for embedded targets called qws. The spec consists of the files qmake.conf and qplatformdefs.h. The latter is pretty easy to reuse between Linuxes. It defines a number of structures and functions for the underlaying system. The former, qmake.conf, tells qmake how to compile.          Once having found the file, reading it is pretty straight forward. For instance, the QMAKE_CXX variable should list the C++ compiler to use, QMAKE_CXXFLAGS lists the flags to use when invoking the C++ compiler, and so on.          Having all this in place, simply use the -xplatform to specify the spec to use. This argument uses the mkspec directory as base, so to use the $(QTDIR)/mkspec/qws/linux-arm-g++ specify -xplatform qws/linux-arm-g++.          Finally, adding the arguments -nomake demos and -nomake examples can save quite a lot of time.     `
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     \
2.  http://pepper.troll.no/s60prereleases/doc/qmake-running.html\
     \
      --------------------------------------------------------------------------------------------------------------------------------------------
      `     -spec spec     qmake will use spec as a path to platform and compiler information, and the value of QMAKESPEC will be ignored.     `
      --------------------------------------------------------------------------------------------------------------------------------------------

     \
3.  http://doc.trolltech.com/4.2/qmake-environment-reference.html
4.  http://www.qtcentre.org/wiki/index.php?title=Undocumented\_qmake
5.  http://paulf.free.fr/undocumented\_qmake.html

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
