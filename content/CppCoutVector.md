# ([C++](Cpp.md)) [CoutVector](CppCoutVector.md)

[std::vector](CppStdVector.md) [code snippet](CppCodeSnippets.md) to
write every element in a [std::vector](CppStdVector.md) to
[std::cout](CppStdCout.md). There is also a more general solution for
every [container](CppContainer.md):
[CoutContainer](CppCoutContainer.md). To be also able to read the
[std::vector](CppStdVector.md), go to [write and read a std::vector
to/from a std::stream](CppVectorToStream.md).

Instead of using a [for](CppFor.md)-loop (See question 15 of [Exercise
#9: No for-loops](CppExerciseNoForLoops.md)), the
[algorithm](CppAlgorithm.md) [std::copy](CppStdCopy.md) can be used to
copy the contents of a [std::vector](CppStdVector.md) to
[std::cout](CppStdCout.md) using the
[std::ostream_iterator](CppStdOstream_iterator.md). Prefer algorithms
over loops [1][2].


```c++
#include <iterator>
#include <iostream>
#include <ostream>
#include <vector>

template <class T>
void CoutVector(const std::vector<T>& v)
{
  std::copy(std::begin(v), std::end(v), std::ostream_iterator<T>(std::cout,"\n"));
}

int main()
{
  //Create a vector
  const std::vector<int> v = {1, 4, 9, 16, 25};

  //Show it on screen using CoutVector
  CoutVector(v);
}
```

## [References](CppReferences.md)

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1 : 'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter 84: 'Prefer algorithm calls to handwritten loops.'

 

 

 

 

 

 

