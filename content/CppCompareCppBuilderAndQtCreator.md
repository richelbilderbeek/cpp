# ([C++](Cpp.md)) [Comparison of C++ Builder and Qt Creator](CppCompareCppBuilderAndQtCreator.md)

This [article](CppArticle.md) is about comparing [C++
Builder](CppBuilder.md) and [Qt Creator](CppQtCreator.md). After nine
years experience with [C++ Builder](CppBuilder.md) and working with [Qt
Creator](CppQtCreator.md) for about a year, it is time to make a
personal comparison.

## Quick facts chart

Criterium|[C++ Builder](CppBuilder.md) 6.0 Enterprise edition|[Qt Creator](CppQtCreator.md) 1.3.1
---|---|---
Owner|[Embarcadero Technologies](http://www.embarcadero.com)|[Qt Development Frameworks](http://qt.nokia.com)
Year of release|2002|2010
[Licence](CppLicence.md)|Proprietary| GPL and commercial
Supported operating systems|Windows|Linux, Mac, Windows
How to deploy on other platform|Use emulator on Windows platform|Compile code on other platform, cross-compile
Default supplied [compiler](CppCompiler.md)|Borland BCC32.EXE version 6.0.10.157|[GCC](CppGcc.md) version 4.4.1
[Boost](CppBoost.md) [compiler](CppCompiler.md) support|About 20-60%|100%
Supplied with [libraries](CppLibrary.md)|[CLX](CppClx.md), [OpenGL](CppOpenGl.md), [STL](CppStl.md), [VCL](CppVcl.md)|[OpenGL](CppOpenGl.md), [STL](CppStl.md), [Qt4](CppQt.md)
[Cpp0x](Cpp11.md) adoption|Pre-standard adoption (in RAD Studio) | Adoption after publication of official [Cpp11](Cpp11.md) standard

## Discussion

Below, I discuss the three items I encountered most in detail: writing
console applications, writing GUI applications and documentation needed
to learn both [IDEs](CppIde.md).

### Console applications

For console applications, the switch from [C++ Builder](CppBuilder.md)
to [Qt Creator](CppQtCreator.md) is easy, as there are few differences
between the [IDE](CppIde.md)s. The main advantage of [Qt
Creator](CppQtCreator.md) is its superior [compiler](CppCompiler.md)
with 100% (can this be true?) [Boost](CppBoost.md) support.

When a console application is started, both [C++
Builder](CppBuilder.md) and [Qt Creator](CppQtCreator.md) show a
non-minimal [main](CppMain.md) function. In both [IDE](CppIde.md)s,
this initial code can be ruthlessly removed.

### [GUI](CppGui.md) applications

For [GUI](CppGui.md) applications, the switch from [C++
Builder](CppBuilder.md) to [Qt Creator](CppQtCreator.md) is hard. [C++
Builder](CppBuilder.md) uses the [VCL](CppVcl.md)
[libary](CppLibrary.md), where [Qt Creator](CppQtCreator.md) uses the
very different [Qt4](CppQt.md) [libary](CppLibrary.md).

I have been using the [GUI](CppGui.md) designer on a 1024x768
resolution for [Qt Creator](CppQtCreator.md) and 800x600 for [C++
Builder](CppBuilder.md). Although the screen resolution I used for [C++
Builder](CppBuilder.md) was lower, the screen felt less full: in [C++
Builder](CppBuilder.md) you can hide all windows by clicking the X on
top-right of eacht window. In [Qt Creator](CppQtCreator.md) some, but
not all, windows can be hidden by clicking on different positions, so it
is easier to clean up the designer screen in [C++
Builder](CppBuilder.md).

Personally, the main difference between these graphical libraries is the
ease of self-learning: there are about 800 [Qt](CppQt.md)
[classes](CppClass.md) [1] and about 1000 [VCL](CppVcl.md)
[classes](CppClass.md) (estimation from [VCL](CppVcl.md) hierarchy
chart). For me, it felt easier to discover the [VCL](CppVcl.md)
[classes](CppClass.md)' working: all visual components can be explored
with the Object Inspector and there is a one-to-one transition to do the
same adaptations in code. In my humble opinion, [VCL](CppVcl.md)
[classes](CppClass.md) are easier to learn by experimenting with them.

Both [C++ Builder](CppBuilder.md) and [Qt Creator](CppQtCreator.md)
come with some default visual components/widgets (a [C++
Builder](CppBuilder.md) Component equals a [Qt
Creator](CppQtCreator.md) Widget). What I do not understand of [Qt
Creator](CppQtCreator.md) (yet), is that one needs a QLabel to display
an image, where in [C++ Builder](CppBuilder.md) one can use a TLabel
for text and [TImage](CppTImage.md) for images. I would find it
appropriate that a QLabel/TLabel displays text only.

A [GUI](CppGui.md) designer does not only enable a programmer to design
a dialog, but also to add [member functions](CppMemberFunction.md) to
it. In [C++ Builder](CppBuilder.md) this is done very transparently: in
the Object Inspector one can select each Component's Events and by
double-clicking generate a custom-named [member
function](CppMemberFunction.md). In [Qt Creator](CppQtCreator.md) one
must implement [virtual](CppVirtual.md) [member
functions](CppMemberFunction.md) with pre-defined names that are not
known to the beginning programmer.

The layout managent of the visual components for me was easier in [C++
Builder](CppBuilder.md), where one needs to use TPanels as workhorses
and set their alignments. The layout managers of [Qt
Creator](CppQtCreator.md) work fine, but I have not lost my preferences
for the [C++ Builder](CppBuilder.md) way.

The architecture of using [VCL](CppVcl.md) or [Qt](CppQt.md)
[classes](CppClass.md) differs. Using a [VCL](CppVcl.md)
[class](CppClass.md) is basic by default: one
[instanciates](CppInstance.md) it and let it be managed by itself or
something else using its [interface](CppInterface.md) only. In
[Qt](CppQt.md) [classes](CppClass.md) it is often the case that a
[virtual](CppVirtual.md) [member function](CppMemberFunction.md) needs
to be implemented. For a beginning programmer, these [member
function](CppMemberFunction.md) names are nearly magical ('How could I
know that method's name?') as well as their working ('How can I know
what a paintEvent does?'). In [VCL](CppVcl.md) [classes](CppClass.md),
[member functions](CppMemberFunction.md) can be redefined as well, but
need not to by default. So in my humble opinion, I think that for a
beginning programmer the [Qt](CppQt.md) [classes](CppClass.md) appear
less straightforward.

### Documentation

For both [C++ Builder](CppBuilder.md) and [Qt
Creator](CppQtCreator.md) one needs books or online documentation to
find the way. All the Qt classes' methods, properties, ancestors and
derived classes can all be found online, where the VCL classes this is
not the case: these are found in the context-sensitive help of [C++
Builder](CppBuilder.md) where these are described briefly. Unexpectly,
when I started working with [C++ Builder](CppBuilder.md), I did not
need this high-detail information, as I could find out how it worked
myself. When I need to get something done with Qt, I find myself having
my (two) Qt books opened and about eight Firefox tabs open, often
without finding the answer to my question. So I would say that [Qt
Creator](CppQtCreator.md) is well-documented but not in a way that a
beginner needs, where with [C++ Builder](CppBuilder.md) the brief
documentation suffices.

## Summary

Criterium|C++ Builder|Qt Creator
---|---|---
Development of console applications|Similar, low Boost suppport|Similar, high Boost support
Initial main function in console application|Non-minimal, can be removed ruthlessly|Non-minimal, can be removed ruthlessly
GUI designer| Plenty of screen space, all windows can be hidden in the same way, all windows have a shortcut key|Screen cluttered with windows, different ways to hide and show most windows
Easy of learning graphical library used by designer|VCL has one-to-one transition from GUI design and code|Qt has slight differences between GUI design and code
Component/widget architecture|TLabel for labels, TImage for images|QLabel for both labels and images
Adding methods to dialog|Transparent, by double-clicking an Event in the Object Inspector; possible to redefine member function names|Less transparent, by overriding virtual member functions with names unknown to beginner programmer 
Component/widget use/re-use and extension|Basic by default, but also possible to reimplement virtual member functions|Reimplementation of virtual member functions with magic names and unknown functioning
Layout management|All Component have an Alignment property, use TPanel as workhorses|Layout managers
Documentation|Brief and sufficient|Extensive, but not suited for beginners' needs

My personal conclusion is that I have found it easier to learn to use
[C++ Builder](CppBuilder.md) than [Qt Creator](CppQtCreator.md). [Qt
Creator](CppQtCreator.md) is still young and will hopefully make my
critique redundant in the future. That [Qt Creator](CppQtCreator.md) is
free, cross-platform and is supplied with a great
[compiler](CppCompiler.md) makes the transition from [C++
Builder](CppBuilder.md) to [Qt Creator](CppQtCreator.md) worth it. I
hope my website will help others to take the same step.


## [References](CppReferences.md)

 * [1] [Nokia overview of all Qt classes](http://doc.qt.nokia.com/4.6/classes.html)
