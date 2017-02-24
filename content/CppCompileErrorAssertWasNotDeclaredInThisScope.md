



 

 

 

 

 

([C++](Cpp.htm)) ['assert' was not declared in this scope](CppCompileErrorAssertWasNotDeclaredInThisScope.htm)
==============================================================================================================

 

![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Compile error](CppCompileError.htm).

 

 

 

 

Enviornment
-----------

 

Operating system(s):

-   ![Windows](PicWindows.png) Windows XP

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 1.3.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) Console application

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): from [GCC](CppGcc.htm),
    shipped with [Qt Creator](CppQt.htm) 2.0.0

 

 

 

 

 

Code
----

 

  -------------------------------------------------------
  ` #include <cassert>  int main() {   assert(1!=2); }`
  -------------------------------------------------------

 

 

 

 

 

Observations
------------

 

On Windows, the location of cassert.h was
'C:\\qt\\2010.02.1\\mingw\\lib\\gcc\\mingw32\\4.4.0\\include\\c++\\cassert.h'.
In cassert.h, assert.h was \#included, but this file seems absent.

 

On Ubuntu, cassert was located at /usr/include/c++/4.4/cassert.h,
assert.h at /usr/include/assert.h. I uploaded it to
[here](CppCompileErrorAssertWasNotDeclaredInThisScope.zip) and copied it
to
C:\\qt\\2010.02.1\\mingw\\lib\\gcc\\mingw32\\4.4.0\\include\\c++\\assert.h',
but this fails.

 

 

 

 

 

Solution
--------

 

 

 

 

 

 

 





 



