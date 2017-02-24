



 

 

 

 

 

([C++](Cpp.md)) [Exercise \#3: Don't give away your internals](CppExerciseDontGiveAwayYourInternals.md)
=========================================================================================================

 

Difficulty: 3/10

Date added: 16th of June 2008

 

In this [exercise](CppExercise.md), you must follow the following
advice: 'Don't give away your internals' \[1\]. You will learn something
about method design and a 'loophole' in constness.

 

 

 

 

 

Part \#0: checking your [member function design](CppMemberFunctionDesign.md)
-----------------------------------------------------------------------------

 

You are programming on a Zoo class, containing a
[std::vector](CppVector.md) of Animal. An Animal is an ordinary
[struct](CppStruct.md) containg member variables only (also called a
plain old data type). Your code so far is shown below.

 

  -------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Animal {}; //A plain old data type   struct Zoo {   private:   std::vector<Animal> mAnimals; };`
  -------------------------------------------------------------------------------------------------------------------------------

 

Write a [member function](CppMemberFunction.md) called 'GetAnimals' to
read, and only read, the [std::vector](CppVector.md) of Animal.

 

[View the answer of this
exercise](CppExerciseDontGiveAwayYourInternalsAnswer0.md).

 

 

 

 

 

Part \#1: checking you checking
-------------------------------

 

You still work on the same Zoo and Animal class. But you redesigned
Animal to be an [abstract base class](CppAbstractBaseClass.md). You
have decided to store [pointers](CppPointer.md) to Animal in a
[boost::shared\_ptr](CppShared_ptr.md). Your redesigned code is shown
below.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/shared_ptr.hpp>  struct Animal { }; //An abstract base class   struct Zoo {   private:   std::vector<boost::shared_ptr<Animal> > mAnimals; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Write a [member function](CppMemberFunction.md) called 'GetAnimals' to
read, and only read, the [std::vector](CppVector.md) of
[boost::shared\_ptr](CppShared_ptr.md) of Animal. Check this method.

 

[View the answer of this
exercise](CppExerciseDontGiveAwayYourInternalsAnswer1.md).

 

 

 

 

 

Post your feedback
------------------

 

[Feedback can be posted at the Programmer's Heaven page about this
article](http://www.programmersheaven.com/article/100053-C%2b%2b+exercise%3a+don%27t+give+away+your+internals/info.aspx).

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 28:
    'Don't give away your internals'

 

 

 

 

 





 



