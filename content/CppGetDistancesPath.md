[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetDistancesPath](CppGetDistancesPath.htm)
============================================================

 

[GetDistancesPath](CppGetDistancesPath.htm) is a [maze](CppMaze.htm)
[code snippet](CppCodeSnippets.htm): if you have a maze its distances to
the exit of every free square (for example to solve a maze) you need an
[algorithm](CppAlgorithm.htm) to 'walk' over these distances to the
exit. '[GetDistancesPath](CppGetDistancesPath.htm)' does exactly this.

 

 

 

 

 

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

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/GetDistancesPath.htm std::vector<std::vector<int> > GetDistancesPath(   const std::vector<std::vector<int> >& distances,   const int playerX,   const int playerY) {   const int size = distances.size();    std::vector<std::vector<int> > solution(size, std::vector<int>(size,0));   {     int x = playerX;     int y = playerY;     int distance = distances[y][x] - 1;     while (distance >= 0)     {       //We must be where we are now       solution[y][x] = 1;       if ( x!=0      && distances[y][x-1] == distance ) { --x; --distance; continue; }       if ( x!=0      && distances[y][x-1] == distance ) { --x; --distance; continue; }       if ( x!=size-1 && distances[y][x+1] == distance ) { ++x; --distance; continue; }       if ( x!=size-1 && distances[y][x+1] == distance ) { ++x; --distance; continue; }       if ( y!=0      && distances[y-1][x] == distance ) { --y; --distance; continue; }       if ( y!=0      && distances[y-1][x] == distance ) { --y; --distance; continue; }       if ( y!=size-1 && distances[y+1][x] == distance ) { ++y; --distance; continue; }       if ( y!=size-1 && distances[y+1][x] == distance ) { ++y; --distance; continue; }     }   }   return solution; } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
