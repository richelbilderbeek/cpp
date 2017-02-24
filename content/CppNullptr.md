[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [nullptr](CppNullptr.htm)
==========================================

 

[nullptr](CppNullptr.htm) is a [keyword](CppKeyword.htm) that has
different meanings, depending on the [standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [nullptr](CppNullptr.htm) in the
    [C++98](Cpp98.htm) [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [nullptr](CppNullptr.htm) in the
    [C++11](Cpp11.htm) [standard](CppStandard.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [nullptr](CppNullptr.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------------

 

[nullptr](CppNullptr.htm) is not supported in [C++98](Cpp98.htm).

 

 

 

 

 

![C++11](PicCpp11.png) [nullptr](CppNullptr.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project 'CppNullptr' (zip)](CppNullptr.zip)

 

[nullptr](CppNullptr.htm) is a [keyword](CppKeyword.htm) to indicate an
unitialized [pointer](CppPointer.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   //Create a new p   int * p = new int(3);   assert(*p == 3);    //Get rid of the current p   delete p;   p = nullptr;    //Create a new p   p = new int(4);   assert(*p == 4); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [nullptr](CppNullptr.htm) to NULL and 0 \[2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)
2.  [Scott Meyers](CppScottMeyers.htm). [C++ And Beyond 2012 session:
    'Initial thoughts on Effective
    C++11'](http://cppandbeyond.com/2012/04/16/session-topic-initial-thoughts-on-effective-c11). 2012.
    'Prefer nullptr to NULL and 0'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
