# ([C++](Cpp.md)) [std::string](CppStdString.md)

[std::string](CppStdString.md) is an [STL](CppStl.md)
[container](CppContainer.md) for storing [char](CppChar.md). Or: 'the
thing you use for storing words'.

The [definition](CppDefinition.md) of [std::string](CppStdString.md) is
in [string.h](CppStringH.md).

```c++
#include <iostream>
#include <string>

int main()
{
  const std::string s1 = "Hello";
  const std::string s2 = "World";
  const std::string s3 = s1 + " " + s2;
  std::cout << s3 << '\'n;
}
```

Prefer using [std::string](CppStdString.md) over an [array](CppArray.md)
of [char](CppChar.md) \[1\]\[2\]\[3\]\[4\].

## [std::string](CppStdString.md) example

```c++
#include <cassert>
#include <string>

int main()
{
  const std::string s = "ABCD";
  assert(s.find("xx")==std::string::npos);
  assert(s.find("BC")!=std::string::npos);
}
```

## [std::string](CppStdString.md) [code snippets](CppCodeSnippets.md)

Note that among these are also the more general
[container](CppContainer.md) [code snippets](CppCodeSnippets.md).

1.  [AnsiToStr, convert AnsiString to std::string](CppAnsiToStr.md)
2.  [Append two std::strings, Append](CppAppend.md)
3.  [Append, append two std::strings](CppAppend.md)
4.  [Ask user to input a double, AskUserForDouble](CppAskUserForDouble.md)
5.  [Ask user to input a std::string, AskUserForString](CppAskUserForString.md)
6.  [AskUserForDouble, ask user to input a double](CppAskUserForDouble.md)
7.  [AskUserForString, ask user to input a std::string](CppAskUserForString.md)
8.  [Check if std::string can be converted to double, IsDouble](CppIsDouble.md)
9.  [Check if std::string can be converted to integer, IsInt](CppIsInt.md)
10. [Convert AnsiString to std::string](CppAnsiToStr.md)
11. [Convert double to std::string](CppDoubleToStr.md)
12. [Convert integer to std::string](CppIntToStr.md)
13. [Convert std::string to AnsiString](CppStrToAnsi.md)
14. [Convert std::string to double](CppStrToDouble.md)
15. [Convert std::string to integer](CppStrToInt.md)
16. [Convert std::string to lower case](CppStrToLower.md)
17. [Convert std::string to upper case](CppStrToUpper.md)
18. [Convert std::string to WideString](CppStrToWide.md)
19. [Convert WideString to std::string](CppWideToStr.md)
20. [DoubleToStr, convert double to std::string](CppDoubleToStr.md)
21. [Find std::string in std::string](CppFindString.md)
22. [FindString, find std::string in std::string](CppFindString.md)
23. [Get the extension of a filename](CppGetExtension.md)
24. [Get the path of a filename, GetPath](CppGetPath.md)
25. [GetExtension, get the extension of a filename](CppGetExtension.md)
26. [GetLongestString, find the length of the std::string with the most characters in a container](CppGetLongestStringLength.md)
27. [GetPath, get the path of a filename](CppGetPath.md)
28. [GetShortestString, find the length of the std::string with the least characters in a container](CppGetShortestStringLength.md)
29. [IntToStr, convert integer to std::string](CppIntToStr.md)
30. [IsDouble, check if std::string can be converted to double](CppIsDouble.md)
31. [IsInt, check if std::string can be converted to integer](CppIsInt.md)
32. [LoopReader, reading a container looped](CppLoopReader.md)
33. [Reading a container looped, LoopReader](CppLoopReader.md)
34. [Remove the extension of a filename](CppRemoveExtension.md)
35. [Remove the path of a filename, RemovePath](CppRemovePath.md)
36. [RemoveExtension, remove the extension of a filename](CppRemoveExtension.md)
37. [RemovePath, remove the path of a filename](CppRemovePath.md)
38. [Replace a substring by another in a certain std::string once, ReplaceOnce](CppReplaceOnce.md)
39. [Replace all substrings by another in a certain std::string, ReplaceAll](CppReplaceAll.md)
40. [ReplaceAll, replace all substrings by another in a certain std::string](CppReplaceAll.md)
41. [ReplaceOnce, replace a substring by another in a certain std::string once](CppReplaceOnce.md)
42. [ReverseString, reverse a std::string](CppStdReverseString.md)
43. [Reverse a std::string, ReverseString](CppStdReverseString.md)
44. [Seperate a std::string into multiple std::strings, seperated by a seperator](CppSeperateString.md)
45. [SeperateString, seperate a std::string into multiple std::strings, seperated by a seperator](CppSeperateString.md)
46. [SimplifyPath, simplify a path](CppSimplifyPath.md)
47. [StrToAnsi, convert std::string to AnsiString](CppStrToAnsi.md)
48. [StrToDouble, convert std::string to double](CppStrToDouble.md)
49. [StrToInt, convert std::string to integer](CppStrToInt.md)
50. [StrToLower, convert std::string to lower case](CppStrToLower.md)
51. [StrToUpper, convert std::string to upper case](CppStrToUpper.md)
52. [StrToWide, convert std::string to WideString](CppStrToWide.md)
53. [SumStringLength, sum the lengths of std::strings irn a container](CppSumStringLength.md)
54. [Trim the leading and trailing spaces from a std::string](CppTrim.md)
55. [Trim, trim the leading and trailing spaces from a std::string](CppTrim.md)
56. [WideToStr, convert WideString to std::string](CppWideToStr.md)

## External links

 * [Boost string algorithms](http://www.boost.org/doc/libs/1_38_0/doc/html/string_algo.html)
 * [Cplusplus.com page about std::string](http://www.cplusplus.com/reference/string/string)

## [References](CppReferences.md)

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 5.8.5: 'Use string rather then zero-terminated arrays of char'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Chapter 77: 'Use vector and string instead of arrays'.
3.  [Scott Meyers](CppScottMeyers.md). Effective STL. ISBN: 0-201-74962-9. Item 13: 'Prefer vector and string to dynamically allocated arrays'
4.  [Jarrod Hollingworth](CppJarrodHollingworth.md), [Bob Swart](CppBobSwart.md), [Mark Cashman](CppMarkCashman.md), [Paul Gustavson](CppPaulGustavson.md). Sams C++ Builder 6 Developer's Guide. ISBN: 0-672-32480-6. Chapter 3.1: 'Use a string class instead of char\*'
