[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Write and read a std::vector to/from a std::stream: example 2](CppVectorToStreamExample2.htm)
===============================================================================================================

 

This [write and read a std::vector to/from a
std::stream](CppVectorToStream.htm) example demonstrates a safe way. The
program its setup is fine: a [std::vector](CppVector.htm) is created,
written to file, a new [std::vector](CppVector.htm) is written from that
same file and the program tests if the two [std::vectors](CppVector.htm)
are identical.

 

The assumptions for this approach to work are:

-   Text may not contain a bell ('\\b') character

 

Note that the program will issue a failed [assert](CppAssert.htm) when
the assumption is violated. Wonder, how often have you given a bell
character as input?

 

-   [Download the Qt Creator project
    'CppVectorToStreamExample2' (zip)](CppVectorToStreamExample2.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppVectorToStreamExample2.pro
----------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core gui QMAKE_CXXFLAGS += -std=c++11 -Werror TARGET = CppVectorToStreamExample2 CONFIG   += console SOURCES += main.cpp `
  ------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iterator> #include <cassert> #include <algorithm> #include <fstream> #include <string> #include <vector>  std::ostream& operator<<(std::ostream& os, const std::vector<std::string>& w) {   //Copy the original std::vector   std::vector<std::string> v = w;   //Preformat data   std::for_each(v.begin(),v.end(),     [&os](std::string& s)     {       //The only assertion done on the input       //Note that users nearly every use bell characters in their text inputs       assert(std::count(s.begin(),s.end(),'\b') == 0 && "Text must not contain a bell character");       std::replace(s.begin(),s.end(),' ','\b');       if (s == "</>") s = "<\b/>";     }   );   //Check data   #ifndef NDEBUG   std::for_each(v.begin(),v.end(),     [&os](const std::string& s)     {       assert(s != "</>" && "Text shoule not be '</>' anymore");       assert(std::count(s.begin(),s.end(),' ') == 0 && "Text should not contain spaces anymore");     }   );   #endif   //Write start tag   os << "<>\n";   //Write data   std::for_each(v.begin(),v.end(),     [&os](const std::string& s)     {       os << s << '\n';     }   );   //Write end tag   os << "</>";   return os; }  std::istream& operator>>(std::istream& is, std::vector<std::string>& v) {   //Read start tag   {     std::string s; is >> s; assert(s == std::string("<>"));   }   //Read data until end tag   while (1)   {     std::string s;     is >> s;     if (s == std::string("</>")) return is;     if (s == "<\b/>") s = "</>";     std::replace(s.begin(),s.end(),'\b',' ');     v.push_back(s);   } }  int main() {   //Go ahead, create an entry that breaks the code!   const std::vector<std::string> v(     {       "aahs",       "aals",       "abac",       "abas",       "</>",       " </>",       " </> ",       "_</>",       "</>_",       "</></>",       "</> </>",       "</>_</>",       "abba",       "abbe",       "abbs",       "abed",       "abet",       "abid"     }   );   const std::string filename = "tmp.txt";   //Write to file   {     std::ofstream f(filename.c_str());     f << v;   }   //Read from file   {     std::vector<std::string> w;     std::ifstream f(filename.c_str());     f >> w;     if (v != w)     {       std::copy(w.begin(),w.end(),std::ostream_iterator<std::string>(std::cout,"\n"));     }     assert(v == w && "Because the algorithm is excellent, this will never happen B-)");   } } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
