# ([C++](Cpp.md)) [Copy_if](CppCopy_if.md)

[std::copy_if](CppStdCopy_if.md) was dropped from [C++98](Cpp98.md)'s 
[STL](CppStl.md) by accident and is added been added in [C++11](Cpp11.md).

Below is a possible [C++98](Cpp98.md) implementation:

```c++
template<typename In, typename Out, typename Pred>
Out copy_if(In first, In last, Out res, Pred Pr)
{
  while (first != last) 
  {
    if (Pr(*first))
      *res++ = *first;
    ++first;
  }
  return res;
}
```