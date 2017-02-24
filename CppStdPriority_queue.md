[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::priority\_queue](CppPriority_queue.htm)
==============================================================

 

[std::priority\_queue](CppPriority_queue.htm) is an [STL](CppStl.htm)
[container](CppContainer.htm) that stores elements in a sorted order.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <queue> #include <string>  int main() {   std::priority_queue<int> q;   q.push(3);   q.push(1);   q.push(2);   assert(q.top() == 3);   q.pop();   assert(q.top() == 2);   q.pop();   assert(q.top() == 1); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
