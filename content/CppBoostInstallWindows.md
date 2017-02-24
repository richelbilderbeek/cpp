



 

 

 

 

 

([C++](Cpp.htm)) [Installing Boost under Windows](CppBoostInstallWindows.htm)
=============================================================================

 

![Boost](PicBoost.png)![Windows](PicWindows.png)

 

To [install Boost](CppBoostInstall.htm) under Windows, just follow the
procedure described by \[1\].

 

A downloaded zip of Boost was extracted in
'E:/Projects/Libraries/boost\_1\_54\_0', but it does not seem to matter
where to put these, as the next commands install the Boost libraries at
their default locations.

 

First, add the [GCC](CppGcc.htm) path to the PATH (for me, this was
'E:\\Qt\\Qt5.0.1\\Tools\\mingw48\_32\\bin', I verified that g++.exe is
present in that folder). Then, from the command line, in the Boost
folder (for me, this was: 'E:/Projects/Libraries/boost\_1\_54\_0'),
type:

 

  ----------------------------------------
  ` bootstrap gcc b2 bjam --toolset=gcc`
  ----------------------------------------

 

The 'gcc' toolset comes with [Qt Creator](CppQtCreator.htm).

 

 

 

 

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` RBilderbeek@AIRBEAR-W7-I5 /D/Projects/Libraries (develop) $ cd boost_1_55_0  RBilderbeek@AIRBEAR-W7-I5 /D/Projects/Libraries/boost_1_55_0 (develop) $ ./bootstrap.bat  RBilderbeek@AIRBEAR-W7-I5 /D/Projects/Libraries/boost_1_55_0 (develop) $ ./bjam.exe toolset=gcc link=static threading=multi --layout=versioned --prefix=c:/Boost --without-context install`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Possible [Installing Boost under Windows](CppBoostInstallWindows.htm) problems
------------------------------------------------------------------------------

 

-   'cl' is not recognized as an internal or external command, operable
    program or batch file: do not use bjam without mentioning a toolset,
    but choose a toolset and use the command 'bjam --toolset=gcc' (for
    the [GCC](CppGcc.htm) toolset).

 

 

 

 

 

External links
--------------

 

-   [The Boost 'Getting started on Windows'
    page](http://www.boost.org/doc/libs/1_44_0/more/getting_started/windows.html)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [The Boost 'Getting started on Windows'
    page](http://www.boost.org/doc/libs/1_44_0/more/getting_started/windows.html)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
