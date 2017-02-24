
 

 

 

 

 

([C++](Cpp.md)) [function declaration](CppFunctionDeclaration.md)
===================================================================

 

A [function declaration](CppFunctionDeclaration.md) states what a
[function](CppFunction.md) needs and [returns](CppReturn.md) with
giving its [arguments](CppArgument.md) proper names (without these
names, it would be a called a function [prototype](CppPrototype.md)). A
[function declaration](CppFunctionDeclaration.md) can be seen as a
promise to the [compiler](CppCompiler.md) that a certain
[function](CppFunction.md) exists and will be found by the
[linker](CppLinker.md).

 

Although a [function declaration](CppFunctionDeclaration.md) tells
nothing about the implementation of the function, an advanced programmer
will assume a lot from it! And sometimes, a [function
declaration](CppFunctionDeclaration.md) is all you will be allowed to
see. View [Exercise \#2: correct function
declarations](CppExerciseCorrectFunctionDeclarations.md) to learn about
correct [function declarations](CppFunctionDeclaration.md).

 

Where a [function declaration](CppFunctionDeclaration.md) tells nothing
about the implementation of the function, a [function
definition](CppFunctionDefinition.md) consists of a [function
declaration](CppFunctionDeclaration.md) including its implementation.

 

[Function declarations](CppFunctionDeclaration.md) are commonly found
in [header files (.h)](CppHeaderFile.md), where [function
definitions](CppFunctionDefinition.md) in [implementation (.cpp)
files](CppImplementationFile.md).

 

 

 

 

 

[Examples](CppExample.md)
--------------------------

 

Below I give some [function declarations](CppFunctionDeclaration.md)
and how to read them.

 

  ---------------------
  ` void SayHello();`
  ---------------------

 

The function SayHello lets the computer say hello in a certain
unspecified way.

 

  -------------------------------
  ` void Swap(int& a, int& b);`
  -------------------------------

 

The function [Swap](CppSwap.md) uses two non-copied values (due to the
[reference](CppReference.md)) and modifies (due to the omission of
[const](CppConst.md)) them both. It probably swaps the values of 'a'
and 'b'. [Swap](CppSwap.md) does nothing more, because it has no
([void](CppVoid.md)) [return type](CppReturnType.md).

 

  ------------------------------------
  ` int GetRows(const Database& d);`
  ------------------------------------

 

The function GetRows obtains the number of rows (the
[const](CppConst.md) [int](CppInt.md) [return
type](CppReturnType.md)) from a certain Database. It needs an existing
Database (it uses a [reference](CppReference.md), instead of a
[pointer](CppPointer.md) that can be [null](CppNull.md)) and does not
copy (due to the [reference](CppReference.md)) nor modify (due to the
[const](CppConst.md)) it.

 

  ----------------------------------------
  ` int Sum(const std::vector<int>& v);`
  ----------------------------------------

 

The function Sum obtains the sum of values (the [const](CppConst.md)
[int](CppInt.md) [return type](CppReturnType.md)) from a certain
[std::vector](CppStdVector.md). It needs an existing
[std::vector](CppStdVector.md) (it uses a
[reference](CppReference.md), instead of a [pointer](CppPointer.md)
that can be [null](CppNull.md)) and does not copy (due to the
[reference](CppReference.md)) nor modify (due to the
[const](CppConst.md)) it.

 

  ------------------------------------------------------------------------------------
  ` void MeanAndStdDev(const std::vector<double>& v, double& mean, double& stdDev);`
  ------------------------------------------------------------------------------------

 

The function [MeanAndStdDev](CppMeanAndStdDev.md) uses an existing
[std::vector](CppVector.md) (it uses a [reference](CppReference.md),
instead of a [pointer](CppPointer.md) that can be [null](CppNull.md))
and does not copy (due to the [reference](CppReference.md)) nor modify
(due to the [const](CppConst.md)) it.
[MeanAndStdDev](CppMeanAndStdDev.md) does not [return](CppReturn.md)
the mean and standard deviation by its [return type](CppReturnType.md)
([void](CppVoid.md)), but by using two [references](CppReference.md).
Therefore, the caller of [MeanAndStdDev](CppMeanAndStdDev.md) must
first create two [doubles](CppDouble.md), which will store the mean and
standard deviation after the call to
[MeanAndStdDev](CppMeanAndStdDev.md).

 

 

 

 

 

 

