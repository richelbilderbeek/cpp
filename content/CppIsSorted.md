
 

 

 

 

 

([C++](Cpp.md)) [IsSorted](CppIsSorted.md)
============================================

 

[IsSorted](CppIsSorted.md) is a [check](CppCheck.md) [code
snippet](CppCodeSnippets.md) to [check](CppCheck.md) if a
[std::vector](CppStdVector.md) is sorted.

 

There are multiple versions of [IsSorted](CppIsSorted.md):

 

-   ![C++98](PicCpp98.png) [IsSorted](CppIsSorted.md) for
    [std::vector](CppStdVector.md) using the [C++98](Cpp98.md)
    [STL](CppStl.md)
-   ![C++98](PicCpp98.png) [IsSorted](CppIsSorted.md) for any
    [container](CppContainer.md) using the [C++98](Cpp98.md)
    [STL](CppStl.md)
-   ![C++11](PicCpp11.png) [IsSorted](CppIsSorted.md) for any
    [container](CppContainer.md) using the [C++11](Cpp11.md)
    [STL](CppStl.md)

 

 

 

 

 

![C++98](PicCpp98.png) [IsSorted](CppIsSorted.md) for [std::vector](CppStdVector.md) using the [C++98](Cpp98.md) [STL](CppStl.md)
----------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a std::vector is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSorted(const std::vector<T>& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<T>()) == v.end(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [IsSorted](CppIsSorted.md) for a [std::vector](CppStdVector.md) using the [C++98](Cpp98.md) [STL](CppStl.md)
------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a std::vector is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSorted(const std::vector<T>& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<T>()) == v.end(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [IsSorted](CppIsSorted.md) for any [container](CppContainer.md) using the [C++98](Cpp98.md) [STL](CppStl.md)
---------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl98(const T& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<typename T::value_type>()) == v.end(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [IsSorted](CppIsSorted.md) for any [container](CppContainer.md) using the [C++11](Cpp11.md) [STL](CppStl.md)
---------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl11(const T& v) {   return std::is_sorted(v.begin(),v.end()); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

