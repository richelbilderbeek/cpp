



 

 

 

 

 

([C++](Cpp.md)) [nullptr](CppNullptr.md)
==========================================

 

[nullptr](CppNullptr.md) is a [keyword](CppKeyword.md) that has
different meanings, depending on the [standard](CppStandard.md) used:

-   ![C++98](PicCpp98.png) [nullptr](CppNullptr.md) in the
    [C++98](Cpp98.md) [standard](CppStandard.md)
-   ![C++11](PicCpp11.png) [nullptr](CppNullptr.md) in the
    [C++11](Cpp11.md) [standard](CppStandard.md)

 

 

 

 

 

![C++98](PicCpp98.png) [nullptr](CppNullptr.md) in the [C++98](Cpp98.md) [standard](CppStandard.md)
------------------------------------------------------------------------------------------------------

 

[nullptr](CppNullptr.md) is not supported in [C++98](Cpp98.md).

 

 

 

 

 

![C++11](PicCpp11.png) [nullptr](CppNullptr.md) in the [C++11](Cpp11.md) [standard](CppStandard.md)
------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project 'CppNullptr' (zip)](CppNullptr.zip)

 

[nullptr](CppNullptr.md) is a [keyword](CppKeyword.md) to indicate an
unitialized [pointer](CppPointer.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   //Create a new p   int * p = new int(3);   assert(*p == 3);    //Get rid of the current p   delete p;   p = nullptr;    //Create a new p   p = new int(4);   assert(*p == 4); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [nullptr](CppNullptr.md) to NULL and 0 \[2\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)
2.  [Scott Meyers](CppScottMeyers.md). [C++ And Beyond 2012 session:
    'Initial thoughts on Effective
    C++11'](http://cppandbeyond.com/2012/04/16/session-topic-initial-thoughts-on-effective-c11). 2012.
    'Prefer nullptr to NULL and 0'

 

 

 

 

 





 



