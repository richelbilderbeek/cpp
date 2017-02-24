



 

 

 

 

 

([C++](Cpp.htm)) [initializer-list](CppInitializerList.htm)
===========================================================

 

An [initializer-list](CppInitializerList.htm) is on option that can be
used, depending on the [standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [initializer list](CppInitializerList.htm) in
    the [C++98](Cpp98.htm) [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [initializer list](CppInitializerList.htm) in
    the [C++11](Cpp11.htm) [standard](CppStandard.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [initializer list](CppInitializerList.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
-----------------------------------------------------------------------------------------------------------------------

 

[initializer list](CppInitializerList.htm) is not supported in
[C++98](Cpp98.htm).

 

  -------------------------------------------------------------------------------------------
  ` #include <vector>  int main() {   std::vector<int> v = {1,2,3,4,5}; //Fails in C++98 }`
  -------------------------------------------------------------------------------------------

 

[Compiler](CppCompiler.htm) output:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:5: error: in C++98 'v' must be initialized by constructor, not by '{...}' /MyFolder/main.cpp:5: warning: extended initializer lists only available with -std=c++0x or -std=gnu++0x /MyFolder/main.cpp:5: error: deducing from brace-enclosed initializer list requires #include <initializer_list> /MyFolder/main.cpp:5: error: no matching function for call to 'std::vector<int, std::allocator<int> >::vector(<brace-enclosed initializer list>)' /usr/include/c++/4.4/bits/stl_vector.h:241: candidates are: std::vector<_Tp, _Alloc>::vector(const std::vector<_Tp, _Alloc>&) [with _Tp = int, _Alloc = std::allocator<int>] /usr/include/c++/4.4/bits/stl_vector.h:207:                 std::vector<_Tp, _Alloc>::vector() [with _Tp = int, _Alloc = std::allocator<int>]`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [initializer list](CppInitializerList.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
-----------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppInitializerList' (zip)](CppInitializerList.zip)

 

An [initializer list](CppInitializerList.htm) is an additional
initialization option:

 

  --------------------------------------------------------------------------
  ` #include <vector>  int main() {   std::vector<int> v = {1,2,3,4,5}; }`
  --------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   If a [class](CppClass.htm) is a [container](CppContainer.htm), give
    it an [initializer-list](CppInitializerList.htm)
    [constructor](CppConstructor.htm) \[1\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[8\] If a class is a container, give it an
    initializer-list constructor'

 

 

 

 

 





 



