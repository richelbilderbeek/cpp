[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [continue](CppContinue.htm)
============================================

 

[continue](CppContinue.htm) is a [keyword](CppKeyword.htm) to skip the
rest of a [for](CppFor.htm)/[while](CppWhile.htm)-[loop](CppLoop.htm)
and continue to perform the next.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` for (/* something #1 */ ) {   //This line is always executed   if (/* something #2 */) continue;   //This line is only executed if 'something #2' is false }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Consider to never use [continue](CppContinue.htm) \[1\].

 

 

 

 

 

Example: [CountDeadEnds](CppCountDeadEnds.htm)
----------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   //From http://www.richelbilderbeek.nl/CppCountDeadEnds.htm const int CountDeadEnds(const std::vector<std::vector<int> >& maze) {   const int size = static_cast<int>(maze.size());   int nDeadEnds = 0;   for (int y=1; y!=size-1; ++y)   {     for (int x=1; x!=size-1; ++x)     {       if (maze[y][x] != 0) continue; //Continue if here is a wall       const int nWalls       = (maze[y+1][x ] == 1 ? 1 : 0)       + (maze[y-1][x ] == 1 ? 1 : 0)       + (maze[y ][x+1] == 1 ? 1 : 0)       + (maze[y ][x-1] == 1 ? 1 : 0);       if (nWalls == 3) ++nDeadEnds;      }   }   return nDeadEnds; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 190 (MISRA Rule 57): 'The continue
    statement shall not be used.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
