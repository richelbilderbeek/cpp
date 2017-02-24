



 

 

 

 

 

([C++](Cpp.md)) ![TR1](PicCppTr1.png) [TR1](CppTr1.md)
========================================================

 

[TR1 (an abbreviation of 'Technical Report 1')](CppTr1.md) is a
document proposing [library](CppLibrary.md) extensions to the
[C++98](Cpp98.md) [library](CppLibrary.md).

 

[TR2](CppTr2.md) will be a document proposing [library](CppLibrary.md)
extensions to the [C++11](Cpp11.md) [library](CppLibrary.md).

 

 

 

 

 

List of [TR1](CppTr1.md) [header files](CppHeaderFile.md)
-----------------------------------------------------------

 

Found in '/usr/include/c++/4.7/tr1':

 

-   [array](CppArrayH.md)
-   [ccomplex](CppCcomplexH.md)
-   [cctype](CppCctypeH.md)
-   [cfenv](CppCfenvH.md)
-   [cfloat](CppCfloatH.md)
-   [cinttypes](CppCinttypesH.md)
-   [climits](CppClimitsH.md)
-   [cmath](CppCmathH.md)
-   [complex](CppComplexH.md)
-   [cstdarg](CppCstdargH.md)
-   [cstdbool](CppCstdboolH.md)
-   [cstdint](CppCstdintH.md)
-   [cstdio](CppCstdioH.md)
-   [cstdlib](CppCstdlibH.md)
-   [ctgmath](CppCtgmathH.md)
-   [ctime](CppCtimeH.md)
-   [cwchar](CppCwcharH.md)
-   [cwctype](CppCctypeH.md)
-   [functional](CppFunctionalH.md)
-   [memory](CppMemoryH.md)
-   [random](CppRandomH.md)
-   [regex](CppRegexH.md)
-   [tuple](CppTupleH.md)
-   [type\_traits](CppType_traitsH.md)
-   [unordered\_map](CppUnordered_mapH.md)
-   [unordered\_set](CppUnordered_setH.md)
-   [utility](CppUtilityH.md)

 

 

 

 

 

Example
-------

 

-   [Donwload the Qt Creator project 'CppTr1' (zip)](CppTr1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppTr1.pro
---------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #ifdef WOULD_TR1_REGEX_BE_COMPLETE #include <tr1/regex> //std::tr1::regex #endif  #include <tr1/array> //std::tr1::array #include <tr1/memory> //std::tr1::shared_ptr  int main() {   //std::tr1::array   {     //const std::tr1::array<int,3> w = {{ 0,1 }}; //Does compile: too few elements is not checked in assignment     //const std::tr1::array<int,3> x = {{ 0,1,2,3 }}; //Does not compile: too many elements is checked in assignment     const std::tr1::array<int,3> v = {{ 0,1,2 }}; //Note the double braces     //static_assert(v.size() == 3,""); //Not allowed     assert(v[1] == 1);   }   //std::tr1::regex   {     #ifdef WOULD_TR1_REGEX_BE_COMPLETE     //Define how a dutch zip code is formatted     const std::tr1::regex dutch_zip_code("\\d{4}\\s[A-Z]{2}");      //Check if the regex works properly     assert(std::tr1::regex_match("1234 AB",dutch_zip_code)==true);     assert(std::tr1::regex_match("1234 ab",dutch_zip_code)==false);     assert(std::tr1::regex_match("1234ab",dutch_zip_code)==false);      //Define a sentence with a Dutch zip code in it     const std::string s = "My Dutch zip code is 1234 AB.";      //Show how std::tr1::regex_match and std::tr1::regex_search work     assert(std::tr1::regex_match(s,dutch_zip_code)==false       && "the std::string does not match a dutch zip code");     assert(std::tr1::regex_search(s,dutch_zip_code)==true       && "but the std::string does contain a dutch zip code");      //Show how to obtain a Dutch zip code from a std::string     /* const */ std::tr1::sregex_iterator i(s.begin(),s.end(),dutch_zip_code);     const std::string t = (*i).str();     assert(t=="1234 AB");     #endif   }   //std::tr1::shared_ptr   {     std::tr1::shared_ptr<int> p(new int(123));     assert(p);     assert(*p == 123);     std::tr1::shared_ptr<int> q = p;     assert(q);     assert(*p == *q);     *p = 234;     assert(*q == 234);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Wikipedia page about
    TR1](http://en.wikipedia.org/wiki/C%2B%2B_Technical_Report_1)

 

 

 

 

 





 



