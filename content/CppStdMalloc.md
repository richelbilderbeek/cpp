
 

 

 

 

 

([C++](Cpp.md)) [std::malloc](CppMalloc.md)
=============================================

 

[std::malloc](CppMalloc.md) is an [STL](CppStl.md)
[function](CppFunction.md) used in C-style memory management:

-   [std::malloc](CppMalloc.md): allocates memory
-   [std::realloc](CppRealloc.md): reallocates memory
-   [std::free](CppFree.md): releases memory

 

Prefer to use the [C++](Cpp.md) [keyword](CppKeyword.md)
[new](CppNew.md) over [std::malloc](CppMalloc.md), as
[std::malloc](CppMalloc.md) does not call a
[constructor](CppConstructor.md). Prefer to use the [C++](Cpp.md)
[keyword](CppKeyword.md) [delete](CppDelete.md) over
[std::free](CppFree.md), as [std::free](CppFree.md) does not call a
[destructor](CppDestructor.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const int size = 100;    //Create a dynamically allocated array   int * my_array = static_cast<int*>(std::malloc(size * sizeof(int)));    //Assume the memory for the array could be allocated   assert(my_array);    const int new_size = 200;    //Resize the array   my_array = static_cast<int*>(std::realloc (my_array, new_size * sizeof(int)));    //Assume the memory for the array could be allocated   assert(my_array);    //Free the array   std::free(my_array); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

