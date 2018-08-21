# ([C++](Cpp.md)) [GetCombinations](CppGetCombinations.md)

[GetCombinations](CppGetCombinations.md) is a [code
snippet](CppCodeSnippets.md) to obtain all combinations of a
[std::vector](CppStdVector.md).

[GetPermutations](CppGetPermutations.md) is a [code
snippet](CppCodeSnippets.md) to obtain all permutations of a
[std::vector](CppStdVector.md).

```c++
///Obtain all possible selections of a std::vector, preserving the ordering of its elements
///Examples:
/// {       } -> { {}                                                   }
/// {1      } -> { {}, {1}                                              }
/// {1, 2   } -> { {}, {1}, {2},      {1, 2}                            }
/// {1, 2, 3} -> { {}, {1}, {2}, {3}, {1, 2}, {1, 3}, {2, 3}, {1, 2, 3} }
template <class T>
const std::vector<std::vector<T>> GetCombinations(const std::vector<T>& v)
{
  std::vector<std::vector<T>> result;
  const int sz = boost::numeric_cast<int>(v.size());
  const int n_combinations{1 << sz};

  for (int i=0; i!=n_combinations; ++i)
  {
    std::vector<T> w;
    for (int j=0; j!=sz; ++j)
    {
      const int is_exponent{(1 << j) & i};
      if (is_exponent)
      {
        w.push_back(v[j]);
      }
    }
    result.push_back(w);
  }
  return result;
}

BOOST_AUTO_TEST_CASE(test_cmap_get_combinations_number_of_elements_must_be_correct)
{
  BOOST_CHECK(GetCombinations(std::vector<int>( {         } ) ).size() ==  1);
  BOOST_CHECK(GetCombinations(std::vector<int>( {1        } ) ).size() ==  2);
  BOOST_CHECK(GetCombinations(std::vector<int>( {1, 2      } ) ).size() ==  4);
  BOOST_CHECK(GetCombinations(std::vector<int>( {1, 2, 3    } ) ).size() ==  8);
  BOOST_CHECK(GetCombinations(std::vector<int>( {1, 2, 3, 4  } ) ).size() == 16);
  BOOST_CHECK(GetCombinations(std::vector<int>( {1, 2, 3, 4,5} ) ).size() == 32);
}

BOOST_AUTO_TEST_CASE(test_cmap_get_combinations_elements_must_be_correct)
{
  {
    const std::vector<std::vector<int> > v = GetCombinations(std::vector<int>( { 1 } ) );
    const std::vector<int> expected_0 = {};
    const std::vector<int> expected_1 = {1};
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_0));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_1));
  }
  {
    const std::vector<std::vector<int> > v = GetCombinations(std::vector<int>( { 1, 2 } ) );
    const std::vector<int> expected_0 = {};
    const std::vector<int> expected_1 = {1};
    const std::vector<int> expected_2 = {2};
    const std::vector<int> expected_3 = {1, 2};
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_0));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_1));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_2));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_3));
  }
  {
    const std::vector<std::vector<int> > v = GetCombinations(std::vector<int>( { 1, 2, 3 } ) );
    const std::vector<int> expected_0 = {};
    const std::vector<int> expected_1 = {1};
    const std::vector<int> expected_2 = {2};
    const std::vector<int> expected_3 = {3};
    const std::vector<int> expected_4 = {1, 2};
    const std::vector<int> expected_5 = {1, 3};
    const std::vector<int> expected_6 = {2, 3};
    const std::vector<int> expected_7 = {1, 2, 3};
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_0));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_1));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_2));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_3));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_4));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_5));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_6));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_7));
  }
  {
    const std::vector<std::vector<int> > v = GetCombinations(std::vector<int>( { 1, 2, 3, 4 } ) );
    const std::vector<int> expected_0 = {};
    const std::vector<int> expected_1 = {1};
    const std::vector<int> expected_2 = {2};
    const std::vector<int> expected_3 = {3};
    const std::vector<int> expected_4 = {4};
    const std::vector<int> expected_5 = {1, 2};
    const std::vector<int> expected_6 = {1, 3};
    const std::vector<int> expected_7 = {1, 4};
    const std::vector<int> expected_8 = {2, 3};
    const std::vector<int> expected_9 = {2, 4};
    const std::vector<int> expected_10 = {3, 4};
    const std::vector<int> expected_11 = {1, 2, 3};
    const std::vector<int> expected_12 = {1, 2, 4};
    const std::vector<int> expected_13 = {1, 3, 4};
    const std::vector<int> expected_14 = {2, 3, 4};
    const std::vector<int> expected_15 = {1, 2, 3, 4};
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_0));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_1));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_2));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_3));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_4));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_5));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_6));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_7));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_8));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_9));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_10));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_11));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_12));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_13));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_14));
    BOOST_CHECK(std::count(std::begin(v), std::end(v), expected_15));
  }
}
```