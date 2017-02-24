



 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [Error (asio): permission denied](CppMiscErrorAsioPermissionDenied.htm)
================================================================================================================================================================

 

[Misc error](CppMiscError.htm).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------
  ` Error (asio): permission denied`
  ------------------------------------

 

 

 

 

 

[Operating system(s) or programming environment(s)](CppOs.htm)
--------------------------------------------------------------

 

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.10 server
    edition (maverick)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) Console application

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.42
-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.7.0 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.4.5
-   ![Wt](PicWt.png) [Wt](CppWt.htm): version 3.1.2

 

 

 

 

 

Cause
-----

 

In [deploying a Wt application globally](CppWtDeployGlobal.htm) the
['Hello Wt' using Qt Creator under
Ubuntu](CppHelloWtQtCreatorUbuntu.htm) executable was run on a
[Ubuntu](CppUbuntu.htm) Server edition from command line with the
command:

 

  ------------------------------------------------------------------------------------
  ` ./CppHelloWtQtCreatorUbuntu --docroot . --http-address 0.0.0.0 --http-port 8080`
  ------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Use sudo:

 

  -----------------------------------------------------------------------------------------
  ` sudo ./CppHelloWtQtCreatorUbuntu --docroot . --http-address 0.0.0.0 --http-port 8080`
  -----------------------------------------------------------------------------------------

 

 

 

 

 





 



