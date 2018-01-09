
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#3: Don't give away your internals, \#0](CppExerciseDontGiveAwayYourInternalsAnswer0.md)
===============================================================================================================================

 

This is part \#0 of the answer of [exercise \#3: Don't give away your
internals](CppExerciseDontGiveAwayYourInternals.md).

 

 

 

 

 

Part \#0: checking your [member function design](CppMemberFunctionDesign.md)
-----------------------------------------------------------------------------

 

Let's start by defining a test suite. Note that the
[definitions](CppDefinition.md) are not needed, the
[compiler](CppCompiler.md) will give the warnings and errors needed
already.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Animal {   int mX; //It does not matter what mX is... };   struct Zoo {   //The GetAnimals method to be     private:   std::vector<Animal> mAnimals; };     int main() {   Zoo zoo;   zoo.GetAnimals[0].mX = 123; //Must not compile! }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

For the GetAnimals [member function](CppMemberFunction.md), there are
many possibilities:

-   The [member function](CppMemberFunction.md) can be a [const member
    function](CppConstMemberFunction.md) yes or no
-   The [return type](CppReturnType.md) can be a [const return
    type](CppConstReturnType.md) yes or no
-   The [return type](CppReturnType.md) can also be
    std::vector&lt;Animal&gt; or std::vector&lt;const Animals&gt;
-   The animals can be given by using a [reference](CppReference.md) or
    a copy

 

These sixteen possible [member functions](CppMemberFunction.md) are:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` std::vector<Animal> GetAnimals() ; const std::vector<Animal> GetAnimals() ; std::vector<const Animal> GetAnimals() ; const std::vector<const Animal> GetAnimals() ; std::vector<Animal>& GetAnimals() ; const std::vector<Animal>& GetAnimals() ; std::vector<const Animal>& GetAnimals() ; const std::vector<const Animal>& GetAnimals() ; std::vector<Animal> GetAnimals() const; const std::vector<Animal> GetAnimals() const; std::vector<const Animal> GetAnimals() const; const std::vector<const Animal> GetAnimals() const; std::vector<Animal>& GetAnimals() const; const std::vector<Animal>& GetAnimals() const; std::vector<const Animal>& GetAnimals() const; const std::vector<const Animal>& GetAnimals() const;`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The first halve to be taken off the list of possiblities are those that
[return](CppReturn.md) a copy of the [std::vector](CppStdVector.md) of
Animals. We don't need a copy of all those animals (imagine that a Zoo
has millions of animals!). We do need to do is get a safe read-only
reference to the animals (Note: perhaps later we will get back to
this!).

 

The second halve to be taken off the list of possiblities are the
non-[const-methods](CppConstMethod.md). We intend to only read from the
Animals, so it should not change our Zoo. It should also be possible to
read the Animals from a const Zoo.

 

This leaves only four options left, which I'll give numbers from now on:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` std::vector< Animal>& GetAnimals0() const; const std::vector< Animal>& GetAnimals1() const; std::vector<const Animal>& GetAnimals2() const; const std::vector<const Animal>& GetAnimals3() const;`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now the real tests start, even before [defining](CppDefinition.md) the
GetAnimal [member functions](CppMemberFunction.md).

 

The following line must not [compile](CppCompiler.md):

 

  -----------------------------------
  ` zoo.GetAnimalsX()[0].mX = 123;`
  -----------------------------------

 

Three out of four correctly refrain from [compiling](CppCompiler.md),
where GetAnimals0 just performs the unwanted modification. GetAnimals0
is marked as a potential source for bugs, and taken off our list.

 

With three [member functions](CppMemberFunction.md) left in the race,
it's time to [define](CppDefinition.md) them:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` const std::vector< Animal>& GetAnimals1() const { return mAnimals; } std::vector<const Animal>& GetAnimals2() const { return mAnimals; } //Does not compile const std::vector<const Animal>& GetAnimals3() const { return mAnimals; } //Does not compile`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

It appears that GetAnimals2 and GetAnimals3 do not
[compile](CppCompiler.md). This is correct: we indeed give away a
[reference](CppReference.md) to a
[std::vector](CppStdVector.md)&lt;Animal&gt; instead of to a
[std::vector](CppStdVector.md)&lt;[const](CppConst.md) Animal&gt;. If we
want to return a [std::vector](CppStdVector.md)&lt;[const](CppConst.md)
Animal&gt; then we need to make a copy of all those animals. Let's
refrain from this (for now) and call GetAnimals1 the winner.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Zoo {   const std::vector<Animal>& GetAnimals() const { return mAnimals; } //Brilliant!     private:   std::vector<Animal> mAnimals; };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------

 

Go to the answer of the follow-up question: [Answer of exercise \#3:
Don't give away your internals,
\#1](CppExerciseDontGiveAwayYourInternalsAnswer1.md)

 

 

 

 

 

Epilogue
--------

 

The exercise is called 'Don't give away your internals' (after \[1\]).
One of the points of this item was the question: 'What do you want to do
with this information?'. If you want to use [std::cout](CppStdCout.md) on
the implementation of Zoo (that is, the [std::vector](CppStdVector.md) of
Animal), why not enable to use [std::cout](CppStdCout.md) on Zoo itself?
Think if you perhaps do not need the GetAnimals (or similar, as in your
code) method after all.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 28:
    'Don't give away your internals'

 

 

 

 

 

 

