# ([C++](Cpp.md)) [Linker](CppLinker.md)

The [linker](CppLinker.md) [links](CppLink.md) [compilation
units](CppUnit.md) of a project into a single executable.

[Linking](CppLink.md) takes place after [compiling](CppCompiler.md). An
[error](CppError.md) during [linking](CppLink.md) is called a [link
error](CppLinkError.md).

## ![Qt Creator](PicQtCreator.png) Use a custom [linker](CppLinker.md) in [Qt Creator](CppQtCreator.md)

Add (something like) the following lines to your [Qt project
file](CppQtProjectFile.md) (from \[1\]):

```
QMAKE_CXX = c:/Dev-Cpp/bin/g++
QMAKE_LINK = c:/Dev-Cpp/bin/g++
``` 

## External links

 * [Wikipedia page about linker](http://en.wikipedia.org/wiki/Linker_%28computing%29)
 * [CppCon 2017: Nir Friedman 'What C++ developers should know about globals (and the linker)'](https://youtu.be/xVT1y0xWgww)

## [References](CppReferences.md)

 * 1.  [QtForum.org post](http://www.qtforum.org/article/33565/specifying-the-linker.html)
