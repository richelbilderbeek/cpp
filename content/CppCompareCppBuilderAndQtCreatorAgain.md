# ([C++](Cpp.md)) [Comparison of C++ Builder and Qt Creator again...](CppCompareCppBuilderAndQtCreatorAgain.md)

This article is the successor of [Comparison of C++ Builder and Qt
Creator](CppCompareCppBuilderAndQtCreator.md) and is written three
months later (at the 23rd of Agust 2010).

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

In the previous article, I stated that developing console applications
in both [IDE](CppIde.md)'s was easy. But not only does the [Qt
Creator](CppQtCreator.md) support [Boost](CppBoost.md) fully (as far
as I know), but an enormous amount of other [libraries](CppLibrary.md)
as well. This boosts (no pun intended) productivity heavily! I do know
that Embaracadero is working on this, for [C++
Builder](CppBuilder.md)'s successor called for RAD Studio.

What I did not highlight in the previous article, is that [C++
Builder](CppBuilder.md) and its applications run under Windows only.
Except for platform-specific [libraries](CppLibrary.md), I see no
reason to limit oneself to Windows.

### [GUI](CppGui.md) applications

In the previous article, I stated that the GUI designer in [C++
Builder](CppBuilder.md) was less cluttered with windows. To increase
working space, I learned to set the Widget pane to 'Icon View', so I
could push it to a width of two centimeters. This does not work with the
text-based sidebars on the right. I hope that in a future version, this
sidebar can be hidden by a shortcut-key.

I still believe that it is easier to learn [C++
Builder](CppBuilder.md): one can use [C++ Builder](CppBuilder.md)
without knowing how to design [classes](CppClass.md). In [Qt
Creator](CppQtCreator.md) one sometimes has implement
sub-[classes](CppClass.md) and override behavior (for example, when one
wants to imlement a clickable [QLabel](CppQLabel.md)). Although I
believe this design choice of the Qt [library](CppLibrary.md) is good,
I think it is more difficult for beginners: they will have to struggle
with [classes](CppClass.md) first, before they will understand how to
do this.

What I did not mention earlier about the Qt and [C++
Builder](CppBuilder.md) architectures, is that the Qt architecture is
const-correct, unlike [C++ Builder](CppBuilder.md). This aspect makes
it easier to understand Qt: a const method promises not to modify its
members. In [C++ Builder](CppBuilder.md), this is not promised at all.

[QLabel](CppQLabel.md) is a QWidget to display both text and images.
Why this is not seperated in two widgets remains unknown to me. And I
discovered that [QLabel](CppQLabel.md) does not emit a signal when it
is clicked. If [QLabel](CppQLabel.md) would only display text, I would
agree with this design choice: a clickable label can be mimicked by a
flat QButton. But I do wished that an image would emit a signal when
clicked: I use many images as flashy buttons. Personally, I would
suggest two solutions to the problem:

  1. let [QLabel](CppQLabel.md) emit a signal when clicked, or
  2. add a QImage widget that emits a signal when clicked


Adding a custom method to a dialog is still tedious in [Qt
Creator](CppQtCreator.md), but one gets used to it:

  1. add the declaration of the slot to the dialog's declaration, for example 'private slots: void OnButtonClick();'
  2. in the dialog constructor, connect a signal to this slot, for example 'QObject::connect(ui-&gt;button,SIGNAL(clicked()),this,SLOT(OnButtonClick()));'
  3. write down the method definition, for example 'void Dialog::OnButtonClick() { /\* your code \*/ }'

In [C++ Builder](CppBuilder.md)r, this was done within three (really!)
clicks: click on 'Events' of the Object Inspector, then double-click on
the signal you want to respond to.

For the layout managent of the visual components, I have learned to
appreciate the work that all QLayouts do: for simple layouts they do a
great job. But when I want to add certain constraints, this still too
often results in unexpected behaviour: for example, I once had an
application of which I could resize the window to a bigger size, but it
could not be resized to a smaller surface. So, I still think that the
[C++ Builder](CppBuilder.md) TPanels were more intuitive to use.

It hadn't occurred to me before, to note that [Qt
Creator](CppQtCreator.md) does not have any non-visual QWidgets. Sure,
if a widget is visual by definition, this is logical. But [C++
Builder](CppBuilder.md) supplied non-visual TComponents, that could be
placed on the window (but never be seen). This has two advantages:

  1.  it is easier, quicker and safer to manipulate widgets at design time. For example, for the [C++ Builder](CppBuilder.md) TTimer, one can set the time, if it already runs, and which method gets called after timeout. From then on, the TTimer gets created and deleted by [C++ Builder](CppBuilder.md). In [Qt Creator](CppQtCreator.md), one have to write a QTimer declaration, set its timeout, set if its started, connect it to a method, and delete it, each by one line of code
  2. a beginner can find the functionality needed and experiment with it. I find it hard to imagine how a beginner would discover to use a QTimer. In [C++ Builder](CppBuilder.md), everybody will discover TTimer within the first hours

### Documentation

I have learned that the Qt documentation is very good. Note the word
'learned': the Qt documentation has a learning curve, due to:

  1. when searching the documentation about a topic like '2D graphics', there are multiple ways (QPainter,QGraphicsView,[QLabel](CppQLabel.md)), some ways using [classes](CppClass.md) that are connected to (for a beginner: too) many [classes](CppClass.md), for example when trying to use QGraphicsView, QGraphicsScene and QGraphicsItem
  2. if you do know the names, and/or do not understand to override virtual functions, for example 'paintEvent', it is unclear how to use some widgets. For example, if you want to use a QPainter, the documentation states: 'The common use of QPainter is inside a widget's paint event'. Although the documentation subsequently shows how to override the method 'paintEvent', I thought that 'paintEvent' was 'just a name'

So, if you understand the documentation of Qt, its content is as good as
C++ Builder's.

Still, there are two thingss:

  1.  Because [C++ Builder](CppBuilder.md) is easier to learn (as I stated above), I nearly ever needed to use its documentation for VCL [classes](CppClass.md)
  2.  Unlike the Qt documentation, [C++ Builder](CppBuilder.md) also documents [STL](CppStl.md) classes

 

Summarizing this:

  1. The [Qt Creator](CppQtCreator.md) documentation documents its Qt [classes](CppClass.md) as well as [C++ Builder](CppBuilder.md) documents its VCL classes
  2. The [Qt Creator](CppQtCreator.md) documentation takes time to understand, the [C++ Builder](CppBuilder.md) documentation is more intuitive
  3. Unlike [C++ Builder](CppBuilder.md), the [Qt Creator](CppQtCreator.md) documentation lacks [STL](CppStl.md) classes documentation

## Summary

Criterium|[C++ Builder](CppBuilder.md) 6.0 Enterprise edition|[Qt Creator](CppQtCreator.md) 1.3.1
---|---|---
Owner|[Embarcadero Technologies](http://www.embarcadero.com)|[Qt Development Frameworks](http://qt.nokia.com)

Development of console applications|Similar, low Boost support|Similar, high Boost support
Initial main function|Non-minimal, can be removed ruthlessly|Non-minimal, can be removed ruthlessly
GUI designer|Plenty of screen space, all windows can be hidden in the same way, all windows have a shortcut key|Screen cluttered with windows, different ways to hide and show most windows
Ease of learning GUI library|[VCL](CppVcl.md) has non-visual components (TTimer, for example) that a beginner can use without writing code|[Qt](CppQt.md) does not have non-visual widgets, so a QTimer's behavior must be written in code, which is harder and error-prone
Component/widget architecture|Clickable TLabel for labels, clickable [TImage](CppTImage.md) for images|Non-clickable [QLabel](CppQLabel.md) for both labels and images
Adding methods to dialogs|Easy and transparent|Tedious and less transparent
Component/widget use/re-use and extension|Basic by default, but also possible to reimplement virtual member functions|Reimplementation of virtual member functions with magic names and unknown functioning
Layout management|All Component have an Alignment property, use of TPanel as workhorses, TPanel works intuitively for complex custom behavior|Layout managers with good default behavior, but less intuitive for more complex custom behavior
Documentation|VCL classes well documented, easy to read the documentation, STL fully documented|Qt classes well documented, it takes time to learn to read the documentation, no STL documentation

My personal conclusion has remained the same:

  1. [C++ Builder](CppBuilder.md) is easier to learn
  2. the extra effort learning [Qt Creator](CppQtCreator.md) is worth it, because [Qt Creator](CppQtCreator.md) is cross-platform and has a superior compiler

## [References](CppReferences.md)

1.  [Overview of all Qt classes](https://doc.qt.io/qt-5/classes.html)

