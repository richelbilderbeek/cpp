
 

 

 

 

 

([C++](Cpp.md)) [Linking against a library in Qt Creator under Ubuntu](CppQtCreatorLinkingUbuntu.md)
======================================================================================================

 

![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)

 

[Qt Creator FAQ](CppQtFaq.md) showing how to [linking](CppLinker.md)
against a [library](CppLibrary.md) in [Qt Creator](CppQtCreator.md)
under Ubuntu.

 

In the [Qt Creator](CppQtCreator.md) [project
file](CppQtProjectFile.md), add the following line, to
[link](CppLinker.md) against the [Boost.Regex](CppRegex.md)
[library](CppLibrary.md):

 

  ------------------------------------------------------------------------------------------------------------------------------
  ` LIBS += -L/usr/lib -lboost_regex #Or perhaps one of these: #LIBS += -L/usr/local/lib -lboost_regex #LIBS += -lboost_regex`
  ------------------------------------------------------------------------------------------------------------------------------

 

Note that this example assumes that a file called 'libboost.a' or
'libboost.so' (I do not know where it exactly links against) exists in
the /usr/lib folder (if not, you can easily install Boost from the
Ubuntu Software Center).

 

The [Hello Boost](CppHelloBoost.md) program shows how to
[link](CppLinker.md) against the [Boost](CppBoost.md)
[library](CppLibrary.md) [Boost.Regex](CppRegex.md) under both Ubuntu
and Windows:

 

  ------------------------------------------------------------------------------------------------
  ` unix:LIBS += -L/usr/lib -lboost_regex win32:LIBS+=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib`
  ------------------------------------------------------------------------------------------------

 

 

 

 

 

 

