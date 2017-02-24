



 

 

 

 

 

([C++](Cpp.htm)) [make error: colon expected](CppMakeErrorColonExpected.htm)
============================================================================

 

[make error](CppMakeError.htm) occurred during [Installing CLN under
Cygwin (under Windows)](CppClnInstallCygwin.htm) and [Installing GMP
under Cygwin (under Windows)](CppGmpInstallCygwin.htm).

 

The error looks like this:

  -----------------------------------------------------------------------------------------------------------------------------------------------------------
  ` MAKE Version 5.2  Copyright (c) 1987, 2000 Borland Error makefile 981: Colon expected Error makefile 1010: Colon expected *** 2 errors during make ***`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------

 

The problem is: one needs to use GNU make, which is installed from the
Cygwin installer. Start the Cygwin installer (or download it again) to
additionaly select the package of GNU make to install.

 

Restart Cygwin. Typing 'make -v' should yield something like the
following:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` GNU Make 3.81 Copyright (C) 2006  Free Software Foundation, Inc. This is free software; see the source for copying conditions. There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  This program built for i686-pc-cygwin`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Under Ubuntu, using 'make -v', the following pops up:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` richel@richel1-desktop:~$ make -v GNU Make 3.81 Copyright (C) 2006  Free Software Foundation, Inc. This is free software; see the source for copying conditions. There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  This program built for i486-pc-linux-gnu`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



