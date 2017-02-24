



 

 

 

 

 

([C++](Cpp.htm)) [Unable to open file 'CLASSES.OBJ'](CppLinkErrorUnableToOpenClassesObj.htm)
============================================================================================

 

[Link error](CppLinkError.htm).

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

Project type: [VCL](CppVcl.htm)

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------
  ` [Linker Fatal Error] Unable to open file 'CLASSES.OBJ'`
  -----------------------------------------------------------

 

 

 

 

 

Cause
-----

 

This happens when you add CBuilder6\\Lib\\Debug\\Vcl.LIB to your
project. I did so, because I wanted to have an unresolved external error
solved caused be a TImage.

 

 

 

 

 

Solution
--------

 

I think I shouldn't add \\CBuilder6\\Lib\\Debug\\Vcl.LIB to your
project.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
