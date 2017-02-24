
 

 

 

 

 

([C++](Cpp.md)) [This application has failed to start because QtCored4.dll was not found](CppRuntimeErrorMissingQtCored4Dll.md)
=================================================================================================================================

 

[Runtime error](CppRuntimeError.md).

 

 

 

 

 

Application environment
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

 

There are two options:

1.  Locate QtCored4.dll (probably in 'C:\\Qt\\2010.05\\qt\\bin') and
    copy it to (a path folder, for example) C:\\Windows\\System32
2.  Locate QtCored4.dll (probably in 'C:\\Qt\\2010.05\\qt\\bin') and add
    its location to the system path

 

 

 

 

 

 

