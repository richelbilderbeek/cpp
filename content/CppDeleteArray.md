



 

 

 

 

 

([C++](Cpp.htm)) [delete\[\]](CppDeleteArray.htm)
=================================================

 

[delete\[\]](CppDeleteArray.htm) (pronounced as 'delete array') is the
version of [delete](CppDelete.htm) to [delete](CppDelete.htm)
[arrays](CppArray.htm). In the example below, calling
[delete](CppDelete.htm) would only [delete](CppDelete.htm) the first
element of the [arrays](CppArray.htm), where
[delete\[\]](CppDeleteArray.htm) really [deletes](CppDelete.htm) the
[arrays](CppArray.htm).

 

  --------------------------------------------------------------------------------------------------------------------
  ` int main() {   const int sz = 3;   int * const array = new int[sz];   //Do stuff with array   delete[] array; }`
  --------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
