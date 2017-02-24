
 

 

 

 

 

([C++](Cpp.md)) ![C++98](PicCpp98.png) [Exercise \#10: Obtaining a read-only (smart?) pointer](CppExerciseReadonlyPointer.md)
===============================================================================================================================

 

Difficulty: 1/10

Date added: 30th of March 2011

 

This [exercise](CppExercise.md) shows that working with [smart
pointers](CppSmartPointer.md) is not always easy...

 

This [exercise](CppExercise.md) is a continuation on [Exercise \#1: A
foolproof function](CppExerciseFoolproofFunction.md).

 

 

 

 

 

The problem
-----------

 

Following [Exercise \#1: A foolproof
function](CppExerciseFoolproofFunction.md) a programmer has written the
following [class](CppClass.md):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/checked_delete.hpp>  struct MyStruct {   int m_x;    private:   ~MyStruct() {}   friend void boost::checked_delete<>(MyStruct *); };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

 

Writing such a [class](CppClass.md) enables safe [forward
declarations](CppForwardDeclaration.md) and forces the user of this
[class](CppClass.md) to use [smart pointers](CppSmartPointer.md),
which is a good thing \[1\].

 

This programmer wants to use a [class](CppClass.md) managing a
[boost::shared\_ptr](CppShared_ptr.md) of MyStruct, but he/she also
wants to let the user obtain a read-only [smart
pointer](CppSmartPointer.md)/[pointer](CppPointer.md).

 

The code below shows the choices and some lines that should and should
not [compile](CppCompiler.md):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyStructKeeper {   MyStructKeeper() : m_s(new MyStruct) {}   /* ??? */ Get() /* ??? */   private:   boost::shared_ptr<MyStruct> m_s; };  int main() {   MyStructKeeper k;   /* ??? */ = k.Get();   const int x = s->m_x; //Must compile   s->m_x = 0; //Should not compile   delete s;   //Should not compile }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

What should the question marks be?

 

[View the answer of this part of the
exercise](CppExerciseReadonlyPointerAnswer.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.

 

 

 

 

 

 

