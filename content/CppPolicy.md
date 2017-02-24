
 

 

 

 

 

([C++](Cpp.md)) [Policy](CppPolicy.md)
========================================

 

A [policy](CppPolicy.md) is a [class](CppClass.md) behaviour set at
compile-time.

 

A [policy](CppPolicy.md) consts of a [host class](CppHostClass.md) and
[policy classes](CppPolicyClass.md). The user of a
[policy](CppPolicy.md) chooses which [policy class](CppPolicyClass.md)
is used, by template.

 

A [policy class](CppPolicyClass.md) is a [base
class](CppBaseClass.md). All [base class](CppBaseClass.md)
[destructors](CppDestructor.md) should be [public](CppPublic.md) and
[virtual](CppVirtual.md), or [protected](CppProtected.md) and
non[virtual](CppVirtual.md)' \[1\]. The [destructor](CppDestructor.md)
of a [policy class](CppPolicyClass.md) should be
[protected](CppProtected.md) and non[virtual](CppVirtual.md) \[2\].

 

 

 

 

 

Example
-------

 

During debugging, you might want to trace (keep track of) variables.

Sometimes, you might want to write it to [std::cout](CppCout.md), file
or other ways.

The example below shows a Tracer [class](CppClass.md), whose behavior
is set at [compile-time](CppCompileTime.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <fstream> #include <string>  template <typename OutputPolicy> struct Tracer : public OutputPolicy {  };  struct OutputPolicyCout {   void Trace(const std::string& s)   {     std::cout << s << '\n';   }  protected:   ~OutputPolicyCout()   {     // The destructor of a policy class should be protected and non-virtual [1].   } };  struct OutputPolicyFile {   OutputPolicyFile() : m_file("Trace.txt")   {    }    void Trace(const std::string& s)   {     m_file << s << '\n';   }    std::ofstream m_file;  protected:    ~OutputPolicyFile()   {     // The destructor of a policy class should be protected and non-virtual [2].   } };  int main() {   Tracer<OutputPolicyCout> p1;   Tracer<OutputPolicyFile> p2;   p1.Trace("x");   p2.Trace("x"); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In this example, Tracer is the [host class](CppHostClass.md), where
OutputPolicyCout and OutputPolicyFile are [policy
classes](CppPolicyClass.md).

 

Note that p1 and p2 have types as different as
[std::vectors](CppVector.md) with different elements.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 50:
    'Make base class destructors public and virtual, or protected and
    nonvirtual'
2.  [Andrei Alexandrescu](CppAndreiAlexandrescu.md). Modern C++ Design.
    2001. ISBN: 0201704315. Page 13. Section 1.7: 'The lightweight,
    effective solution that policies should use is to define a
    nonvirtual protected destructor'

 

 

 

 

 

 

