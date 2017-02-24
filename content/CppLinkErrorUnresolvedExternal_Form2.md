

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Unresolved external '\_Form2' referenced from \[...\]\\UNIT1.OBJ](CppLinkErrorUnresolvedExternal_Form2.htm)
=============================================================================================================================

 

[Link error](CppLinkError.htm).

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: [VCL](CppVcl.htm)

 

 

 

 

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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
