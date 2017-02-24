
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#5: The many types of const](CppExerciseTheManyTypesOfConstAnswer.md)
============================================================================================================

 

This is the answer of [exercise \#5: The many types of
const](CppExerciseTheManyTypesOfConst.md).

 

The five types of [const](CppConst.md) are:

1.  [const variable](CppConstVariable.md)
2.  [const argument](CppConstArgument.md)
3.  [const return type](CppConstReturnType.md)
4.  [const member function](CppConstMemberFunction.md)
5.  [const member](CppConstMember.md)

 

The five types of [const](CppConst.md) prevent the following from
modification:

 

1.  [const variable](CppConstVariable.md): the
    [variable](CppVariable.md)
2.  [const argument](CppConstArgument.md): the
    [argument](CppArgument.md)
3.  [const return type](CppConstReturnType.md): this only mostly
    applied to references to members of a class. Then,
    [const](CppConst.md) can prevent the original member from
    being modified.
4.  [const member function](CppConstMemberFunction.md): all
    non-[mutable](CppMutable.md) class members
5.  [const member](CppConstMember.md): the member

 

Below are examples of each type of [const](CppConst.md).

 

 

 

 

 

Example of a [const variable](CppConstVariable.md)
---------------------------------------------------

 

This applies to both local and global variables.

 

  ------------------------------------------------------------------------
  ` int main() {    const int dozen = 12;   //dozen cannot be changed }`
  ------------------------------------------------------------------------

 

 

 

 

 

Example of a [const argument](CppConstArgument.md)
---------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` void Cout(const std::string& anyString) {   //anyString cannot be changed   std::cout << something << std::endl; }`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example of a [const return type](CppConstReturnType.md)
--------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Values {   const std::vector<int>& GetValues() const   {     //Even after returning a reference to mV, mV cannot be changed     return mV;   }    private:   std::vector<int> mV; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example of a [const member function](CppConstMemberFunction.md)
----------------------------------------------------------------

 

Nearly all 'getters' are [const member
functions](CppConstMemberFunction.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   double GetValue() const   {     //Getting mValue does not change the (non-mutable) members of MyClass     return mValue;   }    private:   double mValue; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example of a [const member](CppConstMember.md)
-----------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Person {   Person(const bool isMale) : mIsMale(isMale) {}   const bool mIsMale; //After construction mIsMale cannot be changed };`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

