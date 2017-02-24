



 

 

 

 

 

([C++](Cpp.htm)) [How to port CLN from Ubuntu to Windows](CppClnFromUbuntuToWindows.htm)
========================================================================================

 

I had to be able to [compile](CppCompile.htm) the [CLN](CppCln.htm)
[library](CppLibrary.htm) from Ubuntu to Windows.

 

 

 

 

Unfinished attempt: Copy-past built source to Windows
-----------------------------------------------------

 

Zip all files from the Ubuntu terminal:

 

  ---------------------------------------
  ` zip -r clnsrc.zip /usr/include/cln`
  ---------------------------------------

 

Copy the zip to a windows computer. Compiling goes fine. Linking fails,
with the (expected) [undefined reference to
cln::cl\[something\]](CppLinkErrorUndefinedReferenceToClnCl_random_def_init_helper.htm).

Failed attempt: build CLN in Cygwin
-----------------------------------

 

Build fails.

 

 

 

 

 

Failed attempt: just unzip
--------------------------

 

One cannot just download the source from the CLN homepage and unzip: the
library must be built.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
