
 

 

 

 

 

([C++](Cpp.md)) [Unresolved external 'WinMain' referenced from \[...\]\\CBUILDER6\\LIB\\C0W32.OBJ](CppLinkErrorUnresolvedExternalWinMain.md)
==============================================================================================================================================

 

[Link error](CppLinkError.md).

 

IDE: [C++ Builder](CppBuilder.md) 6.0

Project type: [VCL](CppVcl.md)

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------------------------------------
  ` [Linker Error] Unresolved external 'WinMain' referenced from [...]\CBUILDER6\LIB\C0W32.OBJ`
  -----------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

This happens if you save the project and unit name under the same name.

Solution
--------

 

Save the project and unit name under a different name.

 

Personally, all my Project filenames start with 'Project', all my Units
start with 'Unit' and all my Forms start with 'UnitForm'. This way, you
never run into trouble.

 

 

 

 

 

 

