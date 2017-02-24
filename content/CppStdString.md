



 

 

 

 

 

([C++](Cpp.htm)) [std::string](CppString.htm)
=============================================

 

[std::string](CppString.htm) is an [STL](CppStl.htm)
[container](CppContainer.htm) for storing [char](CppChar.htm). Or: 'the
thing you use for storing words'.

 

The [definition](CppDefinition.htm) of [std::string](CppString.htm) is
in [string.h](CppStringH.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  int main() {   const std::string s1 = "Hello";   const std::string s2 = "World";   const std::string s3 = s1 + " " + s2;   std::cout << s3 << std::endl; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer using [std::string](CppString.htm) over an [array](CppArray.htm)
of [char](CppChar.htm) \[1\]\[2\]\[3\]\[4\].

 

 

 

 

 

[std::string](CppString.htm) example
------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string>  int main() {   const std::string s = "ABCD";   assert(s.find("xx")==std::string::npos);   assert(s.find("BC")!=std::string::npos); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[std::string](CppString.htm) [code snippets](CppCodeSnippets.htm)
-----------------------------------------------------------------

 

Note that among these are also the more general
[container](CppContainer.htm) [code snippets](CppCodeSnippets.htm).

 

1.  [AnsiToStr, convert AnsiString to std::string](CppAnsiToStr.htm)
2.  [Append two std::strings, Append](CppAppend.htm)
3.  [Append, append two std::strings](CppAppend.htm)
4.  [Ask user to input a double,
    AskUserForDouble](CppAskUserForDouble.htm)
5.  [Ask user to input a std::string,
    AskUserForString](CppAskUserForString.htm)
6.  [AskUserForDouble, ask user to input a
    double](CppAskUserForDouble.htm)
7.  [AskUserForString, ask user to input a
    std::string](CppAskUserForString.htm)
8.  [Check if std::string can be converted to double,
    IsDouble](CppIsDouble.htm)
9.  [Check if std::string can be converted to integer,
    IsInt](CppIsInt.htm)
10. [Convert AnsiString to std::string](CppAnsiToStr.htm)
11. [Convert double to std::string](CppDoubleToStr.htm)
12. [Convert integer to std::string](CppIntToStr.htm)
13. [Convert std::string to AnsiString](CppStrToAnsi.htm)
14. [Convert std::string to double](CppStrToDouble.htm)
15. [Convert std::string to integer](CppStrToInt.htm)
16. [Convert std::string to lower case](CppStrToLower.htm)
17. [Convert std::string to upper case](CppStrToUpper.htm)
18. [Convert std::string to WideString](CppStrToWide.htm)
19. [Convert WideString to std::string](CppWideToStr.htm)
20. [DoubleToStr, convert double to std::string](CppDoubleToStr.htm)
21. [Find std::string in std::string](CppFindString.htm)
22. [FindString, find std::string in std::string](CppFindString.htm)
23. [Get the extension of a filename](CppGetExtension.htm)
24. [Get the path of a filename, GetPath](CppGetPath.htm)
25. [GetExtension, get the extension of a filename](CppGetExtension.htm)
26. [GetLongestString, find the length of the std::string with the most
    characters in a container](CppGetLongestStringLength.htm)
27. [GetPath, get the path of a filename](CppGetPath.htm)
28. [GetShortestString, find the length of the std::string with the
    least characters in a container](CppGetShortestStringLength.htm)
29. [IntToStr, convert integer to std::string](CppIntToStr.htm)
30. [IsDouble, check if std::string can be converted to
    double](CppIsDouble.htm)
31. [IsInt, check if std::string can be converted to
    integer](CppIsInt.htm)
32. [LoopReader, reading a container looped](CppLoopReader.htm)
33. [Reading a container looped, LoopReader](CppLoopReader.htm)
34. [Remove the extension of a filename](CppRemoveExtension.htm)
35. [Remove the path of a filename, RemovePath](CppRemovePath.htm)
36. [RemoveExtension, remove the extension of a
    filename](CppRemoveExtension.htm)
37. [RemovePath, remove the path of a filename](CppRemovePath.htm)
38. [Replace a substring by another in a certain std::string once,
    ReplaceOnce](CppReplaceOnce.htm)
39. [Replace all substrings by another in a certain std::string,
    ReplaceAll](CppReplaceAll.htm)
40. [ReplaceAll, replace all substrings by another in a certain
    std::string](CppReplaceAll.htm)
41. [ReplaceOnce, replace a substring by another in a certain
    std::string once](CppReplaceOnce.htm)
42. [ReverseString, reverse a std::string](CppReverseString.htm)
43. [Reverse a std::string, ReverseString](CppReverseString.htm)
44. [Seperate a std::string into multiple std::strings, seperated by a
    seperator](CppSeperateString.htm)
45. [SeperateString, seperate a std::string into multiple std::strings,
    seperated by a seperator](CppSeperateString.htm)
46. [SimplifyPath, simplify a path](CppSimplifyPath.htm)
47. [StrToAnsi, convert std::string to AnsiString](CppStrToAnsi.htm)
48. [StrToDouble, convert std::string to double](CppStrToDouble.htm)
49. [StrToInt, convert std::string to integer](CppStrToInt.htm)
50. [StrToLower, convert std::string to lower case](CppStrToLower.htm)
51. [StrToUpper, convert std::string to upper case](CppStrToUpper.htm)
52. [StrToWide, convert std::string to WideString](CppStrToWide.htm)
53. [SumStringLength, sum the lengths of std::strings irn a
    container](CppSumStringLength.htm)
54. [Trim the leading and trailing spaces from a
    std::string](CppTrim.htm)
55. [Trim, trim the leading and trailing spaces from a
    std::string](CppTrim.htm)
56. [WideToStr, convert WideString to std::string](CppWideToStr.htm)

 

 

 

 

 

External links
--------------

 

-   [Boost string
    algorithms](http://www.boost.org/doc/libs/1_38_0/doc/html/string_algo.html)
-   [Cplusplus.com page about
    std::string](http://www.cplusplus.com/reference/string/string)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 5.8.5:
    'Use string rather then zero-terminated arrays of char'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 77: 'Use vector and string instead of arrays'.
3.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 13: 'Prefer vector and string to
    dynamically allocated arrays'
4.  [Jarrod Hollingworth](CppJarrodHollingworth.htm), [Bob
    Swart](CppBobSwart.htm), [Mark Cashman](CppMarkCashman.htm), [Paul
    Gustavson](CppPaulGustavson.htm). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3.1: 'Use a string
    class instead of char\*'

 

 

 

 

 





 



