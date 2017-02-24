



 

 

 

 

 

([C++](Cpp.md)) [std::remove\_if](CppRemove_if.md)
====================================================

 

[std::remove\_if](CppRemove_if.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) to removed elements from a
[container](CppContainer.md).

 

[std::remove\_if](CppRemove_if.md) does the following:

-   [std::remove\_if](CppRemove_if.md) overwrites values that must be
    removed by values that must not be removed with preserving
    the order. For example: removing '1' from '01112' generates '02112'
-   [std::remove\_if](CppRemove_if.md) [returns](CppReturn.md) an
    [iterator](CppIterator.md) to where the
    [container](CppContainer.md) would end would these values
    be removed. For example: after removing '1' from '01112', which
    generates '02112', [returns](CppReturn.md) an
    [iterator](CppIterator.md) pointing to the first '1'

 

-   [Download the Qt Creator project
    'CppRemove\_if' (zip)](CppRemove_if.zip)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  int main() {   //Create a std::vector with some values in it   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);    //Check   assert(v.size() == 3);   assert(v[0]==0);   assert(v[1]==1);   assert(v[2]==2);    //Remove the '1'   const std::vector<int>::iterator new_end    = std::remove_if(v.begin(),v.end(),std::bind2nd(std::equal_to<int>(),1));    //Resize the std::vector   v = std::vector<int>(v.begin(),new_end);    //Check   assert(v.size() == 2);   assert(v[0]==0);   assert(v[1]==2); } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



