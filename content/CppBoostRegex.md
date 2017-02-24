



 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png) [Boost.Regex](CppBoostRegex.htm)
========================================================================

 

[Boost.Regex](CppBoostRegex.htm) is a [Boost](CppBoost.htm)
[library](CppLibrary.htm) for [regular expressions](CppRegex.htm).

 

 

 

 

 

Example programs and [code snippets](CppCodeSnippets.htm)
---------------------------------------------------------

 

-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png) [Boost.Regex
    example 1: basics](CppBoostRegexExample1.htm)
-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png) [Boost.Regex
    example 2: replace](CppBoostRegexExample2.htm)
-   ![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png) [Boost.Regex
    example 3: basics](CppBoostRegexExample3.htm)
-   ![Lubuntu](PicLubuntu.png) [RegexTester](ToolRegexTester.htm): tool
    to test regular expressions
-   ![Lubuntu](PicLubuntu.png)
    [GetCppFilesInFolder](CppGetCppFilesInFolder.htm): uses regex on
    filename
-   ![Lubuntu](PicLubuntu.png)
    [GetRegexMatches](CppGetRegexMatches.htm): obtain all regex matches
    from a std::string

 

 

 

 

 

Example [boost::regex](CppBoostRegex.htm)es
-------------------------------------------

 

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
| `(\(\d,\(\d,\d\)\))|(\(\(\d,\d\),\d\ | Simple [Newick](CppNewick.htm)       |
| ))`                                  |                                      |
+--------------------------------------+--------------------------------------+

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.htm) (to
prevent [link errors](CppLinkError.htm)):

 

  --------------------------
  ` LIBS += -lboost_regex`
  --------------------------

 

 

 

 

 

External links
--------------

 

-   [Boost.Regex
    homepage](http://www.boost.org/doc/libs/1_43_0/libs/regex/doc/html/index.html)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
