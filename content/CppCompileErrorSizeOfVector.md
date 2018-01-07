
 

 

 

 

 

([C++](Cpp.md)) [Size of @\_STL@%vector%78\_STL@... is unknown or zero](CppCompileErrorSizeOfVector.md)
=========================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] Size of @_STL@%vector%78_STL@%pair$63_STL@%basic_string$c20_STL@char_traits$c%18_STL@allocator$c%%i%97_STL@%allocator$78_STL@$pair$63_STL@%basic_string$c20_STL@ is unknown or zero`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View a screenshot of this
    error](CppCompileErrorSizeOfVectorUnknownOrZero.png)

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

[Libraries](CppLibrary.md) used:

-   [STL](CppStl.md): version supplied with [C++
    Builder](CppBuilder.md) 6.0

 

 

 

 

 

### Source code

 

  -------------------------------------------------------------------------------------------------------
  ` struct MyForm : public TForm {   void std::vector<std::pair<std::string,int> > question_scores; };`
  -------------------------------------------------------------------------------------------------------

 

The cause is that the member variable question\_scores is of type
'[std::vector](CppStdVector.md)&lt;[std::pair](CppPair.md)&lt;[std::string](CppStdString.md),**[int](CppInt.md)**&gt;
&gt;', instead of '[void](CppVoid.md)
[std::vector](CppStdVector.md)&lt;[std::pair](CppPair.md)&lt;[std::string](CppStdString.md),**[int](CppInt.md)**&gt;
&gt;' ([void](CppVoid.md) is used erroneously).

 

 

 

 

 

Solution
--------

 

Remove the '[void](CppVoid.md)' [keyword](CppKeyword.md):

 

  --------------------------------------------------------------------------------------------------
  ` struct MyForm : public TForm {   std::vector<std::pair<std::string,int> > question_scores; };`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

 

