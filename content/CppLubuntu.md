

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm)
=====================================================================

 

[Lubuntu](CppLubuntu.htm) is an [operating system](CppOs.htm).
[Lubuntu](CppLubuntu.htm) is a light-weight variant of
[Ubuntu](CppUbuntu.htm).

 

-   [Lubuntu Oneiric Ocelot review](CppLubuntuOneiricReview.htm)

 

 

 

 

 

My [Lubuntu](CppLubuntu.htm) programs
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

 

 

 

 

 

My [Lubuntu](CppLubuntu.htm) notes
----------------------------------

 

 

 

 

 

### Change mouse cursor speed

 

  ----------------
  ` xset m 10 4`
  ----------------

 

If at startup the mouse is slow again, put this command in
/etc/xdg/lxsession/LXDE/autostart.

 

 

 

 

 

### Building the latest version of [Boost](CppBoost.htm)

 

Install an older version of [Boost](CppBoost.htm) using Synaptic. Then
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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
