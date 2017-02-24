



 

 

 

 

 

([C++](Cpp.md)) [\#include guard](CppIncludeGuard.md)
=======================================================

 

An [\#include guard](CppIncludeGuard.md) prevents a [header
file](CppHeaderFile.md) to be [compiled](CppCompile.md) multiple times
(this will happen if a [header file](CppHeaderFile.md) is
[\#included](CppInclude.md) by multiple [header
files](CppHeaderFile.md), which will cause a redeclaration error).

 

An [\#include guard](CppIncludeGuard.md) looks like the code below:

 

  ------------------------------------------------------------------------------------------------------------------------
  ` #ifndef MYHEADERFILE_H #define MYHEADERFILE_H  //Your header file code, guaranteed to be compiled only once  #endif`
  ------------------------------------------------------------------------------------------------------------------------

 

An [implementation (.cpp) file](CppImplementationFile.md) does not have
an [\#include guard](CppIncludeGuard.md), because they do not get
[\#included](CppInclude.md), but 'Added to Project' instead.

 

Always write [\#include guards](CppIncludeGuard.md) \[1-5\]. Always
write internal [\#include guards](CppIncludeGuard.md) \[1-4\]. Never
write external [\#include guards](CppIncludeGuard.md) \[1,4\]. Do write
external [\#include guards](CppIncludeGuard.md) \[6\]. Use a unique and
predictable name for the [\#include guard](CppIncludeGuard.md) \[3\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    24: 'Always write internal \#include guards. Never write external
    \#include guards'
2.  [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 21, chapter 'Inclusion and
    inclusion guards': 'It never hurts to use inclusion guards. Often
    they will save you hours of debugging time'. Also: hour 24, chapter
    'include guards': 'All header files should use inclusion guards'
3.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.4: 'Place a unique and
    predicatable (internal) include guard around the contents of each
    header file'
4.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 27: '\#ifndef, \#define and \#endif
    will be used to prevent multiple inclusions of the same header file.
    Other techniques to prevent the multiple inclusions of header files
    will not be used.'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[7\] Use include guards'
6.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section 2.5, page 85: 'Place a
    redundant (external) include guard around each preprocessor include
    directive in every header file'

 

 

 

 

 





 



