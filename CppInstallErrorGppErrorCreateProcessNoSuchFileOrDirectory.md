[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [g++: error: CreateProcess no such file or directory](CppInstallErrorGppErrorCreateProcessNoSuchFileOrDirectory.htm)
=====================================================================================================================================

 

[Install error](CppInstallError.htm) that can occur when installing
[Qwt](CppQwt.htm) under [Windows](CppWindows.htm) 7.

 

After doing the following, the error pops up:

 

  --------------------------------------------------------------------------------
  ` cd D:\Projects\Libraries\qwt-6.1.0 C:\Qt\5.1.1\mingw48_32\bin\qmake qwt.pro`
  --------------------------------------------------------------------------------

 

The error message:

 

  --------------------------------------------------------
  ` g++: error: CreateProcess no such file or directory`
  --------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the folder with cc1plus.exe to the path. For me this was
'C:\\Qt\\Tools\\mingw48\_32\\libexec\\gcc\\i686-w64-mingw32\\4.8.0'.
Also add the folder with g++.exe to the path. For me this was
'C:\\Qt\\Tools\\mingw48\_32\\bin'. Reflecting upon this solution,
perhaps only the latter is needed.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
