[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [function declaration](CppFunctionDeclaration.htm)
===================================================================

 

A [function declaration](CppFunctionDeclaration.htm) states what a
[function](CppFunction.htm) needs and [returns](CppReturn.htm) with
giving its [arguments](CppArgument.htm) proper names (without these
names, it would be a called a function [prototype](CppPrototype.htm)). A
[function declaration](CppFunctionDeclaration.htm) can be seen as a
promise to the [compiler](CppCompiler.htm) that a certain
[function](CppFunction.htm) exists and will be found by the
[linker](CppLinker.htm).

 

Although a [function declaration](CppFunctionDeclaration.htm) tells
nothing about the implementation of the function, an advanced programmer
will assume a lot from it! And sometimes, a [function
declaration](CppFunctionDeclaration.htm) is all you will be allowed to
see. View [Exercise \#2: correct function
declarations](CppExerciseCorrectFunctionDeclarations.htm) to learn about
correct [function declarations](CppFunctionDeclaration.htm).

 

Where a [function declaration](CppFunctionDeclaration.htm) tells nothing
about the implementation of the function, a [function
definition](CppFunctionDefinition.htm) consists of a [function
declaration](CppFunctionDeclaration.htm) including its implementation.

 

[Function declarations](CppFunctionDeclaration.htm) are commonly found
in [header files (.h)](CppHeaderFile.htm), where [function
definitions](CppFunctionDefinition.htm) in [implementation (.cpp)
files](CppImplementationFile.htm).

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

Below I give some [function declarations](CppFunctionDeclaration.htm)
and how to read them.

 

  ---------------------
  ` void SayHello();`
  ---------------------

 

The function SayHello lets the computer say hello in a certain
unspecified way.

 

  -------------------------------
  ` void Swap(int& a, int& b);`
  -------------------------------

 

The function [Swap](CppSwap.htm) uses two non-copied values (due to the
[reference](CppReference.htm)) and modifies (due to the omission of
[const](CppConst.htm)) them both. It probably swaps the values of 'a'
and 'b'. [Swap](CppSwap.htm) does nothing more, because it has no
([void](CppVoid.htm)) [return type](CppReturnType.htm).

 

  ------------------------------------
  ` int GetRows(const Database& d);`
  ------------------------------------

 

The function GetRows obtains the number of rows (the
[const](CppConst.htm) [int](CppInt.htm) [return
type](CppReturnType.htm)) from a certain Database. It needs an existing
Database (it uses a [reference](CppReference.htm), instead of a
[pointer](CppPointer.htm) that can be [null](CppNull.htm)) and does not
copy (due to the [reference](CppReference.htm)) nor modify (due to the
[const](CppConst.htm)) it.

 

  ----------------------------------------
  ` int Sum(const std::vector<int>& v);`
  ----------------------------------------

 

The function Sum obtains the sum of values (the [const](CppConst.htm)
[int](CppInt.htm) [return type](CppReturnType.htm)) from a certain
[std::vector](CppStdVector.htm). It needs an existing
[std::vector](CppStdVector.htm) (it uses a
[reference](CppReference.htm), instead of a [pointer](CppPointer.htm)
that can be [null](CppNull.htm)) and does not copy (due to the
[reference](CppReference.htm)) nor modify (due to the
[const](CppConst.htm)) it.

 

  ------------------------------------------------------------------------------------
  ` void MeanAndStdDev(const std::vector<double>& v, double& mean, double& stdDev);`
  ------------------------------------------------------------------------------------

 

The function [MeanAndStdDev](CppMeanAndStdDev.htm) uses an existing
[std::vector](CppVector.htm) (it uses a [reference](CppReference.htm),
instead of a [pointer](CppPointer.htm) that can be [null](CppNull.htm))
and does not copy (due to the [reference](CppReference.htm)) nor modify
(due to the [const](CppConst.htm)) it.
[MeanAndStdDev](CppMeanAndStdDev.htm) does not [return](CppReturn.htm)
the mean and standard deviation by its [return type](CppReturnType.htm)
([void](CppVoid.htm)), but by using two [references](CppReference.htm).
Therefore, the caller of [MeanAndStdDev](CppMeanAndStdDev.htm) must
first create two [doubles](CppDouble.htm), which will store the mean and
standard deviation after the call to
[MeanAndStdDev](CppMeanAndStdDev.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
