[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [forward declaration](CppForwardDeclaration.htm)
=================================================================

 

A [forward declaration](CppForwardDeclaration.htm) is the
[declaration](CppDeclaration.htm) of a [data type](CppDataType.htm) the
[compiler](CppCompiler.htm) will encounter further on. Because this lets
the [compiler](CppCompiler.htm) check less code, [forward
declarations](CppForwardDeclaration.htm) speed up compilation.

 

Never [\#include](CppInclude.htm) a [header file](CppHeaderFile.htm)
when a [forward declaration](CppForwardDeclaration.htm) will suffice
\[1\].

 

A [forward declaration](CppForwardDeclaration.htm) of a
[class](CppClass.htm) can be used when nothing needs to be known about
that [class](CppClass.htm):

 

-   The [member functions](CppMemberFunction.htm) of the
    [class](CppClass.htm) are not called
-   Only a [reference](CppReference.htm) to the [class](CppClass.htm) is
    used (all references occupy the same space in memory)
-   Only a [pointer](CppPointer.htm) to the [class](CppClass.htm) is
    used (all pointers occupy the same space in memory)

 

For a list of [VCL forward declarations](CppVclForwardDeclaration.htm),
[go to the VCL forward declaration page](CppVclForwardDeclaration.htm).

 

 

 

 

 

Example
-------

 

This example shows the header file of a class before and after using as
much [forward declarations](CppForwardDeclaration.htm) as possible.

 

### Before

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef Unit1H #define Unit1H  #include <iostream> #include "UnitX.h" #include "UnitY.h" #include "UnitZ.h"  struct MyClass {   MyClass(X &x) : m_x(x) {}   X& m_x;   Y* m_y;   Z m_z; };  std::ostream& operator<<(std::ostream& os, const Unit1& y);  #endif`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

### After

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef Unit1H #define Unit1H  #include <iosfwd> struct X; struct Y; #include "UnitZ.h"  struct MyClass {   MyClass(X &x) : m_x(x) {}   X& m_x;   Y* m_y;   Z m_z; };  std::ostream& operator<<(std::ostream& os, const Unit1& y); #endif`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2. Item 26: 'Never \#include a header when a
    forward declaration will suffice'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
