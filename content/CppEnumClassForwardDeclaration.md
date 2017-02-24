



 

 

 

 

 

([C++](Cpp.htm)) [enum class forward declaration](CppEnumClassForwardDeclaration.htm)
=====================================================================================

 

[enum class forward declaration](CppEnumClassForwardDeclaration.htm) is
a technique that has different meanings, depending on the
[standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [enum class forward
    declaration](CppEnumClassForwardDeclaration.htm) in the
    [C++98](Cpp98.htm) [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [enum class forward
    declaration](CppEnumClassForwardDeclaration.htm) in the
    [C++11](Cpp11.htm) [standard](CppStandard.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [enum class forward declaration](CppEnumClassForwardDeclaration.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
-------------------------------------------------------------------------------------------------------------------------------------------------

 

[enum class forward declaration](CppEnumClassForwardDeclaration.htm) is
not supported in [C++98](Cpp98.htm).

 

 

 

 

 

![C++11](PicCpp11.png) [enum class forward declaration](CppEnumClassForwardDeclaration.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
-------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppEnumClassForwardDeclaration' (zip)](CppEnumClassForwardDeclaration.zip)

 

An [enum class forward declaration](CppEnumClassForwardDeclaration.htm)
is technique to do a [forward declaration](CppForwardDeclaration.htm) on
an [enum class](CppEnumClass.htm):

 

  --------------------------------------------------------------------------------------------------------------------------------------
  ` //Forward declaration enum class MyEnum;  //Definition enum class MyEnum { a,b,c };  int main() {   const MyEnum x = MyEnum::a; }`
  --------------------------------------------------------------------------------------------------------------------------------------

 

Technical note: the code shown did not [compile](CppCompile.htm) using
the [G++](CppGpp.htm) 4.4.5 [compiler](CppCompiler.htm), which is
supplied with the [Qt Creator](CppQtCreator.htm) 2.0.0
[IDE](CppIde.htm), but is expected to [compile](CppCompile.htm) in
[G++](CppGpp.htm) version 4.6 \[1\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)

 

 

 

 

 





 



