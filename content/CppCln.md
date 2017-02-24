
 

 

 

 

 

([C++](Cpp.md)) ![CLN](PicCln.png) [CLN](CppCln.md)
=====================================================

 

[CLN](CppCln.md) (abbreviation of '[Class](CppClass.md)
[Library](CppLibrary.md) for Numbers') is a [library](CppLibrary.md)
to work with [arbitrary precision](CppArbitraryPrecision.md) data
types.

 

 

 

 

 

 

[Installing CLN](CppClnInstall.md)
-----------------------------------

 

Information about [installing CLN](CppClnInstall.md), can be found at
the page about [installing CLN](CppClnInstall.md).

 

 

 

 

 

[Porting CLN](CppClnPort.md)
-----------------------------

 

Information about [porting CLN](CppClnPort.md), can be found at the
page about [porting CLN](CppClnPort.md).

 

 

 

 

 

[CLN](CppCln.md) [data types](CppDataType.md)
-----------------------------------------------

 

1.  [cln::cl\_I](CppCl_I.md) ([integer](CppInt.md))

 

 

 

 

 

[CLN](CppCln.md) examples
--------------------------

 

-   [1: basics: large factorials](CppClnExample1.md)
-   [2: basics: adding seperators to integers](CppClnExample2.md)
-   [how to port CLN from Ubuntu to
    Windows](CppClnFromUbuntuToWindows.md)
-   [Tool: SimplifyNewick](ToolSimplifyNewick.md)
-   [Tool: TestBinaryNewickVector](ToolTestBinaryNewickVector.md)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent [link errors](CppLinkError.md)):

 

  ------------------
  ` LIBS += -lcln`
  ------------------

 

 

 

 

 

My [CLN](CppCln.md) review
---------------------------

 

In general, I'd review [CLN](CppCln.md) positively.

 

Pros:

 

-   Easy to use under Linux, as it comes built with many distributions
-   According to apfloat, it is superior (compared to apfloat)

 

Cons:

 

-   I never succeeded installing under Windows
-   Code comments are in German

 

 

 

 

 

External links
--------------

 

-   [CLN homepage](http://www.ginac.de/CLN)

 

 

 

 

 

 

