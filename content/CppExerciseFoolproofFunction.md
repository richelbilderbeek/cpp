



 

 

 

 

 

([C++](Cpp.md)) [Exercise \#1: a foolproof function](CppExerciseFoolproofFunction.md)
=======================================================================================

 

Difficulty: 3/10

Date added: 10th of June 2008

 

In this [exercise](CppExercise.md), you must write a foolproof
[function](CppFunction.md).

 

You are the maintainer of a Thing and the [function](CppFunction.md)
ReadThing below.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(Thing * thing) {   //Read Thing }`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

Make the [function](CppFunction.md) ReadThing foolproof. There are four
different modifications to do:

1.  prevent that Thing is modified
2.  prevent that Thing cannot be read
3.  prevent that Thing is modified in some other way than \#1
4.  document the internal assumptions of the function

 

[View the answer of this
exercise](CppExerciseFoolproofFunctionAnswer.md).

 

 

 

 

 

Feedback
--------

 

Feedback can be posted at [post the Programmer's Heaven page about this
article](http://www.programmersheaven.com/article/100012-C%2b%2b+exercise%3a+a+foolproof+function/info.aspx).

 

 

 

 

 





 



