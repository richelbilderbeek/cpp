

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdNext\_permutationExample1](CppStdNext_permutationExample1.htm)
===================================================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdNext\_permutationExample1/CppStdNext\_permutationExample1.pro
--------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) SOURCES += main.cpp`
  --------------------------------------------------------------

 

 

 

 

 

./CppStdNext\_permutationExample1/main.cpp
------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <iterator> #include <vector>  int main() {   std::vector<int> v = {1,2,3};    assert(std::is_sorted(v.begin(),v.end())     && "The vector must be sorted to see all permutations");    //Display std::vector   std::cout << "Initial v: ";   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));   std::cout << '\n';    //Obtain the next permutation   while(std::next_permutation(v.begin(),v.end()))   {     //Display std::vector     std::cout << "Next permutation: ";     std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));     std::cout << '\n';   }    //Sort and reverse the std::vector   std::sort(v.begin(),v.end());   std::reverse(v.begin(),v.end());    //Display std::vector   std::cout << "Reverse-sorted v: ";   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));   std::cout << '\n';    //Obtain the previous permutation   while(std::prev_permutation(v.begin(),v.end()))   {     //Display std::vector     std::cout << "Previous permutation: ";     std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));     std::cout << '\n';   } }  /* Screen output  Initial v: 1 2 3 Next permutation: 1 3 2 Next permutation: 2 1 3 Next permutation: 2 3 1 Next permutation: 3 1 2 Next permutation: 3 2 1 Reverse-sorted v: 3 2 1 Previous permutation: 3 1 2 Previous permutation: 2 3 1 Previous permutation: 2 1 3 Previous permutation: 1 3 2 Previous permutation: 1 2 3 Press <RETURN> to close this window...  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
