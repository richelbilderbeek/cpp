[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Unresolved external 'WinMain' referenced from \[...\]\\CBUILDER6\\LIB\\C0W32.OBJ](CppLinkErrorUnresolvedExternalWinMain.htm)
==============================================================================================================================================

 

[Link error](CppLinkError.htm).

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: [VCL](CppVcl.htm)

 

 

 

 

 

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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
