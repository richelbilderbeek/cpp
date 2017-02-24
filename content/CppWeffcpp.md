
 

 

 

 

 

([C++](Cpp.md)) [-Weffc++](CppWeffcpp.md)
===========================================

 

When adding [-Weffc++](CppWeffcpp.md) to a [Qt
Creator](CppQtCreator.md) [project file](CppQtProjectFile.md) like
below, extra [compile warnings](CppCompileWarning.md) from 'Effective
C++' by [Scott Meyers](CppScottMeyers.md) will be given to help you.

 

  -------------------------------
  ` QMAKE_CXXFLAGS += -Weffc++`
  -------------------------------

 

[-Weffc++](CppWeffcpp.md) does not go together smoothly with
[Qt](CppQt.md), however. See [-Weffc++ and Qt](CppWeffcppAndQt.md) how
to possibly resolve this.

 

[Compile](CppCompiler.md) cleanly at high warning levels \[1\]. Prefer
[compile errors](CppCompileError.md) to [runtime
errors](CppRuntimeError.md) \[2\].

 

 

 

 

 

How to add the [-Weffc++](CppWeffcpp.md) compiler option in your code?
-----------------------------------------------------------------------

 

Add the following line to your code:

 

  ----------------------------------------------
  ` #pragma GCC diagnostic warning "-Weffc++"`
  ----------------------------------------------

 

-   [Download the Qt Creator project
    'CppWeffcppAdd' (zip)](CppWeffcppAdd.zip)

 

 

 

 

 

How to temporarily suppress the [-Weffc++](CppWeffcpp.md) compiler option?
---------------------------------------------------------------------------

 

Sometimes suppressing [-Weffc++](CppWeffcpp.md) is the lesser evil (for
example when creating a [derived class](CppDerivedClass.md) from
[std::binary\_function](CppBinary_function.md)).

 

Add the line below to your code to start suppressing the
[-Weffc++](CppWeffcpp.md) [compile warnings](CppCompileWarning.md):

 

  -----------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" //Your code #pragma GCC diagnostic pop`
  -----------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Qt](PicQt.png) [-Weffc++ and Qt](CppWeffcppAndQt.md)
-------------------------------------------------------

 

[-Weffc++](CppWeffcpp.md) does not go together smoothly with
[Qt](CppQt.md), however. See [-Weffc++ and Qt](CppWeffcppAndQt.md) how
to possibly resolve this.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 1: 'Compile cleanly at high warning levels'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.

 

 

 

 

 

 

