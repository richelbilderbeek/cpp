



 

 

 

 

 

([C++](Cpp.md)) [\#define](CppDefine.md)
==========================================

 

The [preprocessor](CppPreprocessor.md) directive
[\#define](CppDefine.md) can be used for:

-   [\#include guards](CppIncludeGuard.md)
-   [assert](CppAssert.md)
-   [macro's](CppMacro.md) (not recommended)

 

 

 

 

 

Use of [\#define](CppDefine.md) in [\#include guards](CppIncludeGuard.md)
---------------------------------------------------------------------------

 

The [preprocessor](CppPreprocessor.md) statements
[\#ifndef](CppIfndef.md), [\#define](CppDefine.md) and
[\#endif](CppEndif.md) can be used for [\#include
guards](CppIncludeGuard.md). These prevent a [header
file](CppHeaderFile.md) to be [\#included](CppInclude.md) multiple
times, causing a redeclaration error. Always write (internal) [\#include
guards](CppIncludeGuard.md) \[3,10\]. Consider using
[\#define](CppDefine.md) only for [\#include
guards](CppIncludeGuard.md) \[14\].

 

  ------------------------------------------------------------------------------
  ` #ifndef MYHEADERFILE_H #define MYHEADERFILE_H  //Your header file  #endif`
  ------------------------------------------------------------------------------

 

 

 

 

 

Use of [\#define](CppDefine.md) in the [assert](CppAssert.md) statement
-------------------------------------------------------------------------

 

[\#define](CppDefine.md) is used for the [debugging](CppDebug.md)
[\#define](CppDefine.md) [NDEBUG](CppNDEBUG.md) used by
[assert](CppAssert.md) (among others). Assert liberally to document
internal assumptions and invariants \[4-5,11\].

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  //#define NDEBUG //Uncomment to remove all asserts  double Invert(const double x) {   assert(x!=0.0); //Divisions by zero are illegal   return 1.0/x; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Use of [\#define](CppDefine.md) in [macro's](CppMacro.md)
-----------------------------------------------------------

 

The [preprocessor](CppPreprocessor.md) directive
[\#define](CppDefine.md) is used to define [macro's](CppMacro.md).

 

Avoid [macro's](CppMacro.md) \[1-2,7\] as there are better, type-safe
alternatives: [const](CppConst.md)s, [enum](CppEnum.md)s and
[inline](CppInline.md)s.

 

The example code below states that the
[preprocessor](CppPreprocessor.md) must replace the text 'DOZEN' by the
value of twelve.

 

  ---------------------
  ` #define DOZEN 12`
  ---------------------

 

Prefer [const](CppConst.md) over this type of \#define \[1,7-8,13\].

 

The example code below states that the
[preprocessor](CppPreprocessor.md) must replace the 'x' between
brackets by 'x+1':

 

  ----------------------------
  ` #define PLUS_ONE(x) x+1`
  ----------------------------

 

Prefer [inline](CppInline.md) over this type of
[\#define](CppDefine.md) \[1,7,9,12\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

-   [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. Item 2: Prefer consts, enums and inlines to
    \#defines
-   [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 7.9.4: 'Avoid
    macro's'
-   [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    24: 'Always write internal \#include guards. Never write external
    \#include guards'.
-   [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions
    and invariants'.
-   [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Advice 24.5.18:
    'Explicitly express preconditions, postconditions, and other
    assertions as assertions'.
-   [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 7.9.10: 'If you
    must use macro's, use ugly names with lots of capital letters'.
-   [Jarrod Hollingworth](CppJarrodHollingworth.md), [Bob
    Swart](CppBobSwart.md), [Mark Cashman](CppMarkCashman.md), [Paul
    Gustavson](CppPaulGustavson.md). Sams C++ Builder 6
    Developer's Guide. ISBN:0-672-32480-6. Chapter 3, paragraph 'Know
    when to use the preprocessor', lines 1-2: 'It is not appropriate to
    use the preprocessor for defining constants or for creating
    function macro's. Instead, you should use const variables or enum
    types for constants and use inline function (or inline
    template function) to replace a function macro.
-   [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 21, chapter 'Using \#define for
    constants': 'This is almost never a good idea, however, because
    \#define merely makes a string substitution and does no type
    checking.'
-   [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 21, chapter 'Macros versus
    functions and templates': 'Macros suffer from four problems in C++.
    \[...\] The final problem, however is the biggest: macros are not
    type safe. \[...\] Templates overcome this problem.'
-   [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 21, chapter 'Inclusion and
    inclusion guards': 'It never hurts to use inclusion guards. Often
    they will save you hours of debugging time'. Also: hour 24, chapter
    'include guards': 'All header files should use inclusion guards'.
-   [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 24, chapter 'assert()': 'Use
    assert freely'.
-   Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 29: 'The \#define pre-processor
    directive shall not be used to create inline macros. Inline
    functions shall be used instead.'
-   Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 30: 'The \#define pre-processor
    directive shall not be used to define constant values. Instead, the
    const qualifier shall be applied to variable declarations to specify
    constant values.'
-   Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 31: 'The \#define pre-processor
    directive will only be used as part of the technique to prevent
    multiple inclusions of the same header file.'

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
