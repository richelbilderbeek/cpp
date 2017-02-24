
 

 

 

 

 

([C++](Cpp.md)) [Shallow copy](CppShallowCopy.md)
===================================================

 

A [shallow copy](CppShallowCopy.md) is a type of copy operation and the
opposite of a [deep copy](CppDeepCopy.md).

 

Both types of copy operations work on a [class](CppClass.md), with a
[pointer](CppPointer.md) to data member. When this
[class](CppClass.md) is copied, two things can happen:

-   A [shallow copy](CppShallowCopy.md) only copies the
    [pointer](CppPointer.md), so both copies work on the same data
-   A deep copy copies the data pointed to as well, so both copies work
    on different data

 

The code below shows a [shallow copy](CppShallowCopy.md):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Huge {   //Huge contains much data and is hard to copy. };  struct MyClass {   //MyClass holds a pointer to a Huge.   Huge * mp_huge; };  int main() {   //My class 'a' points to a Huge.   MyClass a;   //A second class 'b' points to the same Huge:   //the Huge is _not_ copied: only the pointer pointing   //the the Huge is copied.   MyClass b = a; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

