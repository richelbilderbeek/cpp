
 

 

 

 

 

([C++](Cpp.md)) [InputQuery](CppVclInputQuery.md)
===================================================

 

A [VCL dialog](CppVclDialog.md) asking for a value.

 

To use [InputQuery](CppVclInputQuery.md) , [\#include](CppInclude.md)
the [header file](CppHeaderFile.md) dialogs.hpp.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` String userInput = ""; const bool inputGiven = InputQuery(   "Hello World", //The caption of the InputBox   "What do you want me to say (click Cancel for no reply)?", //The question asked   userInput);   if (inputGiven==true) ShowMessage(userInput);`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

If the user clicks Cancel or Close, the
[InputQuery](CppVclInputQuery.md) [returns](CppReturn.md)
[false](CppFalse.md), else it [returns](CppReturn.md)
[true](CppTrue.md) and the input is given in userInput.

 

 

 

 

 

 

