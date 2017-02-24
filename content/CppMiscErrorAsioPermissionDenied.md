
 

 

 

 

 

([C++](Cpp.md)) ![Wt](PicWt.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [Error (asio): permission denied](CppMiscErrorAsioPermissionDenied.md)
================================================================================================================================================================

 

[Misc error](CppMiscError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------
  ` Error (asio): permission denied`
  ------------------------------------

 

 

 

 

 

[Operating system(s) or programming environment(s)](CppOs.md)
--------------------------------------------------------------

 

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 server
    edition (maverick)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) Console application

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.42
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.7.0 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.4.5
-   ![Wt](PicWt.png) [Wt](CppWt.md): version 3.1.2

 

 

 

 

 

Cause
-----

 

In [deploying a Wt application globally](CppWtDeployGlobal.md) the
['Hello Wt' using Qt Creator under
Ubuntu](CppHelloWtQtCreatorUbuntu.md) executable was run on a
[Ubuntu](CppUbuntu.md) Server edition from command line with the
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

 

 

 

 

 

 

