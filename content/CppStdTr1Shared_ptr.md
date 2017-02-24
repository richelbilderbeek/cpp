

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![C++98](PicCpp98.png)![STL](PicStl.png) [std::tr1::shared\_ptr](CppStdTr1Shared_ptr.htm)
==========================================================================================================

 

 

[std::tr1::shared\_ptr](CppStdTr1Shared_ptr.htm) is a type of [smart
pointer](CppSmartPointer.htm) that can be copied safely and cheap,
without copying the object [pointed](CppPointer.htm) to. When the last
[std::tr1::shared\_ptr](CppStdTr1Shared_ptr.htm) using an object goes
out of [scope](CppScope.htm), it will **[delete](CppDelete.htm)** the
object [pointed](CppPointer.htm)to.

 

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) Creating a [std::tr1::shared\_ptr](CppStdTr1Shared_ptr.htm)
----------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------
  ` #include <tr1/memory>  int main() {   std::tr1::shared_ptr<int> p; }`
  -------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [GCC's page about
    std::shared\_ptr](http://gcc.gnu.org/onlinedocs/libstdc++/manual/shared_ptr.html)
-   [Boost's page about
    boost::shared\_ptr](http://www.boost.org/doc/libs/1_35_0/libs/smart_ptr/shared_ptr.htm)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
