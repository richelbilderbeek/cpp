



 

 

 

 

 

([C++](Cpp.htm)) [access level](CppAccessLevel.htm)
===================================================

 

A [class](CppClass.htm) has three [access levels](CppAccessLevel.htm):

-   [private](CppPrivate.htm)
-   [protected](CppProtected.htm)
-   [public](CppPublic.htm)

 

A [class](CppClass.htm)' default [access level](CppAccessLevel.htm) is
[private](CppPrivate.htm). A [struct](CppStruct.htm)'s default [access
level](CppAccessLevel.htm) is [public](CppPublic.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   //public by default, so the keyword public below is redundant   public   : int m_public;   protected: int m_protected;   private: : int m_private; };   int main() {   MyClass m;   m.m_public    = 0; //OK, this member variable is public   m.m_protected = 0; //Not allowed, this member variable is protected   m.m_private   = 0; //Not allowed, this member variable is private }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



