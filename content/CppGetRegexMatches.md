# ([C++](Cpp.md)) [GetRegexMatches](CppGetRegexMatches.md)

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

[GetRegexMatches](CppGetRegexMatches.md) is a [Regex](CppRegex.md)
[code snippet](CppCodeSnippets.md) to obtain all
[std::strings](CppStdString.md) in a [std::string](CppStdString.md)
that satisfy a regular expression.

[GetRegexMatches](CppGetRegexMatches.md) is demonstrated in the
[tool](https://github.com/richelbilderbeek/tools) [RegexTester](ToolRegexTester.md).

 * [Download the Qt Creator project 'GetRegexMatches' (zip)](CppGetRegexMatches.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

## [Qt project file](CppQtProjectFile.md): ./CppGetRegexMatches/CppGetRegexMatches.pro

```
QT += core
QT += gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}
QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++
unix {
  QMAKE_CXXFLAGS += -Werror
}

include(../../Libraries/BoostAll.pri)

SOURCES += main.cpp
```

## ./CppGetRegexMatches/main.cpp

```c++
#include <cassert>
#include <iostream>
#include <regex>
#include <string>
#include <vector>

///Obtain all regex matches in a std::string
//From http://www.richelbilderbeek.nl/CppGetRegexMatches.htm
const std::vector<std::string> GetRegexMatchesCpp11(
  const std::string& /* s */,
  const std::regex& /* r */)
{
  std::vector<std::string> v;
  v.push_back("GCC has not yet implemented std::regex");
  return v;
}

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#pragma GCC diagnostic ignored "-Wunused-local-typedefs"
#include <boost/regex.hpp>
#pragma GCC diagnostic pop

///Obtain all regex matches in a std::string
//From http://www.richelbilderbeek.nl/CppGetRegexMatches.htm
const std::vector<std::string> GetRegexMatchesBoostRegex(
  const std::string& s,
  const boost::regex& r)
{
  std::vector<std::string> v;

  std::string::const_iterator start = s.begin();
  const std::string::const_iterator end = s.end();
  boost::match_results<std::string::const_iterator> what;
  boost::match_flag_type flags = boost::match_default;
  while(boost::regex_search(start, end, what, r, flags))
  {
    const std::string x = what.str();
    v.push_back(x);
    start = what[0].second;
    flags |= boost::match_prev_avail;
    flags |= boost::match_not_bob;
  }
  return v;
}

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#pragma GCC diagnostic ignored "-Wunused-local-typedefs"
#include <boost/xpressive/xpressive.hpp>
#pragma GCC diagnostic pop

//From http://www.richelbilderbeek.nl/CppGetRegexMatches.htm
const std::vector<std::string>
  GetRegexMatchesBoostXpressive(
  const std::string& s,
  const boost::xpressive::sregex& r)
{
  std::vector<std::string> v;
  boost::xpressive::sregex_iterator cur(s.begin(),s.end(),r);
  boost::xpressive::sregex_iterator end;
  for( ; cur != end; ++cur )
  {
    const boost::xpressive::smatch& what = *cur;
    v.push_back(what[0]);
  }
  return v;
}


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Weffc++"
#pragma GCC diagnostic ignored "-Wunused-local-typedefs"
#include <QRegExp>
#pragma GCC diagnostic pop

///Obtain all regex matches in a std::string
//From http://www.richelbilderbeek.nl/CppGetRegexMatches.htm
const std::vector<std::string> GetRegexMatchesQt(
  const std::string& s,
  const QRegExp& r_original)
{
  QRegExp r = r_original;
  r.setMinimal(true); //QRegExp must be non-greedy
  std::vector<std::string> v;
  int pos = 0;
  while ((pos = r.indexIn(s.c_str(), pos)) != -1)
  {
    const QString q = r.cap(1);
    if (q.isEmpty()) break;
    v.push_back(q.toStdString());
    pos += r.matchedLength();
  }

  return v;
}

int main()
{
  //ZIP code tests
  {
    const std::string s
      = "In the Netherlands, 1234 AB and 2345 BC are valid zip codes";

    std::vector<std::string> expected;
    expected.push_back("1234 AB");
    expected.push_back("2345 BC");
    {
      const std::string r = "(\\d{4} [A-Z]{2})";
      assert(GetRegexMatchesQt(s,QRegExp(r.c_str())) == expected);
      assert(GetRegexMatchesBoostXpressive(
        s,boost::xpressive::sregex::compile(r))
          == expected);
    }
    {
      const std::string r = "\\d{4} [A-Z]{2}";
      assert(GetRegexMatchesBoostRegex(s,boost::regex(r)) == expected);
    }
  }
  //Check for GetRegexMatches not being greedy
  {
    const std::string s
      = "<std::vector><int>1</int><int>2</int><int>3</int></std::vector>";

    std::vector<std::string> expected;
    expected.push_back("<int>1</int>");
    expected.push_back("<int>2</int>");
    expected.push_back("<int>3</int>");
    {
      const std::string r = "(<int>*.</int>)";
      assert(GetRegexMatchesQt(s,QRegExp(r.c_str())) == expected);
      assert(GetRegexMatchesBoostXpressive(
        s,boost::xpressive::sregex::compile(r))
          == expected);
    }
    {
      const std::string r = "<int>*.</int>";
      assert(GetRegexMatchesBoostRegex(s,boost::regex(r)) == expected);
    }
  }
}
```
