



 

 

 

 

 

([C++](Cpp.htm)) ![Qt Creator](PicQtCreator.png)![Cygwin](PicCygwin.png) [How to install Qt Creator under Cygwin?](CppQtCreatorInstallCygwin.htm)
=================================================================================================================================================

 

[Qt FAQ](CppQtFaq.htm) about [how to install Qt
Creator](CppQtCreatorInstall.htm) under Cygwin.

 

According to \[2\] this is not possible. All approaches described below
fail.

 

 

 

 

 

Failed approach 1:
------------------

 

[Qt Creator](CppQtCreator.htm) is installed following the steps
described by \[1\].

The following alternative strategies fail:

-   Trying to do './configure' and 'make' using
    Qt-everywhere-opensource-src-4.7.0 (a newer version as used
    in \[1\])
-   Trying to follow the steps of \[1\] using
    Qt-everywhere-opensource-src-4.7.0 (a newer version as used
    in \[1\])
-   After 'make sub-tools-bootstrap sub-moc sub-rcc sub-uic sub-corelib
    sub-gui' type 'make' (results in the error [UnicodeQt4.h:197: error:
    call of overloaded 'toLower(UChar32&)' is
    ambiguous](CppCompileErrorUnicodeQt4H197Error.htm))

 

In the folder
\~/Projects/Tools/[ToolTestBinaryNewickVector](ToolTestBinaryNewickVector.htm),
I entered the command:

  --------------
  ` qmake-qt3`
  --------------

 

resulting in:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QMAKESPEC has not been set, so configuration cannot be deduced. Error processing project file: /home/richel/Projects/Tools/ToolTestBinaryNewickVector/ ToolTestBinaryNewickVector.pro`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The following command did not do anything either:

 

  ------------------
  ` set QMAKESPEC`
  ------------------

 

 

 

 

 

Failed approach 2: Use the Linux Qt SDK under Cygwin
----------------------------------------------------

 

From the Qt homepage, download the Qt SDK for Linux/X11 32-bit.

 

In the folder where the Qt installer is located, type:

 

  ------------------------------------------------------------------------------------------------
  ` chmod u+x qt-sdk-linux-x86-opensource-2010.05.bin ./qt-sdk-linux-x86-opensource-2010.05.bin`
  ------------------------------------------------------------------------------------------------

 

Result:

 

  -------------------------------
  ` cannot execute binary file`
  -------------------------------

 

 

 

 

 

Failed approach 3: Use the Windows Qt SDK under Cygwin
------------------------------------------------------

 

From the Qt homepage, download the Qt SDK for windows.

 

Then, from the terminal

 

  ------------------------------------------
  ` run qt-sdk-win-opensource-2010.05.exe`
  ------------------------------------------

 

The Qt Creator setup starts, then showing an [NSIS
error](CppMiscErrorNsisError.png).

 

 

 

 

 

External links
--------------

 

-   [Qt homepage](http://qt.nokia.com)
-   [LyX wiki about how to install LyX and Qt under
    Cygwin](http://wiki.lyx.org/LyX/LyXOnCygwin)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [LyX wiki about how to install LyX and Qt under
    Cygwin](http://wiki.lyx.org/LyX/LyXOnCygwin)
2.  From
    http://developer.qt.nokia.com/faq/answer/do\_you\_support\_using\_qt\_in\_the\_cygwin\_shell\_on\_windows:\
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `       Question:              Do you support using Qt in the Cygwin shell on Windows?       Answer:              We don't support the Cygwin shell with Qt, mainly because Cygwin uses       different directory separators than the Windows ones, therefore our apps are       not likely to work correctly. You should use the cmd shell instead.       `
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 





 



