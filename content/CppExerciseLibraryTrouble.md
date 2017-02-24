



 

 

 

 

 

([C++](Cpp.htm)) ![C++98](PicCpp98.png)![C++ Builder](PicCppBuilder.png) [Exercise \#8: library trouble](CppExerciseLibraryTrouble.htm)
=======================================================================================================================================

 

Difficulty: 2/10

Date added: 31th of May 2009

 

This exercise is only for those that use the [C++
Builder](CppBuilder.htm) 6.0 [library](CppLibrary.htm) (otherwise you
will not run into the same trouble).

 

In this [exercise](CppExercise.htm), you learn to overcome trouble from
your [library](CppLibrary.htm) and an unexpected difference between
[static\_cast](CppStatic_cast.htm) and [const\_cast](CppConst_cast.htm).

 

 

 

 

 

Any programmer might want to write code like below:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),n,'*'); //Search for three successive asterisks`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Programmers (like me) that use the [C++ Builder](CppBuilder.htm) 6.0
Enterprise edition [IDE](CppIde.htm) with the Borland
[compiler](CppCompiler.htm) [BCC32.EXE](CppBcc32Exe.htm) (version
6.0.10.157) will be in for a surprise: an unexpected [compile
error](CppCompileError.htm)!

 

The [compile error](CppCompileError.htm) given is 'Cannot modify
[const](CppConst.htm) object', because 'n' is of type
'[const](CppConst.htm) [int](CppInt.htm)'.

 

 

 

 

 

Question \#0
------------

 

Why doesn't this [compile](CppCompiler.htm)?

 

[View the answer of this exercise](CppExerciseLibraryTroubleAnswer0.htm)

 

 

 

 

 

Question \#1
------------

 

It is generally a bad idea to modify standard [header
files](CppHeaderFile.htm). Assume you do not want to do this.

 

Which workarounds can you find to solve this problem?

 

Which one is best?

 

[View the answer of this exercise](CppExerciseLibraryTroubleAnswer1.htm)

 

 

 

 

 

Post your feedback
------------------

 

Feedback can be posted at [the Programmer's Heaven page about this
exercise](http://www.programmersheaven.com/article/102868-C%2b%2b+exercise%3a+library+trouble/info.aspx).

 

 

 

 

 





 



