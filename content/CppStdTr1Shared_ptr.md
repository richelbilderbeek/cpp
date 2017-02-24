
 

 

 

 

 

([C++](Cpp.md)) ![C++98](PicCpp98.png)![STL](PicStl.png) [std::tr1::shared\_ptr](CppStdTr1Shared_ptr.md)
==========================================================================================================

 

 

[std::tr1::shared\_ptr](CppStdTr1Shared_ptr.md) is a type of [smart
pointer](CppSmartPointer.md) that can be copied safely and cheap,
without copying the object [pointed](CppPointer.md) to. When the last
[std::tr1::shared\_ptr](CppStdTr1Shared_ptr.md) using an object goes
out of [scope](CppScope.md), it will **[delete](CppDelete.md)** the
object [pointed](CppPointer.md)to.

 

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) Creating a [std::tr1::shared\_ptr](CppStdTr1Shared_ptr.md)
----------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------
  ` #include <tr1/memory>  int main() {   std::tr1::shared_ptr<int> p; }`
  -------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [GCC's page about
    std::shared\_ptr](http://gcc.gnu.org/onlinedocs/libstdc++/manual/shared_ptr.html)
-   [Boost's page about
    boost::shared\_ptr](http://www.boost.org/doc/libs/1_35_0/libs/smart_ptr/shared_ptr.md)

 

 

 

 

 

 

