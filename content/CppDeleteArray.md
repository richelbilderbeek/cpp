



 

 

 

 

 

([C++](Cpp.md)) [delete\[\]](CppDeleteArray.md)
=================================================

 

[delete\[\]](CppDeleteArray.md) (pronounced as 'delete array') is the
version of [delete](CppDelete.md) to [delete](CppDelete.md)
[arrays](CppArray.md). In the example below, calling
[delete](CppDelete.md) would only [delete](CppDelete.md) the first
element of the [arrays](CppArray.md), where
[delete\[\]](CppDeleteArray.md) really [deletes](CppDelete.md) the
[arrays](CppArray.md).

 

  --------------------------------------------------------------------------------------------------------------------
  ` int main() {   const int sz = 3;   int * const array = new int[sz];   //Do stuff with array   delete[] array; }`
  --------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



