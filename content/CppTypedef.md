



 

 

 

 

 

([C++](Cpp.md)) [typedef](CppTypedef.md)
==========================================

 

[typedef](CppTypedef.md) is a [keyword](CppKeyword.md) to define
shorthand names for [data types](CppDataType.md).

 

  -------------------------------------------------------
  ` typedef std::vector<int>::const_iterator Iterator;`
  -------------------------------------------------------

 

Avoid [typedefs](CppTypedef.md) at file scope in [header
files](CppHeaderFile.md) \[1\]. When using [function
pointers](CppFunctionPointer.md), consider always using a
[typedef](CppTypedef.md) \[2\].

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use UpperCamelCase for typedef names \[3\]
-   Prefer [using](CppUsing.md) over [typedef](CppTypedef.md) for
    defining aliases \[4\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.3
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 176: 'A typedef will be used to
    simplify program syntax when declaring function pointers.'
3.  Trevor Misfeldt, Gregory Bumgardner, Andrew Gray. The elements of
    C++ style. 2004. ISBN: 978-0-521-89308-4. Chapter 4.2, page 18: 'Use
    UpperCamelCase for classes, constants, structures, enumerations, and
    typedefs'
4.  [C++ Core Guidelines item
    T.43](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t43-prefer-using-over-typedef-for-defining-aliases):
    'Prefer using over typedef for defining aliases'

 

 

 

 

 





 



