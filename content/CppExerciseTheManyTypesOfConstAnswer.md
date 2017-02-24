



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#5: The many types of const](CppExerciseTheManyTypesOfConstAnswer.htm)
============================================================================================================

 

This is the answer of [exercise \#5: The many types of
const](CppExerciseTheManyTypesOfConst.htm).

 

The five types of [const](CppConst.htm) are:

1.  [const variable](CppConstVariable.htm)
2.  [const argument](CppConstArgument.htm)
3.  [const return type](CppConstReturnType.htm)
4.  [const member function](CppConstMemberFunction.htm)
5.  [const member](CppConstMember.htm)

 

The five types of [const](CppConst.htm) prevent the following from
modification:

 

1.  [const variable](CppConstVariable.htm): the
    [variable](CppVariable.htm)
2.  [const argument](CppConstArgument.htm): the
    [argument](CppArgument.htm)
3.  [const return type](CppConstReturnType.htm): this only mostly
    applied to references to members of a class. Then,
    [const](CppConst.htm) can prevent the original member from
    being modified.
4.  [const member function](CppConstMemberFunction.htm): all
    non-[mutable](CppMutable.htm) class members
5.  [const member](CppConstMember.htm): the member

 

Below are examples of each type of [const](CppConst.htm).

 

 

 

 

 

Example of a [const variable](CppConstVariable.htm)
---------------------------------------------------

 

This applies to both local and global variables.

 

  ------------------------------------------------------------------------
  ` int main() {    const int dozen = 12;   //dozen cannot be changed }`
  ------------------------------------------------------------------------

 

 

 

 

 

Example of a [const argument](CppConstArgument.htm)
---------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` void Cout(const std::string& anyString) {   //anyString cannot be changed   std::cout << something << std::endl; }`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example of a [const return type](CppConstReturnType.htm)
--------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Values {   const std::vector<int>& GetValues() const   {     //Even after returning a reference to mV, mV cannot be changed     return mV;   }    private:   std::vector<int> mV; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example of a [const member function](CppConstMemberFunction.htm)
----------------------------------------------------------------

 

Nearly all 'getters' are [const member
functions](CppConstMemberFunction.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   double GetValue() const   {     //Getting mValue does not change the (non-mutable) members of MyClass     return mValue;   }    private:   double mValue; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example of a [const member](CppConstMember.htm)
-----------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Person {   Person(const bool isMale) : mIsMale(isMale) {}   const bool mIsMale; //After construction mIsMale cannot be changed };`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



