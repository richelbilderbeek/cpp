



 

 

 

 

 

([C++](Cpp.md)) [Unable to open file 'UNITFORM\_MYFORM.OBJ'](CppLinkErrorUnableToOpenFormObj.md)
==================================================================================================

 

[Link error](CppLinkError.md).

 

IDE: [C++ Builder](CppBuilder.md) 6.0

Project type: [VCL](CppVcl.md)

 

 

 

 

 

Full error messages
-------------------

 

  --------------------------------------------------------------------------
  ` [Linker Fatal Error] Fatal: Unable to open file 'UNITFORM_MYFORM.OBJ'`
  --------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Due to a Rename refactoring the following \#pragma was renamed from

 

  ----------------------------------
  ` #pragma link "UnitFormMyForm"`
  ----------------------------------

 

to

 

  -----------------------------------
  ` #pragma link "UnitForm_MyForm"`
  -----------------------------------

 

But the filename for this Form remained UnitFormMyForm. Therefore,
UnitForm\_MyForm.obj could not be found.

 

 

 

 

 

Solution
--------

 

Let the \#pragma link to an existing Form:

 

  ----------------------------------
  ` #pragma link "UnitFormMyForm"`
  ----------------------------------

 

 

 

 

 





 



