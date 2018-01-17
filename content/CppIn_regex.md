# ([C++](Cpp.md)) [In_regex](CppIn_regex.md)

[In_regex](CppIn_regex.md) is a [predicate](CppPredicate.md) that
determines if a a [character](CppChar.md) matches a regular expression.

```c++
#include <functional>
#include <iterator>
#include <iostream>
#include <boost/lexical_cast.hpp>
#include <boost/regex.hpp>

///In_regex is a predicate that determines if a character
///matches a regular expression.
struct In_regex : public std::unary_function<char, bool>
{
  In_regex(const std::string& regex)
    : m_regex(regex)
  {

  }
  bool operator()(const char c) const
  {
    return boost::regex_match(
      boost::lexical_cast<std::string>(c),
      m_regex);
  }
  const boost::regex m_regex;
};

int main()
{
  std::string s = "abcdefghijklmnopqrstuvwxyz";

  std::copy_if(std::begin(s), std::end(s),
    std::ostream_iterator<char>(std::cout,""),
    In_regex("a|c|e")
  );
  std::cout << '\n';

  std::copy_if(std::begin(s), std::end(s),
    std::ostream_iterator<char>(std::cout,""),
    In_regex("[f-p]")
  );
  std::cout << '\n';
}
```