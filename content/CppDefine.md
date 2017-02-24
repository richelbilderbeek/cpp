



 

 

 

 

 

([C++](Cpp.htm)) [\#define](CppDefine.htm)
==========================================

 

The [preprocessor](CppPreprocessor.htm) directive
[\#define](CppDefine.htm) can be used for:

-   [\#include guards](CppIncludeGuard.htm)
-   [assert](CppAssert.htm)
-   [macro's](CppMacro.htm) (not recommended)

 

 

 

 

 

Use of [\#define](CppDefine.htm) in [\#include guards](CppIncludeGuard.htm)
---------------------------------------------------------------------------

 

The [preprocessor](CppPreprocessor.htm) statements
[\#ifndef](CppIfndef.htm), [\#define](CppDefine.htm) and
[\#endif](CppEndif.htm) can be used for [\#include
guards](CppIncludeGuard.htm). These prevent a [header
file](CppHeaderFile.htm) to be [\#included](CppInclude.htm) multiple
times, causing a redeclaration error. Always write (internal) [\#include
guards](CppIncludeGuard.htm) \[3,10\]. Consider using
[\#define](CppDefine.htm) only for [\#include
guards](CppIncludeGuard.htm) \[14\].

 

  ------------------------------------------------------------------------------
  ` #ifndef MYHEADERFILE_H #define MYHEADERFILE_H  //Your header file  #endif`
  ------------------------------------------------------------------------------

 

 

 

 

 

Use of [\#define](CppDefine.htm) in the [assert](CppAssert.htm) statement
-------------------------------------------------------------------------

 

[\#define](CppDefine.htm) is used for the [debugging](CppDebug.htm)
[\#define](CppDefine.htm) [NDEBUG](CppNDEBUG.htm) used by
[assert](CppAssert.htm) (among others). Assert liberally to document
internal assumptions and invariants \[4-5,11\].

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  //#define NDEBUG //Uncomment to remove all asserts  double Invert(const double x) {   assert(x!=0.0); //Divisions by zero are illegal   return 1.0/x; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Use of [\#define](CppDefine.htm) in [macro's](CppMacro.htm)
-----------------------------------------------------------

 

The [preprocessor](CppPreprocessor.htm) directive
[\#define](CppDefine.htm) is used to define [macro's](CppMacro.htm).

 

Avoid [macro's](CppMacro.htm) \[1-2,7\] as there are better, type-safe
alternatives: [const](CppConst.htm)s, [enum](CppEnum.htm)s and
[inline](CppInline.htm)s.

 

The example code below states that the
[preprocessor](CppPreprocessor.htm) must replace the text 'DOZEN' by the
value of twelve.

 

  ---------------------
  ` #define DOZEN 12`
  ---------------------

 

Prefer [const](CppConst.htm) over this type of \#define \[1,7-8,13\].

 

The example code below states that the
[preprocessor](CppPreprocessor.htm) must replace the 'x' between
brackets by 'x+1':

 

  ----------------------------
  ` #define PLUS_ONE(x) x+1`
  ----------------------------

 

Prefer [inline](CppInline.htm) over this type of
[\#define](CppDefine.htm) \[1,7,9,12\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

-   [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. Item 2: Prefer consts, enums and inlines to
    \#defines
-   [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 7.9.4: 'Avoid
    macro's'
-   [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    24: 'Always write internal \#include guards. Never write external
    \#include guards'.
-   [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions
    and invariants'.
-   [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Advice 24.5.18:
    'Explicitly express preconditions, postconditions, and other
    assertions as assertions'.
-   [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 7.9.10: 'If you
    must use macro's, use ugly names with lots of capital letters'.
-   [Jarrod Hollingworth](CppJarrodHollingworth.htm), [Bob
    Swart](CppBobSwart.htm), [Mark Cashman](CppMarkCashman.htm), [Paul
    Gustavson](CppPaulGustavson.htm). Sams C++ Builder 6
    Developer's Guide. ISBN:0-672-32480-6. Chapter 3, paragraph 'Know
    when to use the preprocessor', lines 1-2: 'It is not appropriate to
    use the preprocessor for defining constants or for creating
    function macro's. Instead, you should use const variables or enum
    types for constants and use inline function (or inline
    template function) to replace a function macro.
-   [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 21, chapter 'Using \#define for
    constants': 'This is almost never a good idea, however, because
    \#define merely makes a string substitution and does no type
    checking.'
-   [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 21, chapter 'Macros versus
    functions and templates': 'Macros suffer from four problems in C++.
    \[...\] The final problem, however is the biggest: macros are not
    type safe. \[...\] Templates overcome this problem.'
-   [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 21, chapter 'Inclusion and
    inclusion guards': 'It never hurts to use inclusion guards. Often
    they will save you hours of debugging time'. Also: hour 24, chapter
    'include guards': 'All header files should use inclusion guards'.
-   [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
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

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
