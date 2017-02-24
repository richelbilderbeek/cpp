



 

 

 

 

 

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

 

 

 

 

 





 



