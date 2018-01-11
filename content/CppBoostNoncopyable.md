
 

 

 

 

 

([C++](Cpp.md)) [boost::noncopyable](CppBoostNoncopyable.md)
=========================================================

 

[boost::noncopyable](CppBoostNoncopyable.md) is a [Boost](CppBoost.md)
[base class](CppBaseClass.md). If any [class](CppClass.md)
[derives](CppDerivedClass.md) from
[boost::noncopyable](CppBoostNoncopyable.md), this [class](CppClass.md)
cannot be copied anymore.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/noncopyable.hpp>  struct Test : public boost::noncopyable {   int x; };  int main() {   Test t1;   Test t2;   t2 = t1; //Not allowed by boost::noncopyable }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Testing [boost::noncopyable](CppBoostNoncopyable.md)
------------------------------------------------

 

The code below shows a [C++98](Cpp98.md) and [C++11](Cpp11.md)
[definition](CppDefinition.md) of
[boost::noncopyable](CppBoostNoncopyable.md).

 

-   Download the Qt Creator project 'CppNoncopyable' (zip)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct NoncopyableCpp98 {   protected:     NoncopyableCpp98()  {}     ~NoncopyableCpp98() {}   private:     NoncopyableCpp98(const NoncopyableCpp98&);     const NoncopyableCpp98& operator=(const NoncopyableCpp98&); };  struct NoncopyableCpp0x {   protected:     NoncopyableCpp0x()  {}     ~NoncopyableCpp0x() {}   private:     NoncopyableCpp0x(const NoncopyableCpp0x&) = delete;     const NoncopyableCpp0x& operator=(const NoncopyableCpp0x&) = delete; };  struct TestCpp98 : public NoncopyableCpp98 {   int x; };  struct TestCpp0x : public NoncopyableCpp0x {   int x; };  #include <boost/noncopyable.hpp>  struct TestBoost : public boost::noncopyable {   int x; };  int main() {   //TestCpp98 t1; TestCpp98 t2; t2 = t1; //Not allowed by NoncopyableCpp98   //TestCpp0x t1; TestCpp0x t2; t2 = t1; //Not allowed by NoncopyableCpp0x   //TestBoost t1; TestBoost t2; t2 = t1; //Not allowed by boost::noncopyable }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

