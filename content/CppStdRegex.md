# ([C++](Cpp.md)) ![STL](PicSTL.png) [std::regex](CppStdRegex.md)

[std::regex](CppStdRegex.md) is an [STL](CppStl.md)
[class](CppClass.md) for [regular expressions](CppRegex.md).

The default regular expression notation is that of ECMAScript [1], but
the regex can use POSIX, awk, grep and egrep notation additionally
[2].

## ECMAScript table

Adapted from [1]:

Text | description
---|---
`[[:alnum:]]` | alpha-numerical character
`[[:alpha:]]` | alphabetic character
`[[:blank:]]` | blank character
`[[:cntrl:]]` | control character
`[[:digit:]]` | decimal digit character
`[[:graph:]]` | character with graphical representation
`[[:lower:]]` | lowercase letter
`[[:print:]]` | printable character
`[[:punct:]]` | punctuation mark character
`[[:space:]]` | whitespace character
`[[:upper:]]` | uppercase letter
`[[:xdigit:]]` | hexadecimal digit character
`[[:d:]]` | decimal digit character
`[[:w:]]` | word character
`[[:s:]]` | whitespace character

## Example: multipliers

The example show the use of:

 * `.`: can be anything
 * `[[:digit:]]`: a digit
 * `?`: zero or one repeats of the preceding thing
 * `+`: one or more repeats of the preceding thing
 * `*`: zero or more repeats of the preceding thing
 * `{2}`: two repeats of the preceding thing

```c++
#include <cassert>
#include <regex>
#include <string>

int main()
{
  assert(!std::regex_match("", std::regex("."))); //One anything
  assert(!std::regex_match("", std::regex("[[:digit:]]"))); //One digit
  assert( std::regex_match("", std::regex("[[:digit:]]?"))); //Zero or one digit
  assert(!std::regex_match("", std::regex("[[:digit:]]+"))); //One or more digits
  assert( std::regex_match("", std::regex("[[:digit:]]*"))); //Zero or more digits
  assert( std::regex_match("", std::regex("[[:digit:]]{0}"))); //Zero digits

  assert(std::regex_match("1", std::regex("."))); //One anything
  assert(std::regex_match("1", std::regex("[[:digit:]]"))); //One digit
  assert(std::regex_match("1", std::regex("[[:digit:]]?"))); //Zero or one digit
  assert(std::regex_match("1", std::regex("[[:digit:]]+"))); //One or more digits
  assert(std::regex_match("1", std::regex("[[:digit:]]*"))); //Zero or more digits
  assert(std::regex_match("1", std::regex("[[:digit:]]{1}"))); //One digit

  assert(!std::regex_match("12", std::regex("."))); //One anything
  assert(!std::regex_match("12", std::regex("[[:digit:]]"))) ; //One digit
  assert(!std::regex_match("12", std::regex("[[:digit:]]?"))); //Zero or one digit
  assert( std::regex_match("12", std::regex("[[:digit:]]+"))); //One or more digits
  assert( std::regex_match("12", std::regex("[[:digit:]]*"))); //Zero or more digits
  assert( std::regex_match("12", std::regex("[[:digit:]]{2}"))); //Two digits

}
```

## Example: is_benelux_web_domain

The example show the use of:

 * `|`: or
 * `()`: group
 * `\\.`: a literal dot, `.`. The backslash escapes the dot being a wildcard. Because the backslash is a std::string escape character itself, it needs to be escaped by anothed backslash 

```c++
#include <cassert>
#include <regex>
#include <string>
//A (simplified) Benelux (Dutch, Flemisch, Luxembourg) URL:
//  - has one or more alphanumeric characters
//  - ends on '.nl', '.be' or '.lu'
int main()
{
  const std::regex benelux_url("[[:alnum:]]+\\.(nl|be|lu)");
  assert( std::regex_match("nu.nl", benelux_url));
  assert( std::regex_match("k3.be", benelux_url));
  assert( std::regex_match("start.lu", benelux_url));
  assert(!std::regex_match("lemonde.fr", benelux_url));
  assert(!std::regex_match("nlbelu", benelux_url));
}
```

## Example programs and [code snippets](CppCodeSnippets.md)

 * [RegexTester](ToolRegexTester.md): tool to test regular expressions
 * [is_dutch_postal_code](https://github.com/richelbilderbeek/is_dutch_postal_code): function to test for a Dutch postal code (e.g. `1234 AB`)

## External links

 * [std::regex homepage](http://www.STL.org/doc/libs/1_43_0/libs/regex/doc/html/index.html)
 * [cplusplus.com's ECMA script page](http://www.cplusplus.com/reference/regex/ECMAScript/)
 * [C++ Weekly, Episode 62: std::regex](https://www.youtube.com/watch?v=IOxKjqC1Ozo)
 * [C++ Weekly, Epsiode 74: std::regex optimize](https://www.youtube.com/watch?v=7hfSyxNxFfo)

## [References](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 1071, 37.6 'Advice', item 3: 'The default regular expression notation is that of ECMAScript'
 * [2] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 1071, 37.6 'Advice', item 9: 'regex can use ECMAScript, POSIX, awk, grep and egrep notation'
