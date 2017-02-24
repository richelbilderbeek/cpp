



 

 

 

 

 

([C++](Cpp.htm)) [this](CppThis.htm)
====================================

 

 

[this](CppThis.htm) is a [keyword](CppKeyword.htm) to obtain a
[pointer](CppPointer.htm) to a [class](CppClass.htm)
[instance](CppInstance.htm)'s own address.

 

When using [this](CppThis.htm) to access member variables or [member
functions](CppMemberFunction.htm), [this](CppThis.htm) can be left out.

 

 

 

 

 

Example
-------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Int {   //Constructor   Int(const int i) : m_x(i) {}    int GetValue()    {      //this can be omitted     return this->m_x;    }    void SetValue(const int x)    {      //this can be omitted     this->m_x = x;    }     const Int * const GetMe() { return this; }     private:   int m_x; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



