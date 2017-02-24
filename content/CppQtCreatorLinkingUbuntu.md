



 

 

 

 

 

([C++](Cpp.htm)) [Linking against a library in Qt Creator under Ubuntu](CppQtCreatorLinkingUbuntu.htm)
======================================================================================================

 

![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)

 

[Qt Creator FAQ](CppQtFaq.htm) showing how to [linking](CppLinker.htm)
against a [library](CppLibrary.htm) in [Qt Creator](CppQtCreator.htm)
under Ubuntu.

 

In the [Qt Creator](CppQtCreator.htm) [project
file](CppQtProjectFile.htm), add the following line, to
[link](CppLinker.htm) against the [Boost.Regex](CppRegex.htm)
[library](CppLibrary.htm):

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` LIBS += -L/usr/lib -lboost_regex #Or perhaps one of these: #LIBS += -L/usr/local/lib -lboost_regex #LIBS += -lboost_regex`
  ------------------------------------------------------------------------------------------------------------------------------

 

Note that this example assumes that a file called 'libboost.a' or
'libboost.so' (I do not know where it exactly links against) exists in
the /usr/lib folder (if not, you can easily install Boost from the
Ubuntu Software Center).

 

The [Hello Boost](CppHelloBoost.htm) program shows how to
[link](CppLinker.htm) against the [Boost](CppBoost.htm)
[library](CppLibrary.htm) [Boost.Regex](CppRegex.htm) under both Ubuntu
and Windows:

 

  ------------------------------------------------------------------------------------------------
  ` unix:LIBS += -L/usr/lib -lboost_regex win32:LIBS+=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib`
  ------------------------------------------------------------------------------------------------

 

 

 

 

 





 



