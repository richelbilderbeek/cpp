# ([C++](Cpp.md)) ![Boost](PicBoost.png) [Boost.Regex](CppBoostRegex.md)

[Boost.Regex](CppBoostRegex.md) is a [Boost](CppBoost.md)
[library](CppLibrary.md) for [regular expressions](CppRegex.md).

## Example programs and [code snippets](CppCodeSnippets.md)

-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png) [Boost.Regex example 1: basics](CppBoostRegexExample1.md)
-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png) [Boost.Regex example 2: replace](CppBoostRegexExample2.md)
-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png) [Boost.Regex example 3: basics](CppBoostRegexExample3.md)
-   ![Lubuntu](PicLubuntu.png) [GetCppFilesInFolder](CppGetCppFilesInFolder.md): uses regex on filename
-   ![Lubuntu](PicLubuntu.png) [GetRegexMatches](CppGetRegexMatches.md): obtain all regex matches from a std::string

## Example [boost::regex](CppBoostRegex.md)es

+--------------------------------------+--------------------------------------+
| **Regex**                            | **Purpose**                          |
+--------------------------------------+--------------------------------------+
| `.*\.(h|hpp|c|cpp)\z`                | Test filename for .c, .cpp, .h or    |
|                                      | .hpp extension                       |
+--------------------------------------+--------------------------------------+
| `\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}` | IP address                           |
+--------------------------------------+--------------------------------------+
| `http://(www\.)?(\w*\.)+\w*`         | General internet domain              |
+--------------------------------------+--------------------------------------+
| [here](CppRegexDomain.txt)           | Internet domain that checks for      |
|                                      | valid extensions                     |
+--------------------------------------+--------------------------------------+
| `(\(\d,\(\d,\d\)\))|(\(\(\d,\d\),\d\ | Simple [Newick](CppNewick.md)       |
| ))`                                  |                                      |
+--------------------------------------+--------------------------------------+

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent [link errors](CppLinkError.md)):

 

  --------------------------
  ` LIBS += -lboost_regex`
  --------------------------

 

 

 

 

 

External links
--------------

 

-   [Boost.Regex homepage](http://www.boost.org/doc/libs/1_43_0/libs/regex/doc/html/index.html)

 

 

 

 

 

 

