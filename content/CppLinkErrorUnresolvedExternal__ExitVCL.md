



 

 

 

 

 

([C++](Cpp.htm)) [Unresolved external '\_\_ExitVCL' referenced from \[..\]](CppLinkErrorUnresolvedExternal__ExitVCL.htm)
========================================================================================================================

 

[Link error](CppLinkError.htm).

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: In Console Wizard 'Console Application' checked, 'Use VCL'
checked

 

 

 

 

 

Full error messages
-------------------

 

  ------------------------------------------------------------------------
  ` [Linker Error] Unresolved external '__ExitVCL' referenced from [..]`
  ------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

This error occurs, because you want to work in a console application,
but you started a Builder application in the Console Wizard.

 

 

 

 

Solution
--------

 

Do 'File | New | Other | Console Wizard'. In this menu, uncheck 'Use
VCL' and 'Use CLX'. Check 'Console Application'. It does not matter if
'Multi Threaded' is checked or unchecked (for this error).

 

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
