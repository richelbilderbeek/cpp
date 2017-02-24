



 

 

 

 

 

([C++](Cpp.htm)) [std::copy\_backward](CppCopy_backward.htm)
============================================================

 

[std::copy\_backward](CppCopy_backward.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to [copy](CppCopy.htm) a
[container](CppContainer.htm) to the end of another.
[std::copy\_backward](CppCopy_backward.htm) does not reverse the order
of the copied [container](CppContainer.htm), use
[std::reverse](CppReverse.htm)[to do so.]()

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(1);   v.push_back(1);    std::vector<int> w;   w.push_back(0);   w.push_back(0);   w.push_back(0);    //Copy v to w's end   std::copy_backward(v.begin(),v.end(),w.end());    assert(w[0] == 0);   assert(w[1] == 1);   assert(w[2] == 1); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



