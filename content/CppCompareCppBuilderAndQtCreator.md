
 

 

 

 

 

([C++](Cpp.md)) [Comparison of C++ Builder and Qt Creator](CppCompareCppBuilderAndQtCreator.md)
=================================================================================================

 

This [article](CppArticle.md) is about comparing [C++
Builder](CppBuilder.md) and [Qt Creator](CppQtCreator.md). After nine
years experience with [C++ Builder](CppBuilder.md) and working with [Qt
Creator](CppQtCreator.md) for about a year, it is time to make a
personal comparison.

 

 

 

 

 

Quick facts chart
-----------------

 

+--------------------------+--------------------------+--------------------------+
| **Criterium**            | **[C++                   | **[Qt                    |
|                          | Builder](CppBuilder.md) | Creator](CppQtCreator.ht |
|                          | 6.0 Enterprise edition** | m)                       |
|                          |                          | 1.3.1**                  |
+--------------------------+--------------------------+--------------------------+
| **Owner**                | [Embarcadero             | [Qt Development          |
|                          | Technologies](http://www | Frameworks](http://qt.no |
|                          | .embarcadero.com)        | kia.com)                 |
+--------------------------+--------------------------+--------------------------+
| **Year of release**      | 2002                     | 2010                     |
+--------------------------+--------------------------+--------------------------+
| **[Licence](CppLicence.h | Proprietary              | GPL and commercial       |
| tm)**                    |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **Supported operating    | Windows                  | Linux, Mac, Windows      |
| systems**                |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **How to deploy on other | Use emulator on Windows  | Compile code on other    |
| platform**               | executable               | platform                 |
+--------------------------+--------------------------+--------------------------+
| **Default supplied       | Borland BCC32.EXE        | [G++](CppGpp.md)        |
| [compiler](CppCompiler.h | version 6.0.10.157       | version 4.4.1            |
| tm)**                    |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **[Boost](CppBoost.md)  | About 20-60%:            | 100% (can this be        |
| [compiler](CppCompiler.h | [BCC32.EXE](CppBcc32Exe. | true?):                  |
| tm)                      | htm)                     | [G++](CppGpp.md) is a   |
| support**                | is an unsupported        | supported                |
|                          | [compiler](CppCompiler.h | [compiler](CppCompiler.h |
|                          | tm)                      | tm)                      |
+--------------------------+--------------------------+--------------------------+
| **Supplied with          | [CLX](CppClx.md),       | [OpenGL](CppOpenGl.md), |
| [libraries](CppLibrary.h | [OpenGL](CppOpenGl.md), | [STL](CppStl.md),       |
| tm)**                    | [STL](CppStl.md),       | [Qt4](CppQt.md)         |
|                          | [VCL](CppVcl.md)        |                          |
+--------------------------+--------------------------+--------------------------+
| **[Cpp0x](Cpp0x.md)     | Pre-standard adoption    | Adoption after           |
| adoption**               | (in RAD Studio)          | publication of official  |
|                          |                          | [Cpp0x](Cpp0x.md)       |
|                          |                          | standard                 |
+--------------------------+--------------------------+--------------------------+

 

 

 

 

 

Discussion
----------

 

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
[classes](CppClass.md) \[1\] and about 1000 [VCL](CppVcl.md)
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

 

 

 

 

 

Summary
-------

 

+--------------------------+--------------------------+--------------------------+
| **Criterium**            | **[C++                   | **[Qt                    |
|                          | Builder](CppBuilder.md) | Creator](CppQtCreator.ht |
|                          | 6.0 Enterprise edition** | m)                       |
|                          |                          | 1.3.1**                  |
+--------------------------+--------------------------+--------------------------+
| **Development of console | Similar, low             | Similar, high            |
| applications**           | [Boost](CppBoost.md)    | [Boost](CppBoost.md)    |
|                          | support                  | support                  |
+--------------------------+--------------------------+--------------------------+
| **Initial                | Non-minimal, can be      | Non-minimal, can be      |
| [main](CppMain.md)      | removed ruthlessly       | removed ruthlessly       |
| [function](CppFunction.h |                          |                          |
| tm)                      |                          |                          |
| in console application** |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **[GUI](CppGui.md)      | Plenty of screen space,  | Screen cluttered with    |
| designer**               | all windows can be       | windows, different ways  |
|                          | hidden in the same way,  | to hide and show most    |
|                          | all windows have a       | windows                  |
|                          | shortcut key             |                          |
+--------------------------+--------------------------+--------------------------+
| **Ease of learning       | [VCL](CppVcl.md) has    | [Qt](CppQt.md) has      |
| graphical                | one-to-one transition    | slight differences       |
| [library](CppLibrary.htm | from GUI design and      | between GUI design and   |
| )                        | code.                    | code                     |
| used by                  |                          |                          |
| [GUI](CppGui.md)        |                          |                          |
| designer**               |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **Component/widget       | TLabel for labels,       | QLabel for both labels   |
| architecture**           | [TImage](CppTImage.md)  | and images               |
|                          | for images               |                          |
+--------------------------+--------------------------+--------------------------+
| **Adding methods to      | Transparent, by          | Less transparent, by     |
| dialogs**                | double-clicking an Event | redefining               |
|                          | in the Object Inspector, | [virtual](CppVirtual.htm |
|                          | possible to redefine     | )                        |
|                          | [member                  | [member                  |
|                          | function](CppMemberFunct | functions](CppMemberFunc |
|                          | ion.md)                 | tion.md)                |
|                          | names                    | with names not known to  |
|                          |                          | the beginning programmer |
+--------------------------+--------------------------+--------------------------+
| **Component/widget       | Basic by default, but    | Reimplementation of      |
| use/re-use and           | also possible to         | [virtual](CppVirtual.htm |
| extension**              | reimplement              | )                        |
|                          | [virtual](CppVirtual.htm | [member                  |
|                          | )                        | functions](CppMemberFunc |
|                          | [member                  | tion.md)                |
|                          | functions](CppMemberFunc | with magic names and     |
|                          | tion.md)                | unknown functioning      |
+--------------------------+--------------------------+--------------------------+
| **Layout management**    | All Component have an    | Layout managers          |
|                          | Alignment property, use  |                          |
|                          | of TPanel as workhorses  |                          |
+--------------------------+--------------------------+--------------------------+
| **Documentation**        | Brief and sufficient     | Extensive, but not       |
|                          |                          | suited for beginners'    |
|                          |                          | needs                    |
+--------------------------+--------------------------+--------------------------+

 

My personal conclusion is that I have found it easier to learn to use
[C++ Builder](CppBuilder.md) than [Qt Creator](CppQtCreator.md). [Qt
Creator](CppQtCreator.md) is still young and will hopefully make my
critique redundant in the future. That [Qt Creator](CppQtCreator.md) is
free, cross-platform and is supplied with a great
[compiler](CppCompiler.md) makes the transition from [C++
Builder](CppBuilder.md) to [Qt Creator](CppQtCreator.md) worth it. I
hope my website will help others to take the same step.

 

 

 

 

 

Post your feedback
------------------

 

Feel free to post your feedback about this article at [Programmer's
Heaven](http://www.programmersheaven.com/article/105573-Comparison+of+C%2b%2b+Builder+and+Qt+Creator/info.aspx).

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Nokia overview of all Qt
    classes](http://doc.qt.nokia.com/4.6/classes.html)

 

 

 

 

 

 

