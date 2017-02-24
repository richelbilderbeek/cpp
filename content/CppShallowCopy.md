



 

 

 

 

 

([C++](Cpp.htm)) [Shallow copy](CppShallowCopy.htm)
===================================================

 

A [shallow copy](CppShallowCopy.htm) is a type of copy operation and the
opposite of a [deep copy](CppDeepCopy.htm).

 

Both types of copy operations work on a [class](CppClass.htm), with a
[pointer](CppPointer.htm) to data member. When this
[class](CppClass.htm) is copied, two things can happen:

-   A [shallow copy](CppShallowCopy.htm) only copies the
    [pointer](CppPointer.htm), so both copies work on the same data
-   A deep copy copies the data pointed to as well, so both copies work
    on different data

 

The code below shows a [shallow copy](CppShallowCopy.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Huge {   //Huge contains much data and is hard to copy. };  struct MyClass {   //MyClass holds a pointer to a Huge.   Huge * mp_huge; };  int main() {   //My class 'a' points to a Huge.   MyClass a;   //A second class 'b' points to the same Huge:   //the Huge is _not_ copied: only the pointer pointing   //the the Huge is copied.   MyClass b = a; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
