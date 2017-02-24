



 

 

 

 

 

([C++](Cpp.htm)) [std::unique](CppUnique.htm)
=============================================

 

[std::unique](CppUnique.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to remove duplicates in a sorted
[container](CppContainer.htm). [std::unique](CppUnique.htm) does not
resize the [container](CppContainer.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   //Create a std::vector   std::vector<int> v;   v.push_back(1);   v.push_back(2);   v.push_back(2);   v.push_back(3);   v.push_back(3);   v.push_back(3);    assert(v.size() == 6);    //Unique does not resize the std::vector   std::vector<int>::iterator new_end     = std::unique(v.begin(),v.end());    assert(v.size() == 6);   assert(v[0] == 1);   assert(v[1] == 2);   assert(v[2] == 3);    //Resize the std::vector   v.erase(new_end,v.end());    assert(v.size() == 3);   assert(v[0] == 1);   assert(v[1] == 2);   assert(v[2] == 3); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [cplusplus.com page about
    std::unique](http://www.cplusplus.com/reference/algorithm/unique)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
