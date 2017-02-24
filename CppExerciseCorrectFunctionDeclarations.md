[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Exercise \#2: correct function declarations](CppExerciseCorrectFunctionDeclarations.htm)
==========================================================================================================

 

Difficulty: 2/10

Date added: 16th of June 2008

 

In this [exercise](CppExercise.htm), you must argue why all the ten
[function declarations](CppFunctionDeclaration.htm) below are strange
and how these can be improved. Assume all correct [header
files](CppHeaderFile.htm) are [\#included](CppInclude.htm) and all
user-defined [data types](CppDataType.htm) are defined.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` // 0) Get the number of rows in a database const int GetRows(const Database d);   // 1) Declare the main function void main();   // 2) Set a value in a y-x-ordered 2D-vector void Set(std::vector<std::vector<double> >& v, const int y, const int x, const double value);   // 3) Get the sum of a std::vector const int Sum(std::vector<int> v);   // 4) Swap two values const int Swap(int& a, int& b);   // 5) Put the text 'Hello' on screen and return an error code const int SayHello(); //Return an integer error code   // 6) Set a value in an x-y-ordered 2D-vector void Set(std::vector<std::vector<double> >& v, const int& i, const int& j, const double& value);   // 7) Calculate the mean and standard deviation of a std::vector const double MeanAndStdDev(const std::vector<double>& v, double& mean);   // 8) Display a Widget on screen using std::cout void CoutWidget(const Widget& w);   // 9) Assign a color to a certain square on a Rubiks' cube void SetSquare(const Square& s, const Color& c, RubiksCube& c); `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[View the answer of this
exercise](CppExerciseCorrectFunctionDeclarationsAnswer.htm).

 

 

 

 

 

Post your feedback
------------------

 

Feel free to [post your feedback about this exercise at Programmer's
Heaven](http://www.programmersheaven.com/article/104784-C%2b%2b+exercise%3a+correct+function+declarations/info.aspx).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
