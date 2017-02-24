

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [IsSorted](CppIsSorted.htm)
============================================

 

[IsSorted](CppIsSorted.htm) is a [check](CppCheck.htm) [code
snippet](CppCodeSnippets.htm) to [check](CppCheck.htm) if a
[std::vector](CppVector.htm) is sorted.

 

There are multiple versions of [IsSorted](CppIsSorted.htm):

 

-   ![C++98](PicCpp98.png) [IsSorted](CppIsSorted.htm) for
    [std::vector](CppVector.htm) using the [C++98](Cpp98.htm)
    [STL](CppStl.htm)
-   ![C++98](PicCpp98.png) [IsSorted](CppIsSorted.htm) for any
    [container](CppContainer.htm) using the [C++98](Cpp98.htm)
    [STL](CppStl.htm)
-   ![C++11](PicCpp11.png) [IsSorted](CppIsSorted.htm) for any
    [container](CppContainer.htm) using the [C++11](Cpp11.htm)
    [STL](CppStl.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [IsSorted](CppIsSorted.htm) for [std::vector](CppVector.htm) using the [C++98](Cpp98.htm) [STL](CppStl.htm)
----------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a std::vector is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSorted(const std::vector<T>& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<T>()) == v.end(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [IsSorted](CppIsSorted.htm) for a [std::vector](CppVector.htm) using the [C++98](Cpp98.htm) [STL](CppStl.htm)
------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a std::vector is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSorted(const std::vector<T>& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<T>()) == v.end(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [IsSorted](CppIsSorted.htm) for any [container](CppContainer.htm) using the [C++98](Cpp98.htm) [STL](CppStl.htm)
---------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl98(const T& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<typename T::value_type>()) == v.end(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [IsSorted](CppIsSorted.htm) for any [container](CppContainer.htm) using the [C++11](Cpp11.htm) [STL](CppStl.htm)
---------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl11(const T& v) {   return std::is_sorted(v.begin(),v.end()); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
