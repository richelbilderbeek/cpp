
 

 

 

 

 

([C++](Cpp.md)) [SolveMaze](CppSolveMaze.md)
==============================================

 

[Maze](CppMaze.md) [code snippet](CppCodeSnippets.md) to solves a
maze, for example the mazes created by
[CreateMaze](CppCreateMaze.md)/[CreateSloppyMaze](CppCreateSloppyMaze.md).
Relies heavily on the [algorithms](CppAlgorithm.md)
[GetMazeDistances](CppGetMazeDistances.md) and
[GetDistancesPath](CppGetDistancesPath.md). Note that the code below is
not an efficient [algorithm](CppAlgorithm.md): the
[std::vector](CppStdVector.md) created by
[GetMazeDistances](CppGetMazeDistances.md) remains the same, as long as
the maze remains the same. When the maze does remain the same, I'd
suggest to calculate the maze distances once and store it, from then on
calling [GetDistancesPath](CppGetDistancesPath.md) only.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  //From http://www.richelbilderbeek.nl/CppSolveMaze.htm std::vector<std::vector<int> > SolveMaze(   const std::vector<std::vector<int> >& maze,   const int x1,   const int y1,   const int x2,   const int y2) {   //Assume maze is square   assert(maze[0].size() == maze.size());   assert(maze[y1][x1] == 0); //Assume starting point is no wall   assert(maze[y2][x2] == 0); //Assume end point is no wall    const std::vector<std::vector<int> > distances(GetMazeDistances(maze,x2,y2));   return GetDistancesPath(distances,x1,y1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

