
 

 

 

 

 

([C++](Cpp.md)) [argc](CppArgc.md)
====================================

 

[argc](CppArgc.md) ('Argument Count') holds the size of
[array](CppArray.md) [argv](CppArgv.md), where [argv](CppArgv.md)
holds the first index of this [array](CppArray.md) of strings. With
[argc](CppArgc.md) and [argv](CppArgv.md) you can access the arguments
[main](CppMain.md) is called with from (by the [operating
system](CppOs.md)).

 

One of the two standard forms of [main](CppMain.md) is \[1\]:

 

  -----------------------------------
  ` int main() { /* Your code */ }`
  -----------------------------------

 

[argv](CppArgv.md) contains the filename of the program itself at index
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

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.2

 

 

 

 

 

 

