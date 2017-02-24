



 

 

 

 

 

([C++](Cpp.htm)) [Exercise \#3: Don't give away your internals](CppExerciseDontGiveAwayYourInternals.htm)
=========================================================================================================

 

Difficulty: 3/10

Date added: 16th of June 2008

 

In this [exercise](CppExercise.htm), you must follow the following
advice: 'Don't give away your internals' \[1\]. You will learn something
about method design and a 'loophole' in constness.

 

 

 

 

 

Part \#0: checking your [member function design](CppMemberFunctionDesign.htm)
-----------------------------------------------------------------------------

 

You are programming on a Zoo class, containing a
[std::vector](CppVector.htm) of Animal. An Animal is an ordinary
[struct](CppStruct.htm) containg member variables only (also called a
plain old data type). Your code so far is shown below.

 

  -------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Animal {}; //A plain old data type   struct Zoo {   private:   std::vector<Animal> mAnimals; };`
  -------------------------------------------------------------------------------------------------------------------------------

 

Write a [member function](CppMemberFunction.htm) called 'GetAnimals' to
read, and only read, the [std::vector](CppVector.htm) of Animal.

 

[View the answer of this
exercise](CppExerciseDontGiveAwayYourInternalsAnswer0.htm).

 

 

 

 

 

Part \#1: checking you checking
-------------------------------

 

You still work on the same Zoo and Animal class. But you redesigned
Animal to be an [abstract base class](CppAbstractBaseClass.htm). You
have decided to store [pointers](CppPointer.htm) to Animal in a
[boost::shared\_ptr](CppShared_ptr.htm). Your redesigned code is shown
below.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/shared_ptr.hpp>  struct Animal { }; //An abstract base class   struct Zoo {   private:   std::vector<boost::shared_ptr<Animal> > mAnimals; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Write a [member function](CppMemberFunction.htm) called 'GetAnimals' to
read, and only read, the [std::vector](CppVector.htm) of
[boost::shared\_ptr](CppShared_ptr.htm) of Animal. Check this method.

 

[View the answer of this
exercise](CppExerciseDontGiveAwayYourInternalsAnswer1.htm).

 

 

 

 

 

Post your feedback
------------------

 

[Feedback can be posted at the Programmer's Heaven page about this
article](http://www.programmersheaven.com/article/100053-C%2b%2b+exercise%3a+don%27t+give+away+your+internals/info.aspx).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 28:
    'Don't give away your internals'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
