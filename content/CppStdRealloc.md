
 

 

 

 

 

([C++](Cpp.md)) [std::realloc](CppStdRealloc.md)
===============================================

 

[std::realloc](CppStdRealloc.md) is an [STL](CppStl.md)
[function](CppFunction.md) used in C-style memory management:

-   [std::malloc](CppStdMalloc.md): allocates memory
-   [std::realloc](CppStdRealloc.md): reallocates memory
-   [std::free](CppStdFree.md): releases memory

 

Prefer to use the [C++](Cpp.md) [keyword](CppKeyword.md)
[new](CppNew.md) over [std::malloc](CppStdMalloc.md), as
[std::malloc](CppStdMalloc.md) does not call a
[constructor](CppConstructor.md). Prefer to use the [C++](Cpp.md)
[keyword](CppKeyword.md) [delete](CppDelete.md) over
[std::free](CppStdFree.md), as [std::free](CppStdFree.md) does not call a
[destructor](CppDestructor.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const int size = 100;    //Create a dynamically allocated array   int * my_array = static_cast<int*>(std::malloc(size * sizeof(int)));    //Assume the memory for the array could be allocated   assert(my_array);    const int new_size = 200;    //Resize the array   my_array = static_cast<int*>(std::realloc (my_array, new_size * sizeof(int)));    //Assume the memory for the array could be allocated   assert(my_array);    //Free the array   std::free(my_array); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

