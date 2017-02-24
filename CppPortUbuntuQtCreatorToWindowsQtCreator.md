[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [From Ubuntu using Qt Creator to Windows using Qt Creator](CppPortUbuntuQtCreatorToWindowsQtCreator.htm)
=========================================================================================================================

 

It should be possible to [port](CppPort.htm) code from:

-   developed on the Ubuntu operating system
-   developed using the [IDE](CppIde.htm) [Qt Creator](CppQtCreator.htm)

 

to:

 

-   a working Windows executable
-   on the Windows XP operating system
-   recompiled using (the Windows version of) the [IDE](CppIde.htm) [Qt
    Creator](CppQtCreator.htm)

 

 

 

 

 

Test 1: a [Hello World](CppHelloWorld.htm) program
--------------------------------------------------

 

Under Ubtunu, a working Qt Creator project
'CppPortUbuntuQtCreatorToWindowsQtCreator1' was created.

-   [Download
    'CppPortUbuntuQtCreatorToWindowsQtCreator1' (zip)](CppPortUbuntuQtCreatorToWindowsQtCreator1.zip)

 

This project was downloaded on a Windows computer and started with (a
Windows version of) Qt Creator.

 

The compile output was:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` No valid Qt version set. Set one in Tools/Options  Error while building project CppPortUbuntuQtCreatorToWindowsQtCreator1 When executing build step 'QMake' Canceled build.`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

So I [took a look at my Qt version
(png)](CppPortUbuntuQtCreatorToWindowsQtCreator1_1.png) and found out
that the path to qmake was invalid, so I [set it to a valid location
(png)](CppPortUbuntuQtCreatorToWindowsQtCreator1_2.png).

 

Then it worked!

 

 

 

 

 

Test 2: a [Hello Boost](CppHelloBoost.htm) program
--------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
