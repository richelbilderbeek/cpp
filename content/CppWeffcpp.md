



 

 

 

 

 

([C++](Cpp.htm)) [-Weffc++](CppWeffcpp.htm)
===========================================

 

When adding [-Weffc++](CppWeffcpp.htm) to a [Qt
Creator](CppQtCreator.htm) [project file](CppQtProjectFile.htm) like
below, extra [compile warnings](CppCompileWarning.htm) from 'Effective
C++' by [Scott Meyers](CppScottMeyers.htm) will be given to help you.

 

  -------------------------------
  ` QMAKE_CXXFLAGS += -Weffc++`
  -------------------------------

 

[-Weffc++](CppWeffcpp.htm) does not go together smoothly with
[Qt](CppQt.htm), however. See [-Weffc++ and Qt](CppWeffcppAndQt.htm) how
to possibly resolve this.

 

[Compile](CppCompiler.htm) cleanly at high warning levels \[1\]. Prefer
[compile errors](CppCompileError.htm) to [runtime
errors](CppRuntimeError.htm) \[2\].

 

 

 

 

 

How to add the [-Weffc++](CppWeffcpp.htm) compiler option in your code?
-----------------------------------------------------------------------

 

Add the following line to your code:

 

  ----------------------------------------------
  ` #pragma GCC diagnostic warning "-Weffc++"`
  ----------------------------------------------

 

-   [Download the Qt Creator project
    'CppWeffcppAdd' (zip)](CppWeffcppAdd.zip)

 

 

 

 

 

How to temporarily suppress the [-Weffc++](CppWeffcpp.htm) compiler option?
---------------------------------------------------------------------------

 

Sometimes suppressing [-Weffc++](CppWeffcpp.htm) is the lesser evil (for
example when creating a [derived class](CppDerivedClass.htm) from
[std::binary\_function](CppBinary_function.htm)).

 

Add the line below to your code to start suppressing the
[-Weffc++](CppWeffcpp.htm) [compile warnings](CppCompileWarning.htm):

 

  -----------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" //Your code #pragma GCC diagnostic pop`
  -----------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Qt](PicQt.png) [-Weffc++ and Qt](CppWeffcppAndQt.htm)
-------------------------------------------------------

 

[-Weffc++](CppWeffcpp.htm) does not go together smoothly with
[Qt](CppQt.htm), however. See [-Weffc++ and Qt](CppWeffcppAndQt.htm) how
to possibly resolve this.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 1: 'Compile cleanly at high warning levels'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.

 

 

 

 

 





 



