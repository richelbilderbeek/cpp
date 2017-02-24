
 

 

 

 

 

([C++](Cpp.md)) [GetNonDeadEnds](CppGetNonDeadEnds.md)
========================================================

 

[GetNonDeadEnds](CppGetNonDeadEnds.md) is a [maze](CppMaze.md) [code
snippet](CppCodeSnippets.md) to obtain all the non-dead-ends (that is,
spots with at least two adjacent free spots) in a maze, for example the
mazes created by
[CreateMaze](CppCreateMaze.md)/[CreateSloppyMaze](CppCreateSloppyMaze.md).

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 [GUI](CppGui.md) Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)
-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppGetNonDeadEnds.htm std::vector<std::pair<int,int> > GetNonDeadEnds(const std::vector<std::vector<int> >& maze) std::vector<std::pair<int,int> > GetNonDeadEnds(const std::vector<std::vector<int> >& maze) {   const int size = maze.size();    std::vector<std::pair<int,int> > nonDeadEnds;    for (int y=1; y!=size-1; ++y)   {     for (int x=1; x!=size-1; ++x)     {       if (maze[y][x] != 0) continue; //Continue if here is a wall       const int nWalls         = (maze[y+1][x  ] == 1 ? 1 : 0)         + (maze[y-1][x  ] == 1 ? 1 : 0)         + (maze[y  ][x+1] == 1 ? 1 : 0)         + (maze[y  ][x-1] == 1 ? 1 : 0);       if (nWalls < 3) nonDeadEnds.push_back(std::make_pair(x,y));      }   }   return nonDeadEnds; } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

