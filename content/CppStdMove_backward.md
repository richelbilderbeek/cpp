



 

 

 

 

 

([C++](Cpp.htm)) [std::move\_backward](CppMove_backward.htm)
============================================================

 

[std::move\_backward](CppMove_backward.htm) is a [C++11](Cpp11.htm)
[STL](CppStl.htm) [algorithm](CppAlgorithm.htm) to
[std::move](CppMove.htm) elements from a [container](CppContainer.htm)
to another [container](CppContainer.htm). This copying is done in
reverse, but the order is preserved.

 

-   [Download the Qt Creator project
    'CppMove\_backward' (zip)](CppMove_backward.zip)

 

 

 

 

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   ///Create a std::vector to modify   std::vector<int> v = { 0,1,2,3,4,5,6,7,8,9 };    ///Create a std::vector to move   const std::vector<int> w = { 66,77,88 };    ///Move w to v, w's last element will be the 1-but-last in v   std::move_backward(w.begin(),w.end(),v.end() - 1);    assert(v == std::vector<int>( { 0,1,2,3,4,5,66,77,88,9 } )); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
