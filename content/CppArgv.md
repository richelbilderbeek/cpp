



 

 

 

 

 

([C++](Cpp.htm)) [argv](CppArgv.htm)
====================================

 

[argv](CppArgv.htm) holds the first index of an [array](CppArray.htm) of
strings, where [argc](CppArgc.htm) holds the size of
[argv](CppArgv.htm). With [argc](CppArgc.htm) and [argv](CppArgv.htm)
you can access the arguments [main](CppMain.htm) is called with from (by
the [operating system](CppOs.htm)).

 

One of the two standard forms of [main](CppMain.htm) is \[1\]:

 

  -----------------------------------
  ` int main() { /* Your code */ }`
  -----------------------------------

 

[argv](CppArgv.htm) contains the filename of the program itself at index
zero and then the parameters the user gave when starting the executable.

 

 

 

 

 

Example
-------

 

This example shows all parameters a user entered.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main(int argc, char* argv[]) {   for(int i=0; i!=argc; ++i)   {     std::cout << i << " : " << argv[i] << '\n';   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------

 

This means if you start the program (from command-line) with for example
the following line:

 

  -------------------------
  ` TestMain Hello World`
  -------------------------

 

Your output will be something like:

 

  -------------------------------------
  ` 0 : TestMain 1 : Hello 2 : World`
  -------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.2

 

 

 

 

 





 



