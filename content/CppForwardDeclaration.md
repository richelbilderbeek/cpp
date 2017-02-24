



 

 

 

 

 

([C++](Cpp.md)) [forward declaration](CppForwardDeclaration.md)
=================================================================

 

A [forward declaration](CppForwardDeclaration.md) is the
[declaration](CppDeclaration.md) of a [data type](CppDataType.md) the
[compiler](CppCompiler.md) will encounter further on. Because this lets
the [compiler](CppCompiler.md) check less code, [forward
declarations](CppForwardDeclaration.md) speed up compilation.

 

Never [\#include](CppInclude.md) a [header file](CppHeaderFile.md)
when a [forward declaration](CppForwardDeclaration.md) will suffice
\[1\].

 

A [forward declaration](CppForwardDeclaration.md) of a
[class](CppClass.md) can be used when nothing needs to be known about
that [class](CppClass.md):

 

-   The [member functions](CppMemberFunction.md) of the
    [class](CppClass.md) are not called
-   Only a [reference](CppReference.md) to the [class](CppClass.md) is
    used (all references occupy the same space in memory)
-   Only a [pointer](CppPointer.md) to the [class](CppClass.md) is
    used (all pointers occupy the same space in memory)

 

For a list of [VCL forward declarations](CppVclForwardDeclaration.md),
[go to the VCL forward declaration page](CppVclForwardDeclaration.md).

 

 

 

 

 

Example
-------

 

This example shows the header file of a class before and after using as
much [forward declarations](CppForwardDeclaration.md) as possible.

 

### Before

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef Unit1H #define Unit1H  #include <iostream> #include "UnitX.h" #include "UnitY.h" #include "UnitZ.h"  struct MyClass {   MyClass(X &x) : m_x(x) {}   X& m_x;   Y* m_y;   Z m_z; };  std::ostream& operator<<(std::ostream& os, const Unit1& y);  #endif`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

### After

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef Unit1H #define Unit1H  #include <iosfwd> struct X; struct Y; #include "UnitZ.h"  struct MyClass {   MyClass(X &x) : m_x(x) {}   X& m_x;   Y* m_y;   Z m_z; };  std::ostream& operator<<(std::ostream& os, const Unit1& y); #endif`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 26: 'Never \#include a header when a
    forward declaration will suffice'

 

 

 

 

 





 



