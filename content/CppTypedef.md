



 

 

 

 

 

([C++](Cpp.htm)) [typedef](CppTypedef.htm)
==========================================

 

[typedef](CppTypedef.htm) is a [keyword](CppKeyword.htm) to define
shorthand names for [data types](CppDataType.htm).

 

  -------------------------------------------------------
  ` typedef std::vector<int>::const_iterator Iterator;`
  -------------------------------------------------------

 

Avoid [typedefs](CppTypedef.htm) at file scope in [header
files](CppHeaderFile.htm) \[1\]. When using [function
pointers](CppFunctionPointer.htm), consider always using a
[typedef](CppTypedef.htm) \[2\].

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use UpperCamelCase for typedef names \[3\]
-   Prefer [using](CppUsing.htm) over [typedef](CppTypedef.htm) for
    defining aliases \[4\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
