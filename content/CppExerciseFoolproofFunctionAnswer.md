



 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#1: a foolproof function](CppExerciseFoolproofFunctionAnswer.md)
=======================================================================================================

 

This is the answer of [exercise \#1: a foolproof
function](CppExerciseFoolproofFunction.md).

 

 

 

 

 

1) prevent that Thing is modified
---------------------------------

 

We do not want to modify a Thing. The [compiler](CppCompiler.md),
however, does not know this. The [compiler](CppCompiler.md) thinks we
do want to modify a Thing, because the [pointer](CppPointer.md) to
Thing is not [const](CppConst.md). This makes it possible to write to a
Thing, as shown in the code below:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(Thing * thing) {   thing->mX = 0; //Write to Thing! Must be noticed by the compiler //Read Thing }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To solve this problem, make Thing [const](CppConst.md):

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * thing) {   //thing->mX = 0; //Cannot modify a const object   //Read Thing }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Use [const](CppConst.md) whenever possible \[1-4\].

 

 

 

 

 

2) prevent that Thing cannot be read
------------------------------------

 

Before being read, [pointers](CppPointer.md) must always point to a
valid object. Nothing prevents us from making the
[pointer](CppPointer.md)-to-Thing point to zero:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * thing) {   thing = 0;   //Cannot read from pointer to Thing anymore   //Read Thing }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To solve this problem, make the [pointer](CppPointer.md) itself
[const](CppConst.md) as well. This brings you to the following code:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //thing = 0; //Cannot modify a const object   //Read Thing }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Again, use [const](CppConst.md) whenever possible \[1-4\].

 

 

 

 

 

3) prevent that Thing is modified in some other way than \#1
------------------------------------------------------------

 

Be aware that you can [delete a
pointer-to-const](CppDeletePointerToConst.md). Deleting a Thing,
however, is disastrous:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   delete thing;   //Read Thing   //But there is no Thing anymore! }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To solve this problem, we must modify Thing itself.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing {   int mX;    private:   ~Thing() {} };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now, [exercise \#1: a foolproof
function](CppExerciseFoolproofFunction.md) has succeeded. If you knew
all three steps, you get an A. Congratulations!

 

But...

 

 

 

 

 

3.1) A new problem
------------------

 

A new problem has arisen: we cannot [construct](CppConstructor.md) a
Thing, as it cannot be [deleted](CppDelete.md) when going out of
[scope](CppScope.md):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing {   int mX;    private:   ~Thing() {} };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }   int main() {   Thing t; //Destructor for 'Thing' is not accessible }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Try to solve this problem yourself. Make it work. But keep ReadThing
foolproof.

 

Got it?

 

Already?

 

Are you sure?

 

Okay, I'll show the solutions.

 

The way to solve this problem is to use the [friend](CppFriend.md)
[keyword](CppKeyword.md). I show three possible
[friends](CppFriend.md):

1.  the [main](CppMain.md) [function](CppFunction.md)
2.  a [smart pointer](CppSmartPointer.md)
3.  [boost::checked\_delete](CppChecked_delete.md)

 

'What, use [friend](CppFriend.md)?', I hear you mutter, 'You should
never use [friend](CppFriend.md)!', as well as '[friend](CppFriend.md)
reduces [encapsulation](CppEncapsulation.md)!'. If you just muttered
these words, feel free to [contact me](Contact.md) with a
[reference](CppReferences.md) to the [book](CppBooks.md) in which you
read this. I could not find it anywhere in my literature collection.

 

And also, if you muttered this, read the following three options below
to see that there is more [encapsulation](CppEncapsulation.md), instead
of less: Thing cannot be [destroyed](CppDestructor.md) by anything,
except its *only, single* [friend](CppFriend.md). This makes Thing more
[encapsulated](CppEncapsulation.md) than by making everything able to
[destroy](CppDestructor.md) it. Read it again: making Thing
[destructable](CppDestructor.md) by its *only, single*
[friend](CppFriend.md) only, makes Thing more
[encapsulated](CppEncapsulation.md) by making everything able to
[destroy](CppDestructor.md) it.

 

 

 

 

 

### 3.1.1) [Befriending](CppFriend.md) the [main](CppMain.md) [function](CppFunction.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing {   int mX;    private:   ~Thing() {}   friend int main(); };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }   int main() {   Thing t; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[Befriending](CppFriend.md) the [main](CppMain.md)
[function](CppFunction.md) has its restrictions: a Thing cannot be a
[class](CppClass.md) member. For this simple piece of code, however, it
is a valid solution.

 

 

 

 

 

### 3.1.2) [Befriending](CppFriend.md) a [smart pointer](CppSmartPointer.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory>  struct Thing {   int mX;    private:   ~Thing() {}   friend class std::auto_ptr<Thing>; };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }  int main() {   std::auto_ptr<Thing> t(new Thing); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

A [std::auto\_ptr](CppAuto_ptr.md) calls the
[destructor](CppDestructor.md) of Thing when it goes out of
[scope](CppScope.md). So, when making a
[std::auto\_ptr](CppAuto_ptr.md) a friend of Thing, you can create
[std::auto\_ptr](CppAuto_ptr.md)&lt;Thing&gt;.

 

A drawback of this solution is that a [std::auto\_ptr](CppAuto_ptr.md)
does not have a checked delete (for example
[boost::checked\_delete](CppChecked_delete.md)).

 

 

 

 

 

### 3.1.3) [Befriending](CppFriend.md) [boost::checked\_delete](CppChecked_delete.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/shared_ptr.hpp>  struct Thing {   int mX;    private:   ~Thing() {}   friend void boost::checked_delete<>(Thing *); };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }   int main() {   boost::shared_ptr<Thing> t(new Thing); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

My personal favorite solution. But also this solution has a drawback, as
one can now write the following in ReadThing:

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` void ReadThing(const Thing * const thing) {   boost::checked_delete(thing);   //Read Thing   //But there is no Thing anymore! }`
  ------------------------------------------------------------------------------------------------------------------------------------

 

But the [exercise](CppExercise.md) was to make ReadThing foolproof, not
evil-genius-proof.

 

 

 

 

 

4) Document the internal assumptions of the function
----------------------------------------------------

 

The ReadThing [function](CppFunction.md) has one assumption: the
[pointer](CppPointer.md) must point to a valid Thing. Use
[assert](CppAssert.md) to document internal assumptions \[5-9\].

 

  ------------------------------------------------------------------------------------------------------
  ` #include <cassert>  void ReadThing(const Thing * const thing) {   assert(thing);   //Read Thing }`
  ------------------------------------------------------------------------------------------------------

 

Again, use [assert](CppAssert.md) to document internal assumptions
\[5-9\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'
3.  [Jarrod Hollingworth](CppJarrodHollingworth.md), [Bob
    Swart](CppBobSwart.md), [Mark Cashman](CppMarkCashman.md), [Paul
    Gustavson](CppPaulGustavson.md). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'
4.  [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'
5.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions
    and invariants'.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Advice 24.5.18:
    'Explicitly express preconditions,postconditions, and other
    assertions as assertions'.
7.  Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions to document and verify
    preconditions and postconditions'.
8.  Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions for conditions that should
    never occur'.
9.  [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 24, chapter 'assert()': 'Use
    assert freely'.

 

 

 

 

 





 



