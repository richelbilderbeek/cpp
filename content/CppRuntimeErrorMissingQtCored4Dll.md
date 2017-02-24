

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [This application has failed to start because QtCored4.dll was not found](CppRuntimeErrorMissingQtCored4Dll.htm)
=================================================================================================================================

 

[Runtime error](CppRuntimeError.htm).

 

 

 

 

 

Application environment
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

 

There are two options:

1.  Locate QtCored4.dll (probably in 'C:\\Qt\\2010.05\\qt\\bin') and
    copy it to (a path folder, for example) C:\\Windows\\System32
2.  Locate QtCored4.dll (probably in 'C:\\Qt\\2010.05\\qt\\bin') and add
    its location to the system path

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
