# ([C++](Cpp.md)) [CopyUnique](CppCopyUnique.md)

```c++
#include <algorithm>
#include <cassert>
#include <set>
#include <vector>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#pragma GCC diagnostic ignored "-Wunused-local-typedefs"
#include <boost/circular_buffer.hpp>
#pragma GCC diagnostic pop

///Copies
template<class T>
std::set<T> CopyUnique(const std::vector<T>& v)
{
  const std::size_t sz = v.size();
  std::set<T> result;
  if (sz == 0) { return result; }
  if (sz == 1) { result.insert(v[0]); return result; }
  if (sz == 2)
  {
    if (v[0] != v[1])
    {
      result.insert(v[0]);
      result.insert(v[1]);
    }
    return result;
  }

  boost::circular_buffer<T> w(v.begin(),v.end());
  std::sort(w.begin(),w.end());

  for (std::size_t cnt=0; cnt!=sz; ++cnt)
  {
    auto i = w.begin();
    auto j = i; ++j;
    auto k = j; ++k;
    if (*i != *j && *j != *k) { result.insert(*j); }
    w.rotate( w.begin() + 1);
  }

  return result;
}

int main()
{
  //Test CopyUnique
  {
    const std::vector<int> input { };
    const std::set<int> expected { };
    assert(CopyUnique(input) == expected);
  }
  {
    const std::vector<int> input { 1 };
    const std::set<int> expected { 1 };
    assert(CopyUnique(input) == expected);
  }
  {
    const std::vector<int> input { 2,1 };
    const std::set<int> expected { 1,2 };
    assert(CopyUnique(input) == expected);
  }
  {
    const std::vector<int> input { 3,2,1 };
    const std::set<int> expected { 1,2,3 };
    assert(CopyUnique(input) == expected);
  }
  {
    const std::vector<int> input { 9,8,7,6,5,4,3,2,1,9,7,5,3,1 };
    const std::set<int> expected { 2,4,6,8 };
    assert(CopyUnique(input) == expected);
  }
  {
    const std::vector<int> input { 9,8,7,6,5,4,3,2,1,9,7,5,3,1 };
    const std::set<int> expected { 8,6,4,2 };
    assert(CopyUnique(input) == expected);
  }
}
```
