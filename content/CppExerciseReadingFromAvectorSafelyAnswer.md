



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#4: Reading from a std::vector safely](CppExerciseReadingFromAvectorSafelyAnswer.htm)
===========================================================================================================================

 

This is the answer of [Exercise \#4: Reading from a std::vector
safely](CppExerciseReadingFromAvectorSafely.htm).

 

First, I start this answer with one of my favorite
[quotes](CppQuotes.htm):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Van mijn std::vector bestaat deze index zeker.   Many, many of my students before an access violation   Translation: I am sure that this is a valid index in my std::vector`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <vector>   int main() {   std::vector<int> v;     //Lots of code #0     const int maxIndex = static_cast<int>(v.size());     //Lots of code #1     const int index = std::rand() % maxIndex; //Draw a random index     //Lots of code #2     v[index] = 0;     //Lots of code #3 }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

It might be true that the variable 'index' is not a valid index of
[std::vector](CppVector.htm) 'v':

\#0) at the time 'maxIndex' was defined, the
[std::vector](CppVector.htm) 'v' might have changed in size

\#1) at the time 'index' was defined, the [std::vector](CppVector.htm)
'v' might have changed in size

 

 

 

 

 

1) How can you prevent this?
----------------------------

 

You assume that 'index' is a valid index of [std::vector](CppVector.htm)
'v'.

 

So use [assert](CppAssert.htm):

 

  ------------------
  ` v[index] = 0;`
  ------------------

 

Note
----

 

 

 

 

 

Writing asserts for each [std::vector](CppVector.htm) access is not
necessary.

 

If the [std::vector](CppVector.htm) in this exercise was a
[const](CppConst.htm) [std::vector](CppVector.htm), you can be 100% sure
that it did not change in size, so you can be sure the
[std::vector](CppVector.htm) access is valid.

 

If short pieces of code (IMHO: 5 lines) in which you do not see an
change of [std::vector](CppVector.htm)'s size, you can be 99,9% sure
that [std::vector](CppVector.htm) access is valid. Be aware that this
short piece of code can expand in time, decreasing the certainty that
the access is valid.

 

If your program gives an access violation (perhaps in the form of
[external exception
EEFFACE](CppRuntimeErrorExternalExceptionEefface.htm)), it will always
be time-inexpensive to add [assert](CppAssert.htm). And you might have
found the problem. To again [quote](CppQuotes.htm) many of my students
'I am sure that this is a valid index in my std::vector'. How often have
they been wrong...

 

 

 

 

 





 



