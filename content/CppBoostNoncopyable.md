

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::noncopyable](CppNoncopyable.htm)
=========================================================

 

[boost::noncopyable](CppNoncopyable.htm) is a [Boost](CppBoost.htm)
[base class](CppBaseClass.htm). If any [class](CppClass.htm)
[derives](CppDerivedClass.htm) from
[boost::noncopyable](CppNoncopyable.htm), this [class](CppClass.htm)
cannot be copied anymore.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/noncopyable.hpp>  struct Test : public boost::noncopyable {   int x; };  int main() {   Test t1;   Test t2;   t2 = t1; //Not allowed by boost::noncopyable }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Testing [boost::noncopyable](CppNoncopyable.htm)
------------------------------------------------

 

The code below shows a [C++98](Cpp98.htm) and [C++11](Cpp11.htm)
[definition](CppDefinition.htm) of
[boost::noncopyable](CppNoncopyable.htm).

 

-   Download the Qt Creator project 'CppNoncopyable' (zip)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct NoncopyableCpp98 {   protected:     NoncopyableCpp98()  {}     ~NoncopyableCpp98() {}   private:     NoncopyableCpp98(const NoncopyableCpp98&);     const NoncopyableCpp98& operator=(const NoncopyableCpp98&); };  struct NoncopyableCpp0x {   protected:     NoncopyableCpp0x()  {}     ~NoncopyableCpp0x() {}   private:     NoncopyableCpp0x(const NoncopyableCpp0x&) = delete;     const NoncopyableCpp0x& operator=(const NoncopyableCpp0x&) = delete; };  struct TestCpp98 : public NoncopyableCpp98 {   int x; };  struct TestCpp0x : public NoncopyableCpp0x {   int x; };  #include <boost/noncopyable.hpp>  struct TestBoost : public boost::noncopyable {   int x; };  int main() {   //TestCpp98 t1; TestCpp98 t2; t2 = t1; //Not allowed by NoncopyableCpp98   //TestCpp0x t1; TestCpp0x t2; t2 = t1; //Not allowed by NoncopyableCpp0x   //TestBoost t1; TestBoost t2; t2 = t1; //Not allowed by boost::noncopyable }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
