# ([C++](Cpp.md)) [StrToInt](CppStrToInt.md)

[StrToInt](CppStrToInt.md) is a [code snippet](CppCodeSnippets.md) to [convert](CppConvert.md) a [std::string](CppStdString.md) to [int](CppInt.md). 

There are multiple ways to do so:

 * Using the C++98 STL's [std::atoi](CppStdAtoi.md)
 * Using the C++11 STL's [std::stoi](CppStdStoi.md)
 * Using Boost's `boost::lexical_cast`

In all cases, an exception will be thrown if the conversion fails. See below how to check if these conversion will pass.

## Using the C++98 STL

```c++
#include <string>

int StrToIntStl(const std::string& s)
{
  return std::atoi(s.c_str());
}

#include <cassert>

int main()
{
  assert(StrToIntStl("123") == 123);
}
```

## Using the C++11 STL

```c++
#include <string>

int StrToIntCpp11(const std::string& s)
{
  return std::stoi(s);
}

#include <cassert>

int main()
{
  assert(StrToIntCpp11("123") == 123);
}
```

## Using Boost


```c++
#include <boost/lexical_cast.hpp>

int StrToIntBoost(const std::string& s)
{
  return boost::lexical_cast<int>(s);
}

#include <cassert>

int main()
{
  assert(StrToIntBoost("123") == 123);
}
```

# Checking if conversion will work

```c++
bool CanStrToIntStl(const std::string& s)
{
  const int i = std::atoi(s.c_str());
  return i!=0 || s=="0";
}

int CanStrToIntCpp11(const std::string& s)
{
  try { std::stoi(s); }
  catch (std::exception&) { return false; }
  return true;
}

int CanStrToIntBoost(const std::string& s)
{
  try { boost::lexical_cast<int>(s); }
  catch (boost::bad_lexical_cast&) { return false; }
  return true;

}

#include <cassert>

int main()
{
  assert(!CanStrToIntStl("a"));
  assert(!CanStrToIntCpp11("a"));
  assert(!CanStrToIntBoost("a"));

  assert(CanStrToIntStl("0"));
  assert(CanStrToIntCpp11("0"));
  assert(CanStrToIntBoost("0"));

  assert(CanStrToIntStl("123"));
  assert(CanStrToIntCpp11("123"));
  assert(CanStrToIntBoost("123"));
}
```
