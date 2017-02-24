
 

 

 

 

 

([C++](Cpp.md)) [enum class forward declaration](CppEnumClassForwardDeclaration.md)
=====================================================================================

 

[enum class forward declaration](CppEnumClassForwardDeclaration.md) is
a technique that has different meanings, depending on the
[standard](CppStandard.md) used:

-   ![C++98](PicCpp98.png) [enum class forward
    declaration](CppEnumClassForwardDeclaration.md) in the
    [C++98](Cpp98.md) [standard](CppStandard.md)
-   ![C++11](PicCpp11.png) [enum class forward
    declaration](CppEnumClassForwardDeclaration.md) in the
    [C++11](Cpp11.md) [standard](CppStandard.md)

 

 

 

 

 

![C++98](PicCpp98.png) [enum class forward declaration](CppEnumClassForwardDeclaration.md) in the [C++98](Cpp98.md) [standard](CppStandard.md)
-------------------------------------------------------------------------------------------------------------------------------------------------

 

[enum class forward declaration](CppEnumClassForwardDeclaration.md) is
not supported in [C++98](Cpp98.md).

 

 

 

 

 

![C++11](PicCpp11.png) [enum class forward declaration](CppEnumClassForwardDeclaration.md) in the [C++11](Cpp11.md) [standard](CppStandard.md)
-------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppEnumClassForwardDeclaration' (zip)](CppEnumClassForwardDeclaration.zip)

 

An [enum class forward declaration](CppEnumClassForwardDeclaration.md)
is technique to do a [forward declaration](CppForwardDeclaration.md) on
an [enum class](CppEnumClass.md):

 

  --------------------------------------------------------------------------------------------------------------------------------------
  ` //Forward declaration enum class MyEnum;  //Definition enum class MyEnum { a,b,c };  int main() {   const MyEnum x = MyEnum::a; }`
  --------------------------------------------------------------------------------------------------------------------------------------

 

Technical note: the code shown did not [compile](CppCompile.md) using
the [G++](CppGpp.md) 4.4.5 [compiler](CppCompiler.md), which is
supplied with the [Qt Creator](CppQtCreator.md) 2.0.0
[IDE](CppIde.md), but is expected to [compile](CppCompile.md) in
[G++](CppGpp.md) version 4.6 \[1\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)

 

 

 

 

 

 

