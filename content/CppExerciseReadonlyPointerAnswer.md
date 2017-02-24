

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![C++98](PicCpp98.png) [Answer of exercise \#10: Obtaining a read-only (smart?) pointer](CppExerciseReadonlyPointerAnswer.htm)
===============================================================================================================================================

 

This is the answer of [Exercise \#10: Obtaining a read-only (smart?)
pointer](CppExerciseReadonlyPointer.htm).

 

 

 

 

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/checked_delete.hpp> #include <boost/shared_ptr.hpp>  struct MyStruct {   int m_x;    private:   ~MyStruct() {}   friend void boost::checked_delete<>(MyStruct *); };  struct MyStructKeeper {   MyStructKeeper() : m_s(new MyStruct) {}   const MyStruct * Get() const { return m_s.get(); }   private:   boost::shared_ptr<MyStruct> m_s; };  int main() {   MyStructKeeper k;   const MyStruct * s = k.Get(); //Should be required to write 'const MyStruct'   const int x = s->m_x; //Must compile   //s->m_x = 0; //Should not compile   //delete s;   //Should not compile }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
