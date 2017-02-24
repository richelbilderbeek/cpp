



 

 

 

 

 

([C++](Cpp.htm)) ![C++98](PicCpp98.png) [Exercise \#10: Obtaining a read-only (smart?) pointer](CppExerciseReadonlyPointer.htm)
===============================================================================================================================

 

Difficulty: 1/10

Date added: 30th of March 2011

 

This [exercise](CppExercise.htm) shows that working with [smart
pointers](CppSmartPointer.htm) is not always easy...

 

This [exercise](CppExercise.htm) is a continuation on [Exercise \#1: A
foolproof function](CppExerciseFoolproofFunction.htm).

 

 

 

 

 

The problem
-----------

 

Following [Exercise \#1: A foolproof
function](CppExerciseFoolproofFunction.htm) a programmer has written the
following [class](CppClass.htm):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/checked_delete.hpp>  struct MyStruct {   int m_x;    private:   ~MyStruct() {}   friend void boost::checked_delete<>(MyStruct *); };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

 

Writing such a [class](CppClass.htm) enables safe [forward
declarations](CppForwardDeclaration.htm) and forces the user of this
[class](CppClass.htm) to use [smart pointers](CppSmartPointer.htm),
which is a good thing \[1\].

 

This programmer wants to use a [class](CppClass.htm) managing a
[boost::shared\_ptr](CppShared_ptr.htm) of MyStruct, but he/she also
wants to let the user obtain a read-only [smart
pointer](CppSmartPointer.htm)/[pointer](CppPointer.htm).

 

The code below shows the choices and some lines that should and should
not [compile](CppCompiler.htm):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyStructKeeper {   MyStructKeeper() : m_s(new MyStruct) {}   /* ??? */ Get() /* ??? */   private:   boost::shared_ptr<MyStruct> m_s; };  int main() {   MyStructKeeper k;   /* ??? */ = k.Get();   const int x = s->m_x; //Must compile   s->m_x = 0; //Should not compile   delete s;   //Should not compile }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

What should the question marks be?

 

[View the answer of this part of the
exercise](CppExerciseReadonlyPointerAnswer.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
