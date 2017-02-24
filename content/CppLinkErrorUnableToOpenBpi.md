



 

 

 

 

 

([C++](Cpp.htm)) [Unable to open file '\[AnyName\].bpi'](CppLinkErrorUnableToOpenBpi.htm)
=========================================================================================

 

[Link error](CppLinkError.htm).

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: [VCL](CppVcl.htm)

 

 

 

 

 

Full error messages
-------------------

 

  --------------------------------------------------------------------
  ` [Linker Fatal Error] Fatal: unable to open file '[AnyName].bpi'`
  --------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

This error occurs because of the same reason: the person you opened a
project from, has installed some Components on his computer, that you
did not. The Project expects these Components to be present.

 

 

 

 

 

Solution
--------

 

To remove the expectation to find Components you have not installed, do:
'Project | Options | (tab) Packages | (Groupbox) Runtime Packages', then
fill in in the Edit box:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` vcl;rtl;dbrtl;adortl;vcldb;vclx;bdertl;vcldbx;ibxpress;dsnap;cds;bdecds;qrpt;teeui;teedb;tee;dss;teeqr;visualclx;visualdbclx;dsnapcrba;dsnapcon;bcbsmp;vclie;xmlrtl;inet;inetdbbde;inetdbxpress;inetdb;nmfast;webdsnap;bcbie;websnap;soaprtl;dclocx;dbexpress;dbxcds;indy;bcb2kaxserver;`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

These are the packages standard in Builder. Another option is to
manually remove all these packages you miss from the list.

 

 

 

 

 





 



