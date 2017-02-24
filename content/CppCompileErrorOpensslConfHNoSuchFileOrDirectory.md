
 

 

 

 

 

([C++](Cpp.md)) [openssl/conf.h: No such file or directory](CppCompileErrorOpensslConfHNoSuchFileOrDirectory.md)
==================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------------------------------------------
  ` /usr/include/boost/asio/ssl/detail/openssl_context_service.hpp:74: undefined reference to 'SSLv2_method'`
  -------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.2.1

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Boost](CppBoost.md) version: 1.38.0.

 

The following code caused the error:

 

  ------------------------------
  ` #include <openssl/conf.h>`
  ------------------------------

 

 

 

 

 

Solution
--------

 

The openssl folder is not set as an include folder. You can find it
using any file finder (for example, Catfish under Xubuntu, or Windows
Find under Microsoft Windows).

 

In [Qt Creator](CppQtCreator.md), you can set it as an include folder
by editing the project file (for example, MyProject.pro). To start
editing it, double-click it.

 

Add the following line:

 

  ---------------------------------------
  ` INCLUDEPATH += ~/../../usr/include`
  ---------------------------------------

 

Note that in this example the location of the include folder was was
'\~/../../usr/lib'.

 

 

 

 

 

 

