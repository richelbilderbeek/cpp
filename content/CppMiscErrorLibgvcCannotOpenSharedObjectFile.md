
 

 

 

 

 

([C++](Cpp.md)) [libgvc.so.5: cannot open shared object file: No such file or directory](CppMiscErrorLibgvcCannotOpenSharedObjectFile.md)
===========================================================================================================================================

 

[Misc error](CppMiscError.md).

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------
  ` neato: error while loading shared libraries: libgvc.so.5: cannot open shared object file: No such file or directory`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQt.md) 1.3.1

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Boost](CppBoost.md) version: 1.42.0

Additional [libraries](CppLibrary.md): jpeg-8a from the [Independent
JPEG Group](http://www.ijg.org)

 

The following source code was used:

 

  -----------------------------------------------------------------------
  ` #include <cstdlib>  int main() {   std::system("neato out.dot"); }`
  -----------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

I had messed up the graphviz libraries. After removing them all, and
reinstalling them again, everything worked again. I used the following
shell commands:

 

  ---------------------------------------------------------------------------------------------------------------------------------
  ` sudo apt-get remove graphviz sudo apt-get remove graphviz-dev sudo apt-get remove graphviz-doc sudo apt-get install graphviz`
  ---------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

