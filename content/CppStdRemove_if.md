

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::remove\_if](CppRemove_if.htm)
====================================================

 

[std::remove\_if](CppRemove_if.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to removed elements from a
[container](CppContainer.htm).

 

[std::remove\_if](CppRemove_if.htm) does the following:

-   [std::remove\_if](CppRemove_if.htm) overwrites values that must be
    removed by values that must not be removed with preserving
    the order. For example: removing '1' from '01112' generates '02112'
-   [std::remove\_if](CppRemove_if.htm) [returns](CppReturn.htm) an
    [iterator](CppIterator.htm) to where the
    [container](CppContainer.htm) would end would these values
    be removed. For example: after removing '1' from '01112', which
    generates '02112', [returns](CppReturn.htm) an
    [iterator](CppIterator.htm) pointing to the first '1'

 

-   [Download the Qt Creator project
    'CppRemove\_if' (zip)](CppRemove_if.zip)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  int main() {   //Create a std::vector with some values in it   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);    //Check   assert(v.size() == 3);   assert(v[0]==0);   assert(v[1]==1);   assert(v[2]==2);    //Remove the '1'   const std::vector<int>::iterator new_end    = std::remove_if(v.begin(),v.end(),std::bind2nd(std::equal_to<int>(),1));    //Resize the std::vector   v = std::vector<int>(v.begin(),new_end);    //Check   assert(v.size() == 2);   assert(v[0]==0);   assert(v[1]==2); } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
