



 

 

 

 

 

([C++](Cpp.htm)) [using](CppUsing.htm)
======================================

 

 

 

 

 

[using](CppUsing.htm) is a [keyword](CppKeyword.htm) to specify the a
[namespace(s)](CppNamespace.htm) used or the
[namespace(s)](CppNamespace.htm) of the [data types](CppDataType.htm)
used.

 

Use [using](CppUsing.htm)-directives for transition, for foundational
[libraries](CppLibrary.htm) (such as [std](CppStd.htm)), or within a
[local](CppLocal.htm) [scope](CppScope.htm) \[1\] Don't put a
[using](CppUsing.htm)-directive in a [header file](CppHeaderFile.htm)
\[2,3\] Don't write a [using](CppUsing.htm)-directive before an
[\#include](CppInclude.htm) \[3\] Prefer [using](CppUsing.htm) over
[typedef](CppTypedef.htm) for defining aliases \[4\]

 

 

 

 

Example: [using](CppUsing.htm) to specify the [namespace(s)](CppNamespace.htm) of the [data types](CppDataType.htm) used
------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  int main() {   using std::cout;   using std::string;   const string s = "Hello world";   cout << s; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example: [using](CppUsing.htm) to specify the [namespace(s)](CppNamespace.htm) used
-----------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  int main() {   using namespace std;   const string s = "Hello world";   cout << s; }`
  --------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[10\] Use using-directives for transition, for
    foundational libraries (such as std), or within a local scope'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[11\] Don't put a using-directive in a header
    file'
3.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 59: 'Don't write namespace usings in a header file or before an
    \#include'
4.  [C++ Core Guidelines item
    T.43](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t43-prefer-using-over-typedef-for-defining-aliases):
    'Prefer using over typedef for defining aliases'

 

 

 

 

 





 



