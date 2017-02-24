
 

 

 

 

 

([C++](Cpp.md)) ![Maemo](PicMaemo.png) [Maemo](CppMaemo.md)
=============================================================

 

[Maemo](CppMaemo.md) is an [operating system](CppOs.md) for [mobile
applications](CppMobileApplication.md) based on Debian GNU/Linux.

 

[Maemo](CppMaemo.md) development can be done in C, [C++](Cpp.md),
Java, Mono, Python, and Ruby.

 

For [C++](Cpp.md) development, the [Maemo SDK](CppMaemoSdk.md) or the
[Qt Creator](CppQtCreator.md) [IDE](CppIde.md) can be used.

 

When using [Qt Creator](CppQtCreator.md),
[Maemo](CppMaemo.md)-specific statements can be performed in the
[project file](CppQtProjectFile.md) 'meamo5' is the name of the
conditional variable. can be used, as shown in the following [project
file](CppQtProjectFile.md) code:

 

  ------------------------------------------------
  ` maemo5 {    message("Maemo5 development") }`
  ------------------------------------------------

 

In [C++](Cpp.md) code, the 'Q\_WS\_MAEMO\_5' [\#define](CppDefine.md)
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
I/O](CppFileIo.md) [code snippet](CppCodeSnippets.md)
[GetFoldersInFolder](CppGetFoldersInFolder.md) can be used to obtain
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

 

 

 

 

 

 

