
 

 

 

 

 

([C++](Cpp.md)) [access level](CppAccessLevel.md)
===================================================

 

A [class](CppClass.md) has three [access levels](CppAccessLevel.md):

-   [private](CppPrivate.md)
-   [protected](CppProtected.md)
-   [public](CppPublic.md)

 

A [class](CppClass.md)' default [access level](CppAccessLevel.md) is
[private](CppPrivate.md). A [struct](CppStruct.md)'s default [access
level](CppAccessLevel.md) is [public](CppPublic.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   //public by default, so the keyword public below is redundant   public   : int m_public;   protected: int m_protected;   private: : int m_private; };   int main() {   MyClass m;   m.m_public    = 0; //OK, this member variable is public   m.m_protected = 0; //Not allowed, this member variable is protected   m.m_private   = 0; //Not allowed, this member variable is private }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

