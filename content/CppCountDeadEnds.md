

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CountDeadEnds](CppCountDeadEnds.htm)
======================================================

 

[CountDeadEnds](CppCountDeadEnds.htm) is a [maze](CppMaze.htm) [code
snippet](CppCodeSnippets.htm) that counts all the dead ends in a maze,
for example the mazes created by
[CreateMaze](CppCreateMaze.htm)/[CreateSloppyMaze](CppCreateSloppyMaze.htm).

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 [GUI](CppGui.htm) Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)
-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

 

 

 

 

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppCountDeadEnds.htm const int CountDeadEnds(const std::vector<std::vector<int> >& maze) {   const int size = maze.size();    int nDeadEnds = 0;    for (int y=1; y!=size-1; ++y)   {     for (int x=1; x!=size-1; ++x)     {       if (maze[y][x] != 0) continue; //Continue if here is a wall       const int nWalls         = (maze[y+1][x  ] == 1 ? 1 : 0)         + (maze[y-1][x  ] == 1 ? 1 : 0)         + (maze[y  ][x+1] == 1 ? 1 : 0)         + (maze[y  ][x-1] == 1 ? 1 : 0);       if (nWalls == 3) ++nDeadEnds;      }   }   return nDeadEnds; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
