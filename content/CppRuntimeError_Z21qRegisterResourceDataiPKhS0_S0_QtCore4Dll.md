



 

 

 

 

 

([C++](Cpp.md)) [The procedure entry point \_Z21qRegisterResourceDataiPKhS0\_S0\_ could not be located in the dynamic link library QtCore4.dll](CppRuntimeError_Z21qRegisterResourceDataiPKhS0_S0_QtCore4Dll.md)
==================================================================================================================================================================================================================

 

![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)

 

[Runtime error](CppRuntimeError.md).

 

 

 

 

 

Application information
-----------------------

 

Operating system(s):

-   ![Windows](PicWindows.png) Windows XP

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) Console application

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

Solution
--------

 

Follow the solution offered by \[1\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Qt Centre
    forum](http://www.qtcentre.org/threads/31310-Missing-entry-point-in-QTCore4.dll?p=146062),
    answer from fxrb:\
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     I copied the wrong dll. The bad thing is that both dlls have the same version number. Here what I found on my system:          The wrong one is located at c:/qt/2010.02.1/bin and has a size of 2'151'424 bytes and was create February 17. 2010     The correct one is located at c:/qt/2010.02.1/qt/bin and has a size of 2'415'104 bytes and was create February 18. 2010          A 'dumpbin QtCore4.dll /exports' also shows that the missing symbol is only exported from the 'correct' dll.     `
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



