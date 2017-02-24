



 

 

 

 

 

([C++](Cpp.htm)) [InputQuery](CppVclInputQuery.htm)
===================================================

 

A [VCL dialog](CppVclDialog.htm) asking for a value.

 

To use [InputQuery](CppVclInputQuery.htm) , [\#include](CppInclude.htm)
the [header file](CppHeaderFile.htm) dialogs.hpp.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` String userInput = ""; const bool inputGiven = InputQuery(   "Hello World", //The caption of the InputBox   "What do you want me to say (click Cancel for no reply)?", //The question asked   userInput);   if (inputGiven==true) ShowMessage(userInput);`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

If the user clicks Cancel or Close, the
[InputQuery](CppVclInputQuery.htm) [returns](CppReturn.htm)
[false](CppFalse.htm), else it [returns](CppReturn.htm)
[true](CppTrue.htm) and the input is given in userInput.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
