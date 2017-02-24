[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::queue](CppQueue.htm)
===========================================

 

[std::queue](CppQueue.htm) is an [STL](CppStl.htm)
[container](CppContainer.htm) for FIFO ('First In, First Out') storage
of elements.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <queue>  int main() {   //Create the FIFO container std::queue   std::queue<int> d;    //Push elements at the back   d.push(1);   d.push(2);   d.push(3);    //Can only access first and last element   assert(d.front() == 1);   assert(d.back()  == 3);    //Pop out first element in line   d.pop();    //Access the new first and last element   assert(d.front() == 2);   assert(d.back()  == 3);    //Pop out the next first element in line   d.pop();    //Access the new first and last element   assert(d.front() == 3);   assert(d.back()  == 3); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
