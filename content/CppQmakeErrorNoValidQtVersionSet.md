



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [qmake error: no valid Qt version set](CppQmakeErrorNoValidQtVersionSet.htm)
==============================================================================================================

 

This [qmake error](CppQmakeError.htm) occurred when [porting code from
Qt Creator under Ubuntu to Qt Creator under
Windows](CppPortQtCreatorUbuntuToQtCreatorWindows.htm).

 

The compile output is:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` No valid Qt version set. Set one in Tools/Options  Error while building project CppPortQtCreatorUbuntuToQtCreatorWindows1 When executing build step 'QMake' Canceled build.`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Following this output, [check Qt's version
(png)](CppPortQtCreatorUbuntuToQtCreatorWindows1_1.png). In this case,
the path to [qmake](CppQmake.htm) was still to its Ubuntu location. So,
[set it to a valid location
(png)](CppPortQtCreatorUbuntuToQtCreatorWindows1_2.png).

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
