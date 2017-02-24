[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetRandomInt64](CppGetRandomInt64.htm)
========================================================

 

[GetRandomInt64](CppGetRandomInt64.htm) is an [integer](CppInt.htm)
[code snippet](CppCodeSnippets.htm) to obtain a [random](CppRandom.htm)
[int64\_t](CppInt64_t.htm).

 

-   [Download the Qt Creator project
    'CppGetRandomInt64' (zip)](CppGetRandomInt64.zip)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppGetRandomInt64.pro
--------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app  CONFIG += console  CONFIG -= qt  QMAKE_CXXFLAGS += -std=c++11  SOURCES += main.cpp   `
  ----------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifdef _WIN32  //See http://www.richelbilderbeek.nl/CppCompileErrorSwprintfHasNotBeenDeclared.htm  #undef __STRICT_ANSI__  #endif    #include <cassert>  #include <cinttypes>  #include <cstdlib>    int64_t GetRandomInt64()  {    static_assert(sizeof(int64_t)  == 8,"int64 has 8 bytes of 8 bits each");    static_assert(RAND_MAX == 0x7FFF,"Assume RAND_MAX has 15 bits, as 0x7FFF equals 2^15");    int64_t i = 0;    i += static_cast<int64_t>(std::rand());    i <<= 15; //RAND_MAX has 15 bits    i += static_cast<int64_t>(std::rand());    i <<= 15; //RAND_MAX has 15 bits    i += static_cast<int64_t>(std::rand());    i <<= 15; //RAND_MAX has 15 bits    i += static_cast<int64_t>(std::rand());    i <<= 3; //3 bits of the 63 left, use 63 because one bit is used for the sign    i += static_cast<int64_t>( (std::rand() >> 4) % (1 << 3));    assert(i >= 0);    return i;  }    #include <cassert>  #include <iostream>  #include <vector>    int main()  {    const int shift = 8;    const int n_categories = (1LL << shift);    //63 because one bit is used for the sign    const int64_t divide_by = (1LL << (63 - shift));    std::vector<int64_t> v(n_categories,0);    for (int64_t i=0; i!=(1LL << 24); ++i)    {      const int64_t x = GetRandomInt64();      const int index = static_cast<int>(x / divide_by);      assert(index >= 0);      assert(index < static_cast<int>(v.size()));      ++v[index];    }    for (int i=0; i!=n_categories; ++i)    {      std::cout << v[i] << '\t'; //All these values must be about equal    }    std::cout << '\n';  } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
