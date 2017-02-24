[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SolveMaze](CppSolveMaze.htm)
==============================================

 

[Maze](CppMaze.htm) [code snippet](CppCodeSnippets.htm) to solves a
maze, for example the mazes created by
[CreateMaze](CppCreateMaze.htm)/[CreateSloppyMaze](CppCreateSloppyMaze.htm).
Relies heavily on the [algorithms](CppAlgorithm.htm)
[GetMazeDistances](CppGetMazeDistances.htm) and
[GetDistancesPath](CppGetDistancesPath.htm). Note that the code below is
not an efficient [algorithm](CppAlgorithm.htm): the
[std::vector](CppVector.htm) created by
[GetMazeDistances](CppGetMazeDistances.htm) remains the same, as long as
the maze remains the same. When the maze does remain the same, I'd
suggest to calculate the maze distances once and store it, from then on
calling [GetDistancesPath](CppGetDistancesPath.htm) only.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  //From http://www.richelbilderbeek.nl/CppSolveMaze.htm std::vector<std::vector<int> > SolveMaze(   const std::vector<std::vector<int> >& maze,   const int x1,   const int y1,   const int x2,   const int y2) {   //Assume maze is square   assert(maze[0].size() == maze.size());   assert(maze[y1][x1] == 0); //Assume starting point is no wall   assert(maze[y2][x2] == 0); //Assume end point is no wall    const std::vector<std::vector<int> > distances(GetMazeDistances(maze,x2,y2));   return GetDistancesPath(distances,x1,y1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
