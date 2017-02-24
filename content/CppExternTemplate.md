



 

 

 

 

 

([C++](Cpp.htm)) [extern template](CppExternTemplate.htm)
=========================================================

 

[extern template](CppExternTemplate.htm) is a two-word
[keyword](CppKeyword.htm) that has different meanings, depending on the
[standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [extern template](CppExternTemplate.htm) in
    the [C++98](Cpp98.htm) [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [extern template](CppExternTemplate.htm) in
    the [C++11](Cpp11.htm) [standard](CppStandard.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [extern template](CppExternTemplate.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
---------------------------------------------------------------------------------------------------------------------

 

[extern template](CppExternTemplate.htm) is not supported in
[C++98](Cpp98.htm).

 

 

 

 

 

![C++11](PicCpp11.png) [extern template](CppExternTemplate.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
---------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppExternTemplate' (zip)](CppExternTemplate.zip)

 

[extern template](CppExternTemplate.htm) allows to [forward
declare](CppForwardDeclaration.htm) [template
functions](CppTemplateFunction.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Declaration in header (.h) file extern template <class T> void Cout(const T& t);  //Definition in implementation (.cpp) file template <class T> void Cout(const T& t) {   std::cout << t; }  #include <string>  int main() {   Cout("Hello"); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Technical note: the code shown did not [compile](CppCompile.htm) using
the [G++](CppGpp.htm) 4.4.5 [compiler](CppCompiler.htm), which is
supplied with the [Qt Creator](CppQtCreator.htm) 2.0.0
[IDE](CppIde.htm), but is expected to [compile](CppCompile.htm) already
(?) \[1\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
