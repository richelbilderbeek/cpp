

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![C++98](PicCpp98.png) [Exercise \#11: Obtaining a std::vector of read-only (smart?) pointers](CppExerciseReadonlyVectorOfPointers.htm)
========================================================================================================================================================

 

Difficulty: 2/10

Date added: 30th of March 2011

 

This [exercise](CppExercise.htm) shows that working with [smart
pointers](CppSmartPointer.htm) is not always easy...

 

This [exercise](CppExercise.htm) is a continuation on [Exercise \#10:
Obtaining a read-only (smart?) pointer](CppExerciseReadonlyPointer.htm).

 

 

 

 

 

The problem
-----------

 

Following [Exercise \#10: Obtaining a read-only (smart?)
pointer](CppExerciseReadonlyPointer.htm) a programmer has written the
following [class](CppClass.htm):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/checked_delete.hpp>  struct MyStruct {   int m_x;    private:   ~MyStruct() {}   friend void boost::checked_delete<>(MyStruct *); };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

 

Writing such a [class](CppClass.htm) enables safe [forward
declarations](CppForwardDeclaration.htm) and forces the user of this
[class](CppClass.htm) to use [smart pointers](CppSmartPointer.htm),
which is a good thing \[1\].

 

This programmer wants to use a [class](CppClass.htm) managing a
[std::vector](CppVector.htm) of [boost::shared\_ptr](CppShared_ptr.htm)
of MyStruct, but he/she also wants to let the user obtain a
[std::vector](CppVector.htm) of read-only [smart
pointers](CppSmartPointer.htm)/[pointers](CppPointer.htm), that can be
copied freely.

 

The code below shows the choices and some lines that should and should
not [compile](CppCompiler.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/checked_delete.hpp> #include <boost/shared_ptr.hpp>  struct MyStruct {   int m_x;    private:   ~MyStruct() {}   friend void boost::checked_delete<>(MyStruct *); };  struct MyStructKeeper {   std::vector</* ??? */> Get() const { /* ??? */ }   private:   std::vector<boost::shared_ptr<MyStruct> > m_v; };  int main() {   MyStructKeeper k1;   MyStructKeeper k2;   std::vector</* ??? */> v1 = k1.Get();   const std::vector</* ??? */> v2 = k2.Get();   std::copy(v2.begin(),v2.end(),std::back_inserter(v1));   v1[0]->m_x = 0; //Should not compile   delete v1[0].get(); //Should not compile }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

What should the question marks be?

 

[View the answer of this part of the
exercise](CppExerciseReadonlyVectorOfPointersAnswer.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
