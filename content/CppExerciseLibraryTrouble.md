
 

 

 

 

 

([C++](Cpp.md)) ![C++98](PicCpp98.png)![C++ Builder](PicCppBuilder.png) [Exercise \#8: library trouble](CppExerciseLibraryTrouble.md)
=======================================================================================================================================

 

Difficulty: 2/10

Date added: 31th of May 2009

 

This exercise is only for those that use the [C++
Builder](CppBuilder.md) 6.0 [library](CppLibrary.md) (otherwise you
will not run into the same trouble).

 

In this [exercise](CppExercise.md), you learn to overcome trouble from
your [library](CppLibrary.md) and an unexpected difference between
[static\_cast](CppStatic_cast.md) and [const\_cast](CppConst_cast.md).

 

 

 

 

 

Any programmer might want to write code like below:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),n,'*'); //Search for three successive asterisks`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Programmers (like me) that use the [C++ Builder](CppBuilder.md) 6.0
Enterprise edition [IDE](CppIde.md) with the Borland
[compiler](CppCompiler.md) [BCC32.EXE](CppBcc32Exe.md) (version
6.0.10.157) will be in for a surprise: an unexpected [compile
error](CppCompileError.md)!

 

The [compile error](CppCompileError.md) given is 'Cannot modify
[const](CppConst.md) object', because 'n' is of type
'[const](CppConst.md) [int](CppInt.md)'.

 

 

 

 

 

Question \#0
------------

 

Why doesn't this [compile](CppCompiler.md)?

 

[View the answer of this exercise](CppExerciseLibraryTroubleAnswer0.md)

 

 

 

 

 

Question \#1
------------

 

It is generally a bad idea to modify standard [header
files](CppHeaderFile.md). Assume you do not want to do this.

 

Which workarounds can you find to solve this problem?

 

Which one is best?

 

[View the answer of this exercise](CppExerciseLibraryTroubleAnswer1.md)

 

 

 

 

 

Post your feedback
------------------

 

Feedback can be posted at [the Programmer's Heaven page about this
exercise](http://www.programmersheaven.com/article/102868-C%2b%2b+exercise%3a+library+trouble/info.aspx).

 

 

 

 

 

 

