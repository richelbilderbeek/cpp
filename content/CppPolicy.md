



 

 

 

 

 

([C++](Cpp.htm)) [Policy](CppPolicy.htm)
========================================

 

A [policy](CppPolicy.htm) is a [class](CppClass.htm) behaviour set at
compile-time.

 

A [policy](CppPolicy.htm) consts of a [host class](CppHostClass.htm) and
[policy classes](CppPolicyClass.htm). The user of a
[policy](CppPolicy.htm) chooses which [policy class](CppPolicyClass.htm)
is used, by template.

 

A [policy class](CppPolicyClass.htm) is a [base
class](CppBaseClass.htm). All [base class](CppBaseClass.htm)
[destructors](CppDestructor.htm) should be [public](CppPublic.htm) and
[virtual](CppVirtual.htm), or [protected](CppProtected.htm) and
non[virtual](CppVirtual.htm)' \[1\]. The [destructor](CppDestructor.htm)
of a [policy class](CppPolicyClass.htm) should be
[protected](CppProtected.htm) and non[virtual](CppVirtual.htm) \[2\].

 

 

 

 

 

Example
-------

 

During debugging, you might want to trace (keep track of) variables.

Sometimes, you might want to write it to [std::cout](CppCout.htm), file
or other ways.

The example below shows a Tracer [class](CppClass.htm), whose behavior
is set at [compile-time](CppCompileTime.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <fstream> #include <string>  template <typename OutputPolicy> struct Tracer : public OutputPolicy {  };  struct OutputPolicyCout {   void Trace(const std::string& s)   {     std::cout << s << '\n';   }  protected:   ~OutputPolicyCout()   {     // The destructor of a policy class should be protected and non-virtual [1].   } };  struct OutputPolicyFile {   OutputPolicyFile() : m_file("Trace.txt")   {    }    void Trace(const std::string& s)   {     m_file << s << '\n';   }    std::ofstream m_file;  protected:    ~OutputPolicyFile()   {     // The destructor of a policy class should be protected and non-virtual [2].   } };  int main() {   Tracer<OutputPolicyCout> p1;   Tracer<OutputPolicyFile> p2;   p1.Trace("x");   p2.Trace("x"); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In this example, Tracer is the [host class](CppHostClass.htm), where
OutputPolicyCout and OutputPolicyFile are [policy
classes](CppPolicyClass.htm).

 

Note that p1 and p2 have types as different as
[std::vectors](CppVector.htm) with different elements.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 50:
    'Make base class destructors public and virtual, or protected and
    nonvirtual'
2.  [Andrei Alexandrescu](CppAndreiAlexandrescu.htm). Modern C++ Design.
    2001. ISBN: 0201704315. Page 13. Section 1.7: 'The lightweight,
    effective solution that policies should use is to define a
    nonvirtual protected destructor'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
