



 

 

 

 

 

([C++](Cpp.md)) [this](CppThis.md)
====================================

 

 

[this](CppThis.md) is a [keyword](CppKeyword.md) to obtain a
[pointer](CppPointer.md) to a [class](CppClass.md)
[instance](CppInstance.md)'s own address.

 

When using [this](CppThis.md) to access member variables or [member
functions](CppMemberFunction.md), [this](CppThis.md) can be left out.

 

 

 

 

 

Example
-------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Int {   //Constructor   Int(const int i) : m_x(i) {}    int GetValue()    {      //this can be omitted     return this->m_x;    }    void SetValue(const int x)    {      //this can be omitted     this->m_x = x;    }     const Int * const GetMe() { return this; }     private:   int m_x; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



