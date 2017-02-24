
 

 

 

 

 

([C++](Cpp.md)) [Request for member 'mX' in 'w', which is of non-class type 'Widget()'](CppCompileErrorErrorRequestForMemberWhichIsOfNonClassType.md)
=======================================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------------------------------------
  ` MyMain.cpp:6: error: request for member 'mX' in 'w', which is of non-class type 'Widget()'`
  -----------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 1.3.1

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

 

The following code caused the error:

 

  ------------------------------------------------------------------------
  ` struct Widget{ int mX; };  int main() {   Widget w();   w.mX = 3; }`
  ------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

[Instanciate](CppInstance.md) the default-constructed
[class](CppClass.md) without brackets:

 

  ----------------------------------------------------------------------
  ` struct Widget{ int mX; };  int main() {   Widget w;   w.mX = 3; }`
  ----------------------------------------------------------------------

 

 

 

 

 

(Advanced) What caused this [compile error](CppCompileError.md) exactly?
-------------------------------------------------------------------------

 

From \[1\]: 'The code does not [declare](CppDeclaration.md) a Widget
named w, it [declares](CppDeclaration.md) a [function](CppFunction.md)
named w that takes nothing and [returns](CppReturn.md) a Widget'.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective STL.
    ISBN: 0-201-74962-9. Item 6: 'Containers', page 35

 

 

 

 

 

 

