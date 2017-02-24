



 

 

 

 

 

([C++](Cpp.md)) [extern template](CppExternTemplate.md)
=========================================================

 

[extern template](CppExternTemplate.md) is a two-word
[keyword](CppKeyword.md) that has different meanings, depending on the
[standard](CppStandard.md) used:

-   ![C++98](PicCpp98.png) [extern template](CppExternTemplate.md) in
    the [C++98](Cpp98.md) [standard](CppStandard.md)
-   ![C++11](PicCpp11.png) [extern template](CppExternTemplate.md) in
    the [C++11](Cpp11.md) [standard](CppStandard.md)

 

 

 

 

 

![C++98](PicCpp98.png) [extern template](CppExternTemplate.md) in the [C++98](Cpp98.md) [standard](CppStandard.md)
---------------------------------------------------------------------------------------------------------------------

 

[extern template](CppExternTemplate.md) is not supported in
[C++98](Cpp98.md).

 

 

 

 

 

![C++11](PicCpp11.png) [extern template](CppExternTemplate.md) in the [C++11](Cpp11.md) [standard](CppStandard.md)
---------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppExternTemplate' (zip)](CppExternTemplate.zip)

 

[extern template](CppExternTemplate.md) allows to [forward
declare](CppForwardDeclaration.md) [template
functions](CppTemplateFunction.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Declaration in header (.h) file extern template <class T> void Cout(const T& t);  //Definition in implementation (.cpp) file template <class T> void Cout(const T& t) {   std::cout << t; }  #include <string>  int main() {   Cout("Hello"); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Technical note: the code shown did not [compile](CppCompile.md) using
the [G++](CppGpp.md) 4.4.5 [compiler](CppCompiler.md), which is
supplied with the [Qt Creator](CppQtCreator.md) 2.0.0
[IDE](CppIde.md), but is expected to [compile](CppCompile.md) already
(?) \[1\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)

 

 

 

 

 





 



