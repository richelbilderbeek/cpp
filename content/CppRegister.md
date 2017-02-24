



 

 

 

 

 

([C++](Cpp.htm)) [register](CppRegister.htm)
============================================

 

[register](CppRegister.htm) is a [keyword](CppKeyword.htm) to hint the
[compiler](CppCompiler.htm) that a certain [variable](CppVariable.htm)
will be heavily used. The [compiler](CppCompiler.htm) knows best,
however. Consider never using [register](CppRegister.htm) \[1,2\].

 

  -------------------------------------------------------------------------
  ` int main() {   register int x = 3; //Nearly never use register [1] }`
  -------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write
    register \[...\]'.
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 140 (MISRA Rule 28, Revised): 'The
    register storage class specifier shall not be used.'

 

 

 

 

 





 



