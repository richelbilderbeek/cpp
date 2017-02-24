
 

 

 

 

 

([C++](Cpp.md)) [delete a pointer-to-const](CppDeletePointerToConst.md)
=========================================================================

 

Be aware that you can [delete](CppDelete.md) a
pointer-to-[const](CppConst.md):

 

  --------------------------------------------------------------------------------------------------------------------------------------
  ` int main() {   //Create a read-only MyClass   const MyClass * const myClass = new MyClass;    delete myClass; //VALID C++ CODE! }`
  --------------------------------------------------------------------------------------------------------------------------------------

 

See [exercise \#2: a foolproof
function](CppExerciseFoolproofFunction.md) for the implications and
prevention of this.

 

 

 

 

 

 

