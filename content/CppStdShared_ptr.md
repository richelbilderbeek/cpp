
 

 

 

 

 

([C++](Cpp.md)) ![C++11](PicCpp11.png)![STL](PicStl.png) [std::shared\_ptr](CppStdShared_ptr.md)
==================================================================================================

 

 

[std::shared\_ptr](CppStdShared_ptr.md) is a type of [smart
pointer](CppSmartPointer.md) that can be copied safely and cheap,
without copying the object [pointed](CppPointer.md) to. When the last
[std::shared\_ptr](CppStdShared_ptr.md) using an object goes out of
[scope](CppScope.md), it will **[delete](CppDelete.md)** the object
[pointed](CppPointer.md)to.

 

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) Creating a [std::shared\_ptr](CppStdShared_ptr.md)
--------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------
  ` #include <memory>  int main() {   //Only works when using C++11   std::shared_ptr<int> p; }`
  ------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer pass-by-reference-to-const to pass-by-value for
    [std::shared\_ptrs](CppStdShared_ptr.md) \[1\]
-   Use [to refer to
    shared](CppStdShared_ptr.md)[objects](CppObject.md) \[2\]
-   Prefer [std::unique\_ptr](CppStdUnique_ptr.md) over
    [std::shared\_ptr](CppStdShared_ptr.md) \[3\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer
    Pass-by-Reference-to-const to Pass-by-Value for std::shared\_ptrs'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.6, page 131: 'Use shared\_ptr
    to refer to shared objects'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.8, page 131: 'Prefer
    unique\_ptr over shared\_ptr'

 

 

 

 

 

External links
--------------

 

-   [GCC's page about
    std::shared\_ptr](http://gcc.gnu.org/onlinedocs/libstdc++/manual/shared_ptr.html)
-   [Boost's page about
    boost::shared\_ptr](http://www.boost.org/doc/libs/1_35_0/libs/smart_ptr/shared_ptr.md)

 

 

 

 

 

 

