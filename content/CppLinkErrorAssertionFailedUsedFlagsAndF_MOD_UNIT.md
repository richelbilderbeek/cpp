
 

 

 

 

 

([C++](Cpp.md) ) [Assertion failed: used-&gt;flags & F\_MOD\_UNIT](CppLinkErrorAssertionFailedUsedFlagsAndF_MOD_UNIT.md)
==========================================================================================================================

 

[Link error](CppLinkError.md).

 

IDE: [C++ Builder](CppBuilder.md) 6.0

Project type: [VCL](CppVcl.md)

 

 

 

 

 

Full error messages
-------------------

 

  ------------------------------------------------------------------------------------
  ` Assertion failed: used->flags & F_MOD_UNIT, file C:\src\ilink\unitc.c, line 215`
  ------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Removed all [\#pragma](CppPragma.md) directives from a multi-unit
project, then pressed F9 (Run)

 

 

 

 

 

Solution
--------

 

Close All, then reload project.

 

 

 

 

 

 

