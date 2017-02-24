

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Maemo](PicMaemo.png) [Maemo](CppMaemo.htm)
=============================================================

 

[Maemo](CppMaemo.htm) is an [operating system](CppOs.htm) for [mobile
applications](CppMobileApplication.htm) based on Debian GNU/Linux.

 

[Maemo](CppMaemo.htm) development can be done in C, [C++](Cpp.htm),
Java, Mono, Python, and Ruby.

 

For [C++](Cpp.htm) development, the [Maemo SDK](CppMaemoSdk.htm) or the
[Qt Creator](CppQtCreator.htm) [IDE](CppIde.htm) can be used.

 

When using [Qt Creator](CppQtCreator.htm),
[Maemo](CppMaemo.htm)-specific statements can be performed in the
[project file](CppQtProjectFile.htm) 'meamo5' is the name of the
conditional variable. can be used, as shown in the following [project
file](CppQtProjectFile.htm) code:

 

  ------------------------------------------------
  ` maemo5 {    message("Maemo5 development") }`
  ------------------------------------------------

 

In [C++](Cpp.htm) code, the 'Q\_WS\_MAEMO\_5' [\#define](CppDefine.htm)
can be used:

 

  -----------------------------------------------------------
  ` #ifdef Q_WS_MAEMO_5 //maemo5 specific code here #endif`
  -----------------------------------------------------------

 

 

 

 

 

Maemo phone technical specifications
------------------------------------

 

-   Screen size: 720 x 480 pixels

 

 

 

 

 

How to obtain a list of installed applications?
-----------------------------------------------

 

The folder 'usr/share/applications/hildon' contains .desktop files
([view the Meamo.org wiki page about the .desktop file
format](http://wiki.maemo.org/Desktop_file_format)) with the same names
as the applications installed. This .desktop file contains information
like, among others, the name of its icon and the absolute path to the
executable. If, for example, an application called 'MyApp' is installed,
there should be a file called
'usr/share/applications/hildon/MyApp.desktop'. The [file
I/O](CppFileIo.htm) [code snippet](CppCodeSnippets.htm)
[GetFoldersInFolder](CppGetFoldersInFolder.htm) can be used to obtain
these names.

 

A minimal desktop file ([from
here](http://wiki.forum.nokia.com/index.php/Maemo:_Hildonizing_application_UI)):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [Desktop Entry] Encoding=UTF-8 Version=1.0 Type=Application Name=MyOwnApplication Exec=/usr/bin/moa X-Osso-Service=org.maemo.moa Icon=qgn_list_gene_default_app`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Maemo homepage](http://maemo.org/)
-   [Wikipedia page about Maemo](http://en.wikipedia.org/wiki/Maemo)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
