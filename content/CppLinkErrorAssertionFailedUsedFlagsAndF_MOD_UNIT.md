



 

 

 

 

 

([C++](Cpp.htm) ) [Assertion failed: used-&gt;flags & F\_MOD\_UNIT](CppLinkErrorAssertionFailedUsedFlagsAndF_MOD_UNIT.htm)
==========================================================================================================================

 

[Link error](CppLinkError.htm).

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: [VCL](CppVcl.htm)

 

 

 

 

 

Full error messages
-------------------

 

  ------------------------------------------------------------------------------------
  ` Assertion failed: used->flags & F_MOD_UNIT, file C:\src\ilink\unitc.c, line 215`
  ------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Removed all [\#pragma](CppPragma.htm) directives from a multi-unit
project, then pressed F9 (Run)

 

 

 

 

 

Solution
--------

 

Close All, then reload project.

 

 

 

 

 





 



