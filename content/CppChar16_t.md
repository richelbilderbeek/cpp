

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [char16\_t](CppChar16_t.htm)
=============================================

 

An [char16\_t](CppChar16_t.htm) is a [keyword](CppKeyword.htm) that can
be used, depending on the [standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [char16\_t](CppChar16_t.htm) in the
    [C++98](Cpp98.htm) [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [char16\_t](CppChar16_t.htm) in the
    [C++11](Cpp11.htm) [standard](CppStandard.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [char16\_t](CppChar16_t.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
---------------------------------------------------------------------------------------------------------

 

[char16\_t](CppChar16_t.htm) is not supported in [C++98](Cpp98.htm):

 

  --------------------------------------------------
  ` int main() {   char16_t c; //Fails in C++98 }`
  --------------------------------------------------

 

Compiler output:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:: In function 'int main()': /MyFolder/main.cpp:3: error: 'char16_t' was not declared in this scope /MyFolder/main.cpp:3: error: expected ';' before 'c'`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [char16\_t](CppChar16_t.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
---------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppChar16\_t' (zip)](CppChar16_t.zip)

 

[char16\_t](CppChar16_t.htm) is a [keyword](CppKeyword.htm) for a 16-bit
[character](CppChar.htm).

 

  ---------------------------------
  ` int main() {   char16_t c; }`
  ---------------------------------

 

Technical note: the code shown is [compiled](CppCompile.htm)
successfully using the [G++](CppGpp.htm) 4.4.5
[compiler](CppCompiler.htm), which is supplied with the [Qt
Creator](CppQtCreator.htm) 2.0.0 [IDE](CppIde.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
