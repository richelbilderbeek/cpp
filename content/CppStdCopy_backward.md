
 

 

 

 

 

([C++](Cpp.md)) [std::copy\_backward](CppCopy_backward.md)
============================================================

 

[std::copy\_backward](CppCopy_backward.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) to [copy](CppCopy.md) a
[container](CppContainer.md) to the end of another.
[std::copy\_backward](CppCopy_backward.md) does not reverse the order
of the copied [container](CppContainer.md), use
[std::reverse](CppReverse.md)[to do so.]()

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(1);   v.push_back(1);    std::vector<int> w;   w.push_back(0);   w.push_back(0);   w.push_back(0);    //Copy v to w's end   std::copy_backward(v.begin(),v.end(),w.end());    assert(w[0] == 0);   assert(w[1] == 1);   assert(w[2] == 1); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

