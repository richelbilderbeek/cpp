
 

 

 

 

 

([C++](Cpp.md)) [\#include](CppInclude.md)
============================================

 

[\#include](CppInclude.md) is a [preprocessor](CppPreprocessor.md)
directive to add a [header file](CppHeaderFile.md) (.h or .hpp) or
other files to your program.

 

There are multiple forms of a [header file](CppHeaderFile.md)
\#includes:

 

  -----------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> // 1: STL #include <myassert.hpp> // 2: The standard header file directory #include "MyUnit.h" // 3: Local`
  -----------------------------------------------------------------------------------------------------------------------------------

 

 

The first, without the .h extension, means that this [header
file](CppHeaderFile.md) is from the [Standard Template
Library](CppStl.md). The second [\#include](CppInclude.md) means that
the [header](CppHeaderFile.md) is not from the [STL](CppStl.md) but in
the standard [header file](CppHeaderFile.md) directory. The third
[\#include](CppInclude.md) means that the file is local, that is in the
same directory as the program. If the local [\#include](CppInclude.md)
fails, the standard header file directory is checked for this [header
file](CppHeaderFile.md).

 

 

 

 

 

 

The C style include on [STL](CppStl.md) headers
------------------------------------------------

 

For backwards compatibility with C one can [\#include](CppInclude.md)
C++ header files with the .h extension. Do not do this: call the correct
C++ [header file](CppHeaderFile.md). For a list of all C++ standard
[header files](CppHeaderFile.md), [go to the header file
page](CppHeaderFile.md).

 

  -----------------------------------------------------------
  ` #include <stdio.h> //C-stle #include, avoid to do this`
  -----------------------------------------------------------

 

The [header file](CppHeaderFile.md) 'stdio.h' is a wrapper: all it does
is call the C++ [header file](CppHeaderFile.md)
[cstdio](CppCstdioH.md) and then adds a '[using](CppUsing.md)
[namespace](CppNamespace.md) [std](CppStd.md)', as C does not have
[namespaces](CppNamespace.md).

 

This has the unfortunate side-effect that after calling such a [header
file](CppHeaderFile.md) all functions and classes in
[namespace](CppNamespace.md) [std](CppStd.md) will be in the global
[namespace](CppNamespace.md).

 

As it pollutes the global [namespace](CppNamespace.md), avoid
[using](CppUsing.md) [namespace](CppNamespace.md) [std](CppStd.md)
\[4-5\].

 

An example from \[6\]:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> //Carefully avoids polluting the global namespace   vector v1; //Error: no 'vector' in global namespace   #include <stdio.h> //Contains a 'using namespace std'.   vector v2; //Oops: this now works`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[\#including](CppInclude.md) [implementation (.c or .cpp) files](CppImplementationFile.md)
--------------------------------------------------------------------------------------------

 

Conside not [\#including](CppInclude.md) these \[8\], but add these to
your project instead. For example, in [C++ Builder](CppBuilder.md),
select 'Project | Add to Project'.

 

Forgetting to add an implementation file to you project results in a
[link error](CppLinkError.md).

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [\#include](CppInclude.md) only at [global](CppGlobal.md)
    [scope](CppScope.md) and in [namespaces](CppNamespace.md) \[9\]
-   [\#include](CppInclude.md) only complete
    [declarations](CppDeclaration.md) \[10\]
-   Never [\#include](CppInclude.md) unnecessary header files \[1\]
-   Prefer to [\#include](CppInclude.md)
    &lt;[iosfwd](CppIosfwdH.md)&gt; when a [forward
    declaration](CppForwardDeclaration.md) of a [stream](CppStream.md)
    will suffice \[2\]
-   Never [\#include](CppInclude.md) a header when a [forward
    declaration](CppForwardDeclaration.md) will suffice \[3\]
-   The [implementation (.cpp) file](CppImplementationFile.md) of every
    component should [\#include](CppInclude.md) its own [header (.h)
    file](CppHeaderFile.md) as the first substantive line of code \[7\]
-   [include](CppInclude.md) user-defined [headers](CppHeaderFile.md)'
    names in quotes, [include](CppInclude.md) [STL](CppStl.md)
    [headers](CppHeaderFile.md)' names in angle brackets \[12\]
-   Forgetting to [include](CppInclude.md) the
    &lt;[iostream](CppIostreamH.md)&gt; [header](CppHeaderFile.md) in
    a program that inputs data from the keyboard or outputs data to the
    screen causes the [compiler](CppCompiler.md) to issue an
    [error](CppCompileError.md) message \[11\], for example ['cout' is
    not a member of 'std'](CppCompileErrorCoutIsNotAmemberOfStd.md)

 

 

 

 

 

[References](CppReference.md)
------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++. 2000.
    ISBN: 0-201-61562-2. Item 26: 'Never \#include unnecessary
    header files'.
2.  [Herb Sutter](CppHerbSutter.md). Exceptional C++. 2000.
    ISBN: 0-201-61562-2. Item 26: 'Prefer to \#include &lt;iosfwd&gt;
    when a forward declaration of a stream will suffice'.
3.  [Herb Sutter](CppHerbSutter.md). Exceptional C++. 2000.
    ISBN: 0-201-61562-2. Item 26: 'Never \#include a header when a
    forward declaration will suffice'.
4.  C++ FAQ Lite:
    <http://www.parashift.com/c++-faq-lite/coding-standards.html#faq-27.5>.
    Item 27.5: 'Should I use using namespace std in my code? Probably
    not.'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter C.14.15:
    'Don't pollute the global namespace'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 8.2.9.1:
    'Namespaces and C'.
7.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section 3.2, page 110: 'The .c file of
    every component should include its own .h file as the first
    substantive line of code'
8.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 32: 'The \#include pre-processor
    directive will only be used to include header (\*.h) files.'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[5\] Use \#include only at global scope and in
    namespaces'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[6\] \#include only complete declarations'
11. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.2, Common Programming
    Error 2.1. page 21: 'Forgetting to include the &lt;iostream&gt;
    header in a program that inputs data from the keyboard or outputs
    data to the screen causes the compiler to issue an error message'
12. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.6, Error-Prevention
    Tip 3.3. page 57: 'To ensure that the preprocessor can locate
    headers correctly, \#include preprocessing directives should place
    user-defined headers names in quotes \[...\] and place C++ Standard
    Library headers names in angle brackets \[...\]'

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
