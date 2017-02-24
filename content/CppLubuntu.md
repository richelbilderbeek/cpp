
 

 

 

 

 

([C++](Cpp.md)) ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md)
=====================================================================

 

[Lubuntu](CppLubuntu.md) is an [operating system](CppOs.md).
[Lubuntu](CppLubuntu.md) is a light-weight variant of
[Ubuntu](CppUbuntu.md).

 

-   [Lubuntu Oneiric Ocelot review](CppLubuntuOneiricReview.md)

 

 

 

 

 

My [Lubuntu](CppLubuntu.md) programs
-------------------------------------

 

A list of my favorite programs:

-   Programming: qtcreator
-   Plaintext editing: gedit, vim
-   Documents: lyx
-   Spreadsheet: gnumeric
-   Audio CD ripping: audex
-   Web browsers: chromium-browser, firefox, lynx
-   ftp: gftp, ftp
-   SSH: putty
-   Touch typing: ktouch
-   Math practice: tuxmath
-   Misc: wine

 

 

 

 

 

My [Lubuntu](CppLubuntu.md) notes
----------------------------------

 

 

 

 

 

### Change mouse cursor speed

 

  ----------------
  ` xset m 10 4`
  ----------------

 

If at startup the mouse is slow again, put this command in
/etc/xdg/lxsession/LXDE/autostart.

 

 

 

 

 

### Building the latest version of [Boost](CppBoost.md)

 

Install an older version of [Boost](CppBoost.md) using Synaptic. Then
download and extract the newest version. In the extracted folder, for
example 'boost\_1\_46\_1' use bjam:

 

  ----------------------------------------------------------------------
  ` ./bootstrap ./bjam --build-dir=/tmp/build-boost toolset=gcc stage`
  ----------------------------------------------------------------------

 

  -----------------------------------------------------------
  ` ./bootstrap sudo ./b2 --build-dir=/usr/local/lib/boost`
  -----------------------------------------------------------

 

 

 

 

### Keyboard shortcuts

 

From '/home/my\_user\_name/.config/openbox/lubuntu-rc.xml':

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` SUPER-E: File manager SUPER-R: Run CTRL-ESCAPE: Menu CTRL-ALT-DEL: Task manager CTRL-ALT-T: Start Terminal CTRL-ALT-D: File manager`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### 'I hear no sound' problem

 

Sure, there are multiple reasons. For me it was because of the front
speaker (not the master) had its volume set to 0%. Use alsamixer:

 

  --------------
  ` alsamixer`
  --------------

 

 

 

 

 

 

