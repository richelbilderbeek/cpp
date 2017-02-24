



 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#3: Don't give away your internals, \#1](CppExerciseDontGiveAwayYourInternalsAnswer1.md)
===============================================================================================================================

 

This is part \#1 of the answer of [exercise \#3: Don't give away your
internals](CppExerciseDontGiveAwayYourInternals.md) and the follow-up
of [Answer of exercise \#3: Don't give away your internals,
\#0](CppExerciseDontGiveAwayYourInternalsAnswer0.md).

 

 

 

 

 

Part \#1: checking you checking
-------------------------------

 

Let's again start by defining a similar test suite.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  #include <boost/shared_ptr.hpp>  struct Animal //An abstract base class {   int mX; //It does not matter what mX is... };   struct Zoo {   //The GetAnimals method...     private:   std::vector<boost::shared_ptr<Animal> > mAnimals; };   int main() {   Zoo zoo;   zoo.GetAnimals[0]->mX = 123; //Must not compile! }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

For the GetAnimals method, there are now even more possibilities:

-   The [member function](CppMemberFunction.md) can be a [const member
    function](CppConstMemberFunction.md) yes or no
-   The [return type](CppReturnType.md) can be a [const return
    type](CppConstReturnType.md) yes or no
-   The [return type](CppReturnType.md) can have a const or non-const
    [boost::shared\_ptr](CppShared_ptr.md)
-   The [return type](CppReturnType.md) can have a const or non-const
    Animal held by the [boost::shared\_ptr](CppShared_ptr.md)
-   The animals can be given by using a [reference](CppReference.md) or
    a copy

 

Again, we do not need a copy of those Animals (Note: perhaps later we
will get back to this!) and we do not use the non-[const member
functions](CppConstMethod.md).

 

This leaves only eight options left, which I'll give numbers from now
on:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` std::vector< boost::shared_ptr< Animal> >& GetAnimals0() const; const std::vector< boost::shared_ptr< Animal> >& GetAnimals1() const; std::vector<const boost::shared_ptr< Animal> >& GetAnimals2() const; const std::vector<const boost::shared_ptr< Animal> >& GetAnimals3() const; std::vector< boost::shared_ptr<const Animal> >& GetAnimals4() const; const std::vector< boost::shared_ptr<const Animal> >& GetAnimals5() const; std::vector<const boost::shared_ptr<const Animal> >& GetAnimals6() const; const std::vector<const boost::shared_ptr<const Animal> >& GetAnimals7() const;`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now the real tests start, even before defining the GetAnimal methods.

 

The following line must not compile:

 

  ------------------------------------
  ` zoo.GetAnimalsX()[0]->mX = 123;`
  ------------------------------------

 

The first Four versions of GetAnimals will compile against our goal! The
boost::shared\_ptr must hold a const Animal, because [const is not
deep](CppConstIsNotDeep.md).

 

With three methods left in the race, it's time to (try to) define them:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` std::vector<boost::shared_ptr<const Animal> >& GetAnimals4() const {   return mAnimals; //Does not compile! }  const std::vector<boost::shared_ptr<const Animal> >& GetAnimals5() const {   return mAnimals; //Does not compile! }  std::vector<const boost::shared_ptr<const Animal> >& GetAnimals6() const {   return mAnimals; //Does not compile! }  const std::vector<const boost::shared_ptr<const Animal> >& GetAnimals7() const {   return mAnimals; //Does not compile! }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Blimey, none of these compile! This is because a Zoo holds non-const
Animals inside its [boost::shared\_ptr](CppShared_ptr.md)s. Because of
this it is impossible to return a reference of const Animals back! How
can we solve this?

 

The solution is...

 

(I wrote that I'd get back to it)

 

It is...

 

(and now is the time)

 

To make a copy!

 

I'll directly show you the methods in full:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` std::vector<boost::shared_ptr<const Animal> > GetAnimals4() const {   return std::vector<boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end()); }  const std::vector<boost::shared_ptr<const Animal> > GetAnimals5() const {   return std::vector<boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end()); }  std::vector<const boost::shared_ptr<const Animal> > GetAnimals6() const {   return std::vector<const boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end()); }  const std::vector<const boost::shared_ptr<const Animal> > GetAnimals7() const {   return std::vector<const boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end()); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Does this makes you head spin? It might, but it's for a good cause: to
not give away our internals.

 

After this change, all four GetAnimals methods correctly refrain from
compiling in this test:

 

  ------------------------------------
  ` zoo.GetAnimalsX()[0]->mX = 123;`
  ------------------------------------

 

Great, we cannot modify an Animal. But, we might be able to modify a
boost::shared\_ptr!

 

Time for another test:

 

  ----------------------------------
  ` zoo.GetAnimalsX()[0].reset();`
  ----------------------------------

 

This will compile for GetAnimals4, so it's taken off our list, leaving
only three candidates:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` const std::vector<boost::shared_ptr<const Animal> > GetAnimals5() const {   return std::vector<boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end()); }  std::vector<const boost::shared_ptr<const Animal> > GetAnimals6() const {   return std::vector<const boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end()); }  const std::vector<const boost::shared_ptr<const Animal> > GetAnimals7() const {   return std::vector<const boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end()); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Though unexpected, this exercise is finished. When using a
boost::shared\_ptr, I cannot show that GetAnimals5 is not the candidate
your're looking for. I cannot show this, because a boost::shared\_ptr
does not have a non-const-method that does not change an Animal. The
difference between GetAnimals6 and GetAnimals7 only appear in a very
small percentage of code.

 

My favorite would be GetAnimals7, because it has the most consts:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Zoo {   const std::vector<const boost::shared_ptr<const Animal> > GetAnimals7() const   {     return std::vector<const boost::shared_ptr<const Animal> >(mAnimals.begin(),mAnimals.end());   }   private:   std::vector<boost::shared_ptr<Animal> > mAnimals; };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

I hope you enjoyed this exercise.

 

 

 

 

 

Epilogue
--------

 

The exercise is called 'Don't give away your internals' (after \[1\]).
One of the points of this item was the question: 'What do you want to do
with this information?'. If you want to use std::cout on the
implementation of Zoo (that is, the std::vector of Animal), why not
enable to use std::cout on Zoo itself? Think if you perhaps do not need
the GetAnimals (or similar, as in your code) method after all.

 

 

 

 

 

[Reference](CppReferences.md)
------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 28:
    'Don't give away your internals'

 

 

 

 

 





 



