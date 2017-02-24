
 

 

 

 

 

([C++](Cpp.md)) [Unable to open file 'CLASSES.OBJ'](CppLinkErrorUnableToOpenClassesObj.md)
============================================================================================

 

[Link error](CppLinkError.md).

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

Project type: [VCL](CppVcl.md)

 

 

 

 

 

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

 

 

 

 

 

 

