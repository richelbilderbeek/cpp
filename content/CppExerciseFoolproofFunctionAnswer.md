

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#1: a foolproof function](CppExerciseFoolproofFunctionAnswer.htm)
=======================================================================================================

 

This is the answer of [exercise \#1: a foolproof
function](CppExerciseFoolproofFunction.htm).

 

 

 

 

 

1) prevent that Thing is modified
---------------------------------

 

We do not want to modify a Thing. The [compiler](CppCompiler.htm),
however, does not know this. The [compiler](CppCompiler.htm) thinks we
do want to modify a Thing, because the [pointer](CppPointer.htm) to
Thing is not [const](CppConst.htm). This makes it possible to write to a
Thing, as shown in the code below:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(Thing * thing) {   thing->mX = 0; //Write to Thing! Must be noticed by the compiler //Read Thing }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To solve this problem, make Thing [const](CppConst.htm):

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * thing) {   //thing->mX = 0; //Cannot modify a const object   //Read Thing }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Use [const](CppConst.htm) whenever possible \[1-4\].

 

 

 

 

 

2) prevent that Thing cannot be read
------------------------------------

 

Before being read, [pointers](CppPointer.htm) must always point to a
valid object. Nothing prevents us from making the
[pointer](CppPointer.htm)-to-Thing point to zero:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * thing) {   thing = 0;   //Cannot read from pointer to Thing anymore   //Read Thing }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To solve this problem, make the [pointer](CppPointer.htm) itself
[const](CppConst.htm) as well. This brings you to the following code:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //thing = 0; //Cannot modify a const object   //Read Thing }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Again, use [const](CppConst.htm) whenever possible \[1-4\].

 

 

 

 

 

3) prevent that Thing is modified in some other way than \#1
------------------------------------------------------------

 

Be aware that you can [delete a
pointer-to-const](CppDeletePointerToConst.htm). Deleting a Thing,
however, is disastrous:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing { int mX; };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   delete thing;   //Read Thing   //But there is no Thing anymore! }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To solve this problem, we must modify Thing itself.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing {   int mX;    private:   ~Thing() {} };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now, [exercise \#1: a foolproof
function](CppExerciseFoolproofFunction.htm) has succeeded. If you knew
all three steps, you get an A. Congratulations!

 

But...

 

 

 

 

 

3.1) A new problem
------------------

 

A new problem has arisen: we cannot [construct](CppConstructor.htm) a
Thing, as it cannot be [deleted](CppDelete.htm) when going out of
[scope](CppScope.htm):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing {   int mX;    private:   ~Thing() {} };  //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }   int main() {   Thing t; //Destructor for 'Thing' is not accessible }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Try to solve this problem yourself. Make it work. But keep ReadThing
foolproof.

 

Got it?

 

Already?

 

Are you sure?

 

Okay, I'll show the solutions.

 

The way to solve this problem is to use the [friend](CppFriend.htm)
[keyword](CppKeyword.htm). I show three possible
[friends](CppFriend.htm):

1.  the [main](CppMain.htm) [function](CppFunction.htm)
2.  a [smart pointer](CppSmartPointer.htm)
3.  [boost::checked\_delete](CppChecked_delete.htm)

 

'What, use [friend](CppFriend.htm)?', I hear you mutter, 'You should
never use [friend](CppFriend.htm)!', as well as '[friend](CppFriend.htm)
reduces [encapsulation](CppEncapsulation.htm)!'. If you just muttered
these words, feel free to [contact me](Contact.htm) with a
[reference](CppReferences.htm) to the [book](CppBooks.htm) in which you
read this. I could not find it anywhere in my literature collection.

 

And also, if you muttered this, read the following three options below
to see that there is more [encapsulation](CppEncapsulation.htm), instead
of less: Thing cannot be [destroyed](CppDestructor.htm) by anything,
except its *only, single* [friend](CppFriend.htm). This makes Thing more
[encapsulated](CppEncapsulation.htm) than by making everything able to
[destroy](CppDestructor.htm) it. Read it again: making Thing
[destructable](CppDestructor.htm) by its *only, single*
[friend](CppFriend.htm) only, makes Thing more
[encapsulated](CppEncapsulation.htm) by making everything able to
[destroy](CppDestructor.htm) it.

 

 

 

 

 

### 3.1.1) [Befriending](CppFriend.htm) the [main](CppMain.htm) [function](CppFunction.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Thing {   int mX;    private:   ~Thing() {}   friend int main(); };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }   int main() {   Thing t; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[Befriending](CppFriend.htm) the [main](CppMain.htm)
[function](CppFunction.htm) has its restrictions: a Thing cannot be a
[class](CppClass.htm) member. For this simple piece of code, however, it
is a valid solution.

 

 

 

 

 

### 3.1.2) [Befriending](CppFriend.htm) a [smart pointer](CppSmartPointer.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory>  struct Thing {   int mX;    private:   ~Thing() {}   friend class std::auto_ptr<Thing>; };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }  int main() {   std::auto_ptr<Thing> t(new Thing); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

A [std::auto\_ptr](CppAuto_ptr.htm) calls the
[destructor](CppDestructor.htm) of Thing when it goes out of
[scope](CppScope.htm). So, when making a
[std::auto\_ptr](CppAuto_ptr.htm) a friend of Thing, you can create
[std::auto\_ptr](CppAuto_ptr.htm)&lt;Thing&gt;.

 

A drawback of this solution is that a [std::auto\_ptr](CppAuto_ptr.htm)
does not have a checked delete (for example
[boost::checked\_delete](CppChecked_delete.htm)).

 

 

 

 

 

### 3.1.3) [Befriending](CppFriend.htm) [boost::checked\_delete](CppChecked_delete.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/shared_ptr.hpp>  struct Thing {   int mX;    private:   ~Thing() {}   friend void boost::checked_delete<>(Thing *); };   //Thing must be passed by normal (that is, non-smart) pointer void ReadThing(const Thing * const thing) {   //delete thing; //Destructor for 'Thing' is not accessible   //Read Thing }   int main() {   boost::shared_ptr<Thing> t(new Thing); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

My personal favorite solution. But also this solution has a drawback, as
one can now write the following in ReadThing:

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` void ReadThing(const Thing * const thing) {   boost::checked_delete(thing);   //Read Thing   //But there is no Thing anymore! }`
  ------------------------------------------------------------------------------------------------------------------------------------

 

But the [exercise](CppExercise.htm) was to make ReadThing foolproof, not
evil-genius-proof.

 

 

 

 

 

4) Document the internal assumptions of the function
----------------------------------------------------

 

The ReadThing [function](CppFunction.htm) has one assumption: the
[pointer](CppPointer.htm) must point to a valid Thing. Use
[assert](CppAssert.htm) to document internal assumptions \[5-9\].

 

  ------------------------------------------------------------------------------------------------------
  ` #include <cassert>  void ReadThing(const Thing * const thing) {   assert(thing);   //Read Thing }`
  ------------------------------------------------------------------------------------------------------

 

Again, use [assert](CppAssert.htm) to document internal assumptions
\[5-9\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'
3.  [Jarrod Hollingworth](CppJarrodHollingworth.htm), [Bob
    Swart](CppBobSwart.htm), [Mark Cashman](CppMarkCashman.htm), [Paul
    Gustavson](CppPaulGustavson.htm). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'
4.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'
5.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions
    and invariants'.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
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
9.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 24, chapter 'assert()': 'Use
    assert freely'.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
