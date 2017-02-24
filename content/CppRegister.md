
 

 

 

 

 

([C++](Cpp.md)) [register](CppRegister.md)
============================================

 

[register](CppRegister.md) is a [keyword](CppKeyword.md) to hint the
[compiler](CppCompiler.md) that a certain [variable](CppVariable.md)
will be heavily used. The [compiler](CppCompiler.md) knows best,
however. Consider never using [register](CppRegister.md) \[1,2\].

 

  -------------------------------------------------------------------------
  ` int main() {   register int x = 3; //Nearly never use register [1] }`
  -------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write
    register \[...\]'.
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 140 (MISRA Rule 28, Revised): 'The
    register storage class specifier shall not be used.'

 

 

 

 

 

 

