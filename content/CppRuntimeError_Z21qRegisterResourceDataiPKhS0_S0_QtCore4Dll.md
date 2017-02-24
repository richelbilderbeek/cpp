

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [The procedure entry point \_Z21qRegisterResourceDataiPKhS0\_S0\_ could not be located in the dynamic link library QtCore4.dll](CppRuntimeError_Z21qRegisterResourceDataiPKhS0_S0_QtCore4Dll.htm)
==================================================================================================================================================================================================================

 

![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)

 

[Runtime error](CppRuntimeError.htm).

 

 

 

 

 

Application information
-----------------------

 

Operating system(s):

-   ![Windows](PicWindows.png) Windows XP

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) Console application

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

Solution
--------

 

Follow the solution offered by \[1\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Qt Centre
    forum](http://www.qtcentre.org/threads/31310-Missing-entry-point-in-QTCore4.dll?p=146062),
    answer from fxrb:\
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     I copied the wrong dll. The bad thing is that both dlls have the same version number. Here what I found on my system:          The wrong one is located at c:/qt/2010.02.1/bin and has a size of 2'151'424 bytes and was create February 17. 2010     The correct one is located at c:/qt/2010.02.1/qt/bin and has a size of 2'415'104 bytes and was create February 18. 2010          A 'dumpbin QtCore4.dll /exports' also shows that the missing symbol is only exported from the 'correct' dll.     `
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
