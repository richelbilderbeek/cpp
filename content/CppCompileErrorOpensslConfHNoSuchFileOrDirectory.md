

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [openssl/conf.h: No such file or directory](CppCompileErrorOpensslConfHNoSuchFileOrDirectory.htm)
==================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------------
  ` /usr/include/boost/asio/ssl/detail/openssl_context_service.hpp:74: undefined reference to 'SSLv2_method'`
  -------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.2.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Boost](CppBoost.htm) version: 1.38.0.

 

The following code caused the error:

 

  ------------------------------
  ` #include <openssl/conf.h>`
  ------------------------------

 

 

 

 

 

Solution
--------

 

The openssl folder is not set as an include folder. You can find it
using any file finder (for example, Catfish under Xubuntu, or Windows
Find under Microsoft Windows).

 

In [Qt Creator](CppQtCreator.htm), you can set it as an include folder
by editing the project file (for example, MyProject.pro). To start
editing it, double-click it.

 

Add the following line:

 

  ---------------------------------------
  ` INCLUDEPATH += ~/../../usr/include`
  ---------------------------------------

 

Note that in this example the location of the include folder was was
'\~/../../usr/lib'.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
