
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#4: Reading from a std::vector safely](CppExerciseReadingFromAvectorSafelyAnswer.md)
===========================================================================================================================

 

This is the answer of [Exercise \#4: Reading from a std::vector
safely](CppExerciseReadingFromAvectorSafely.md).

 

First, I start this answer with one of my favorite
[quotes](CppQuotes.md):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Van mijn std::vector bestaat deze index zeker.   Many, many of my students before an access violation   Translation: I am sure that this is a valid index in my std::vector`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <vector>   int main() {   std::vector<int> v;     //Lots of code #0     const int maxIndex = static_cast<int>(v.size());     //Lots of code #1     const int index = std::rand() % maxIndex; //Draw a random index     //Lots of code #2     v[index] = 0;     //Lots of code #3 }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

It might be true that the variable 'index' is not a valid index of
[std::vector](CppVector.md) 'v':

\#0) at the time 'maxIndex' was defined, the
[std::vector](CppVector.md) 'v' might have changed in size

\#1) at the time 'index' was defined, the [std::vector](CppVector.md)
'v' might have changed in size

 

 

 

 

 

1) How can you prevent this?
----------------------------

 

You assume that 'index' is a valid index of [std::vector](CppVector.md)
'v'.

 

So use [assert](CppAssert.md):

 

  ------------------
  ` v[index] = 0;`
  ------------------

 

Note
----

 

 

 

 

 

Writing asserts for each [std::vector](CppVector.md) access is not
necessary.

 

If the [std::vector](CppVector.md) in this exercise was a
[const](CppConst.md) [std::vector](CppVector.md), you can be 100% sure
that it did not change in size, so you can be sure the
[std::vector](CppVector.md) access is valid.

 

If short pieces of code (IMHO: 5 lines) in which you do not see an
change of [std::vector](CppVector.md)'s size, you can be 99,9% sure
that [std::vector](CppVector.md) access is valid. Be aware that this
short piece of code can expand in time, decreasing the certainty that
the access is valid.

 

If your program gives an access violation (perhaps in the form of
[external exception
EEFFACE](CppRuntimeErrorExternalExceptionEefface.md)), it will always
be time-inexpensive to add [assert](CppAssert.md). And you might have
found the problem. To again [quote](CppQuotes.md) many of my students
'I am sure that this is a valid index in my std::vector'. How often have
they been wrong...

 

 

 

 

 

 

