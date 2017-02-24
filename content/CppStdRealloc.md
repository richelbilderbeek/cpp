



 

 

 

 

 

([C++](Cpp.htm)) [std::realloc](CppRealloc.htm)
===============================================

 

[std::realloc](CppRealloc.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) used in C-style memory management:

-   [std::malloc](CppMalloc.htm): allocates memory
-   [std::realloc](CppRealloc.htm): reallocates memory
-   [std::free](CppFree.htm): releases memory

 

Prefer to use the [C++](Cpp.htm) [keyword](CppKeyword.htm)
[new](CppNew.htm) over [std::malloc](CppMalloc.htm), as
[std::malloc](CppMalloc.htm) does not call a
[constructor](CppConstructor.htm). Prefer to use the [C++](Cpp.htm)
[keyword](CppKeyword.htm) [delete](CppDelete.htm) over
[std::free](CppFree.htm), as [std::free](CppFree.htm) does not call a
[destructor](CppDestructor.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const int size = 100;    //Create a dynamically allocated array   int * my_array = static_cast<int*>(std::malloc(size * sizeof(int)));    //Assume the memory for the array could be allocated   assert(my_array);    const int new_size = 200;    //Resize the array   my_array = static_cast<int*>(std::realloc (my_array, new_size * sizeof(int)));    //Assume the memory for the array could be allocated   assert(my_array);    //Free the array   std::free(my_array); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



