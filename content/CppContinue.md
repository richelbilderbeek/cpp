
 

 

 

 

 

([C++](Cpp.md)) [continue](CppContinue.md)
============================================

 

[continue](CppContinue.md) is a [keyword](CppKeyword.md) to skip the
rest of a [for](CppFor.md)/[while](CppWhile.md)-[loop](CppLoop.md)
and continue to perform the next.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` for (/* something #1 */ ) {   //This line is always executed   if (/* something #2 */) continue;   //This line is only executed if 'something #2' is false }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Consider to never use [continue](CppContinue.md) \[1\].

 

 

 

 

 

Example: [CountDeadEnds](CppCountDeadEnds.md)
----------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   //From http://www.richelbilderbeek.nl/CppCountDeadEnds.htm const int CountDeadEnds(const std::vector<std::vector<int> >& maze) {   const int size = static_cast<int>(maze.size());   int nDeadEnds = 0;   for (int y=1; y!=size-1; ++y)   {     for (int x=1; x!=size-1; ++x)     {       if (maze[y][x] != 0) continue; //Continue if here is a wall       const int nWalls       = (maze[y+1][x ] == 1 ? 1 : 0)       + (maze[y-1][x ] == 1 ? 1 : 0)       + (maze[y ][x+1] == 1 ? 1 : 0)       + (maze[y ][x-1] == 1 ? 1 : 0);       if (nWalls == 3) ++nDeadEnds;      }   }   return nDeadEnds; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 190 (MISRA Rule 57): 'The continue
    statement shall not be used.'

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
