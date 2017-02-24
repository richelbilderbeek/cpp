[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Comparison of C++ Builder and Qt Creator](CppCompareCppBuilderAndQtCreator.htm)
=================================================================================================

 

This [article](CppArticle.htm) is about comparing [C++
Builder](CppBuilder.htm) and [Qt Creator](CppQtCreator.htm). After nine
years experience with [C++ Builder](CppBuilder.htm) and working with [Qt
Creator](CppQtCreator.htm) for about a year, it is time to make a
personal comparison.

 

 

 

 

 

Quick facts chart
-----------------

 

+--------------------------+--------------------------+--------------------------+
| **Criterium**            | **[C++                   | **[Qt                    |
|                          | Builder](CppBuilder.htm) | Creator](CppQtCreator.ht |
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
| **Default supplied       | Borland BCC32.EXE        | [G++](CppGpp.htm)        |
| [compiler](CppCompiler.h | version 6.0.10.157       | version 4.4.1            |
| tm)**                    |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **[Boost](CppBoost.htm)  | About 20-60%:            | 100% (can this be        |
| [compiler](CppCompiler.h | [BCC32.EXE](CppBcc32Exe. | true?):                  |
| tm)                      | htm)                     | [G++](CppGpp.htm) is a   |
| support**                | is an unsupported        | supported                |
|                          | [compiler](CppCompiler.h | [compiler](CppCompiler.h |
|                          | tm)                      | tm)                      |
+--------------------------+--------------------------+--------------------------+
| **Supplied with          | [CLX](CppClx.htm),       | [OpenGL](CppOpenGl.htm), |
| [libraries](CppLibrary.h | [OpenGL](CppOpenGl.htm), | [STL](CppStl.htm),       |
| tm)**                    | [STL](CppStl.htm),       | [Qt4](CppQt.htm)         |
|                          | [VCL](CppVcl.htm)        |                          |
+--------------------------+--------------------------+--------------------------+
| **[Cpp0x](Cpp0x.htm)     | Pre-standard adoption    | Adoption after           |
| adoption**               | (in RAD Studio)          | publication of official  |
|                          |                          | [Cpp0x](Cpp0x.htm)       |
|                          |                          | standard                 |
+--------------------------+--------------------------+--------------------------+

 

 

 

 

 

Discussion
----------

 

Below, I discuss the three items I encountered most in detail: writing
console applications, writing GUI applications and documentation needed
to learn both [IDEs](CppIde.htm).

 

 

 

 

 

### Console applications

 

For console applications, the switch from [C++ Builder](CppBuilder.htm)
to [Qt Creator](CppQtCreator.htm) is easy, as there are few differences
between the [IDE](CppIde.htm)s. The main advantage of [Qt
Creator](CppQtCreator.htm) is its superior [compiler](CppCompiler.htm)
with 100% (can this be true?) [Boost](CppBoost.htm) support.

 

When a console application is started, both [C++
Builder](CppBuilder.htm) and [Qt Creator](CppQtCreator.htm) show a
non-minimal [main](CppMain.htm) function. In both [IDE](CppIde.htm)s,
this initial code can be ruthlessly removed.

 

 

 

 

 

### [GUI](CppGui.htm) applications

 

For [GUI](CppGui.htm) applications, the switch from [C++
Builder](CppBuilder.htm) to [Qt Creator](CppQtCreator.htm) is hard. [C++
Builder](CppBuilder.htm) uses the [VCL](CppVcl.htm)
[libary](CppLibrary.htm), where [Qt Creator](CppQtCreator.htm) uses the
very different [Qt4](CppQt.htm) [libary](CppLibrary.htm).

 

I have been using the [GUI](CppGui.htm) designer on a 1024x768
resolution for [Qt Creator](CppQtCreator.htm) and 800x600 for [C++
Builder](CppBuilder.htm). Although the screen resolution I used for [C++
Builder](CppBuilder.htm) was lower, the screen felt less full: in [C++
Builder](CppBuilder.htm) you can hide all windows by clicking the X on
top-right of eacht window. In [Qt Creator](CppQtCreator.htm) some, but
not all, windows can be hidden by clicking on different positions, so it
is easier to clean up the designer screen in [C++
Builder](CppBuilder.htm).

 

Personally, the main difference between these graphical libraries is the
ease of self-learning: there are about 800 [Qt](CppQt.htm)
[classes](CppClass.htm) \[1\] and about 1000 [VCL](CppVcl.htm)
[classes](CppClass.htm) (estimation from [VCL](CppVcl.htm) hierarchy
chart). For me, it felt easier to discover the [VCL](CppVcl.htm)
[classes](CppClass.htm)' working: all visual components can be explored
with the Object Inspector and there is a one-to-one transition to do the
same adaptations in code. In my humble opinion, [VCL](CppVcl.htm)
[classes](CppClass.htm) are easier to learn by experimenting with them.

 

Both [C++ Builder](CppBuilder.htm) and [Qt Creator](CppQtCreator.htm)
come with some default visual components/widgets (a [C++
Builder](CppBuilder.htm) Component equals a [Qt
Creator](CppQtCreator.htm) Widget). What I do not understand of [Qt
Creator](CppQtCreator.htm) (yet), is that one needs a QLabel to display
an image, where in [C++ Builder](CppBuilder.htm) one can use a TLabel
for text and [TImage](CppTImage.htm) for images. I would find it
appropriate that a QLabel/TLabel displays text only.

 

A [GUI](CppGui.htm) designer does not only enable a programmer to design
a dialog, but also to add [member functions](CppMemberFunction.htm) to
it. In [C++ Builder](CppBuilder.htm) this is done very transparently: in
the Object Inspector one can select each Component's Events and by
double-clicking generate a custom-named [member
function](CppMemberFunction.htm). In [Qt Creator](CppQtCreator.htm) one
must implement [virtual](CppVirtual.htm) [member
functions](CppMemberFunction.htm) with pre-defined names that are not
known to the beginning programmer.

 

The layout managent of the visual components for me was easier in [C++
Builder](CppBuilder.htm), where one needs to use TPanels as workhorses
and set their alignments. The layout managers of [Qt
Creator](CppQtCreator.htm) work fine, but I have not lost my preferences
for the [C++ Builder](CppBuilder.htm) way.

 

The architecture of using [VCL](CppVcl.htm) or [Qt](CppQt.htm)
[classes](CppClass.htm) differs. Using a [VCL](CppVcl.htm)
[class](CppClass.htm) is basic by default: one
[instanciates](CppInstance.htm) it and let it be managed by itself or
something else using its [interface](CppInterface.htm) only. In
[Qt](CppQt.htm) [classes](CppClass.htm) it is often the case that a
[virtual](CppVirtual.htm) [member function](CppMemberFunction.htm) needs
to be implemented. For a beginning programmer, these [member
function](CppMemberFunction.htm) names are nearly magical ('How could I
know that method's name?') as well as their working ('How can I know
what a paintEvent does?'). In [VCL](CppVcl.htm) [classes](CppClass.htm),
[member functions](CppMemberFunction.htm) can be redefined as well, but
need not to by default. So in my humble opinion, I think that for a
beginning programmer the [Qt](CppQt.htm) [classes](CppClass.htm) appear
less straightforward.

 

 

 

 

 

### Documentation

 

For both [C++ Builder](CppBuilder.htm) and [Qt
Creator](CppQtCreator.htm) one needs books or online documentation to
find the way. All the Qt classes' methods, properties, ancestors and
derived classes can all be found online, where the VCL classes this is
not the case: these are found in the context-sensitive help of [C++
Builder](CppBuilder.htm) where these are described briefly. Unexpectly,
when I started working with [C++ Builder](CppBuilder.htm), I did not
need this high-detail information, as I could find out how it worked
myself. When I need to get something done with Qt, I find myself having
my (two) Qt books opened and about eight Firefox tabs open, often
without finding the answer to my question. So I would say that [Qt
Creator](CppQtCreator.htm) is well-documented but not in a way that a
beginner needs, where with [C++ Builder](CppBuilder.htm) the brief
documentation suffices.

 

 

 

 

 

Summary
-------

 

+--------------------------+--------------------------+--------------------------+
| **Criterium**            | **[C++                   | **[Qt                    |
|                          | Builder](CppBuilder.htm) | Creator](CppQtCreator.ht |
|                          | 6.0 Enterprise edition** | m)                       |
|                          |                          | 1.3.1**                  |
+--------------------------+--------------------------+--------------------------+
| **Development of console | Similar, low             | Similar, high            |
| applications**           | [Boost](CppBoost.htm)    | [Boost](CppBoost.htm)    |
|                          | support                  | support                  |
+--------------------------+--------------------------+--------------------------+
| **Initial                | Non-minimal, can be      | Non-minimal, can be      |
| [main](CppMain.htm)      | removed ruthlessly       | removed ruthlessly       |
| [function](CppFunction.h |                          |                          |
| tm)                      |                          |                          |
| in console application** |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **[GUI](CppGui.htm)      | Plenty of screen space,  | Screen cluttered with    |
| designer**               | all windows can be       | windows, different ways  |
|                          | hidden in the same way,  | to hide and show most    |
|                          | all windows have a       | windows                  |
|                          | shortcut key             |                          |
+--------------------------+--------------------------+--------------------------+
| **Ease of learning       | [VCL](CppVcl.htm) has    | [Qt](CppQt.htm) has      |
| graphical                | one-to-one transition    | slight differences       |
| [library](CppLibrary.htm | from GUI design and      | between GUI design and   |
| )                        | code.                    | code                     |
| used by                  |                          |                          |
| [GUI](CppGui.htm)        |                          |                          |
| designer**               |                          |                          |
+--------------------------+--------------------------+--------------------------+
| **Component/widget       | TLabel for labels,       | QLabel for both labels   |
| architecture**           | [TImage](CppTImage.htm)  | and images               |
|                          | for images               |                          |
+--------------------------+--------------------------+--------------------------+
| **Adding methods to      | Transparent, by          | Less transparent, by     |
| dialogs**                | double-clicking an Event | redefining               |
|                          | in the Object Inspector, | [virtual](CppVirtual.htm |
|                          | possible to redefine     | )                        |
|                          | [member                  | [member                  |
|                          | function](CppMemberFunct | functions](CppMemberFunc |
|                          | ion.htm)                 | tion.htm)                |
|                          | names                    | with names not known to  |
|                          |                          | the beginning programmer |
+--------------------------+--------------------------+--------------------------+
| **Component/widget       | Basic by default, but    | Reimplementation of      |
| use/re-use and           | also possible to         | [virtual](CppVirtual.htm |
| extension**              | reimplement              | )                        |
|                          | [virtual](CppVirtual.htm | [member                  |
|                          | )                        | functions](CppMemberFunc |
|                          | [member                  | tion.htm)                |
|                          | functions](CppMemberFunc | with magic names and     |
|                          | tion.htm)                | unknown functioning      |
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
[C++ Builder](CppBuilder.htm) than [Qt Creator](CppQtCreator.htm). [Qt
Creator](CppQtCreator.htm) is still young and will hopefully make my
critique redundant in the future. That [Qt Creator](CppQtCreator.htm) is
free, cross-platform and is supplied with a great
[compiler](CppCompiler.htm) makes the transition from [C++
Builder](CppBuilder.htm) to [Qt Creator](CppQtCreator.htm) worth it. I
hope my website will help others to take the same step.

 

 

 

 

 

Post your feedback
------------------

 

Feel free to post your feedback about this article at [Programmer's
Heaven](http://www.programmersheaven.com/article/105573-Comparison+of+C%2b%2b+Builder+and+Qt+Creator/info.aspx).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Nokia overview of all Qt
    classes](http://doc.qt.nokia.com/4.6/classes.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
