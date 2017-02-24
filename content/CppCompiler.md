

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Compiler](CppCompiler.htm)
============================================

 

A [compiler](CppCompiler.htm) is a program that translates your
[C++](Cpp.htm) code to object code, after which it is
[linked](CppLink.htm) (by the [linker](CppLinker.htm)) to an executable.

 

A [compiler](CppCompiler.htm) might emit [compile
warnings](CppCompileWarning.htm) and [compile
errors](CppCompileError.htm).

 

Compile cleanly at high warning levels \[1,3\]. Prefer [compile
errors](CppCompileError.htm) to [runtime errors](CppRuntimeError.htm)
\[2\].

 

 

 

 

 

![Qt Creator](PicQtCreator.png) [How to use Qt Creator to compile C code?](CppCompilerC.htm)
--------------------------------------------------------------------------------------------

 

In the [project file](CppQtProjectFile.htm), add the following lines:

 

  ------------------------------------------
  ` QMAKE_CXX = gcc QMAKE_CXXFLAGS = -x c`
  ------------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) How to set the C compiler to the C99 standard in [Qt Creator](CppQtCreator.htm)?
----------------------------------------------------------------------------------------------------------------

 

In the [project file](CppQtProjectFile.htm), add the following lines:

 

  -----------------------------------------------
  ` QMAKE_C = gcc QMAKE_CFLAGS = -x c -std=c99`
  -----------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Codepad online compiler](http://www.codepad.org)
-   [Comeau online compiler](http://www.comeaucomputing.com/tryitout)
-   [IDE one online compiler](http://www.ideone.com)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 1:
    'Compile cleanly at high warning levels'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.
3.  [Linus Torvalds](LinusTorvalds.htm). [Re:\[PATCH\] Don't compare
    unsigned variable for &lt;0
    in sys\_prctl()](http://linux.derkeiler.com/Mailing-Lists/Kernel/2006-11/msg08325.html). 2006-11-28.
    Retrieved on 2010-09-20. 'Friends don't let friends use \[gcc\]
    "-W"'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
