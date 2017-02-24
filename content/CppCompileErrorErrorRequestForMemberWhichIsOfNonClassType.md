



 

 

 

 

 

([C++](Cpp.htm)) [Request for member 'mX' in 'w', which is of non-class type 'Widget()'](CppCompileErrorErrorRequestForMemberWhichIsOfNonClassType.htm)
=======================================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------------------------------------
  ` MyMain.cpp:6: error: request for member 'mX' in 'w', which is of non-class type 'Widget()'`
  -----------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 1.3.1

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

 

The following code caused the error:

 

  ------------------------------------------------------------------------
  ` struct Widget{ int mX; };  int main() {   Widget w();   w.mX = 3; }`
  ------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

[Instanciate](CppInstance.htm) the default-constructed
[class](CppClass.htm) without brackets:

 

  ----------------------------------------------------------------------
  ` struct Widget{ int mX; };  int main() {   Widget w;   w.mX = 3; }`
  ----------------------------------------------------------------------

 

 

 

 

 

(Advanced) What caused this [compile error](CppCompileError.htm) exactly?
-------------------------------------------------------------------------

 

From \[1\]: 'The code does not [declare](CppDeclaration.htm) a Widget
named w, it [declares](CppDeclaration.htm) a [function](CppFunction.htm)
named w that takes nothing and [returns](CppReturn.htm) a Widget'.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 6: 'Containers', page 35

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
