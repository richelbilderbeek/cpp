
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [qmake error: no valid Qt version set](CppQmakeErrorNoValidQtVersionSet.md)
==============================================================================================================

 

This [qmake error](CppQmakeError.md) occurred when [porting code from
Qt Creator under Ubuntu to Qt Creator under
Windows](CppPortQtCreatorUbuntuToQtCreatorWindows.md).

 

The compile output is:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` No valid Qt version set. Set one in Tools/Options  Error while building project CppPortQtCreatorUbuntuToQtCreatorWindows1 When executing build step 'QMake' Canceled build.`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Following this output, [check Qt's version
(png)](CppPortQtCreatorUbuntuToQtCreatorWindows1_1.png). In this case,
the path to [qmake](CppQmake.md) was still to its Ubuntu location. So,
[set it to a valid location
(png)](CppPortQtCreatorUbuntuToQtCreatorWindows1_2.png).

 

 

 

 

 

 

