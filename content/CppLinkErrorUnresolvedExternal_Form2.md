
 

 

 

 

 

([C++](Cpp.md)) [Unresolved external '\_Form2' referenced from \[...\]\\UNIT1.OBJ](CppLinkErrorUnresolvedExternal_Form2.md)
=============================================================================================================================

 

[Link error](CppLinkError.md).

 

IDE: [C++ Builder](CppBuilder.md) 6.0

Project type: [VCL](CppVcl.md)

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------------------
  ` [Linker Error] Unresolved external '_Form2' referenced from [...]\UNIT1.OBJ`
  --------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

This error occurs when you have added a second TForm to your project
(using 'File | Include Unit Hdr'), but without having done 'Project |
Add to Project | Unit2.cpp'

 

 

 

 

 

Solution
--------

 

Add the Unit to the Project: do 'Project | Add to Project | Unit2.cpp'.

 

 

 

 

 

 

