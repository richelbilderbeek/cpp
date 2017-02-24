

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [data type](CppDataType.htm)
=============================================

 

A [data type](CppDataType.htm) is the form that data (for example:
numbers, words, images) has. Every [variable](CppVariable.htm) has a
[data type](CppDataType.htm). [C++](Cpp.htm) is type safe, which means
that during compiling it checks that all conversions are legal.

 

The example below the [definition](CppDefinition.htm) of a
[variable](CppVariable.htm) of [data type](CppDataType.htm)
[double](CppDouble.htm) with the name of 'd' being assigned the value
3.1415. The next line tries to assign the text 'hello world' to d, which
is illegal, because 'hello world' if not of [data type](CppDataType.htm)
[double](CppDouble.htm) (but of [std::string](CppString.htm)).

 

  --------------------------------------------------------------------------------
  ` int main() {   double d = 3.1415; //Legal   d = "hello world"; //ILLEGAL! }`
  --------------------------------------------------------------------------------

 

Use a consistent method (such as uppercase first letter) to distinguish
[type](CppDataType.htm) names \[1\].

 

 

 

 

 

List of [data types](CppDataType.htm) that are also [keywords](CppKeyword.htm)
------------------------------------------------------------------------------

 

Some [data types](CppDataType.htm) are only accepted by some
[standards](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)
-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

 

1.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [bool](CppBool.htm)
2.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [char](CppChar.htm)
3.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [char16\_t](CppChar16_t.htm)
4.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [char32\_t](CppChar32_t.htm)
5.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [double](CppDouble.htm)
6.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [float](CppFloat.htm)
7.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [int](CppInt.htm)
8.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [long](CppLong.htm)
9.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [long long
    int](CppLongLongInt.htm)
10. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [short](CppShort.htm)
11. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [void](CppVoid.htm) (in
    the form of [void](CppVoid.htm)\*)
12. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [wchar\_t](CppWchar_t.htm)

 

The range of each of these data types can be found with
[std::numeric\_limits](CppNumeric_limits.htm).

 

 

 

 

 

List of [data types](CppDataType.htm) that are not [keywords](CppKeyword.htm) (incomplete)
------------------------------------------------------------------------------------------

 

This list will never be complete and is just a colorful collection of
[classes](CppClass.htm).

 

1.  [boost::regex](CppBoostRegex.htm)
2.  [cln::cl\_I](CppCl_I.htm)
3.  [Flood::MultilayerPerceptron](CppFloodMultilayerPerceptron.htm)
4.  [HugeVector](CppHugeVector.htm)
5.  [QLabel](CppQLabel.htm)
6.  [std::string](CppString.htm)
7.  [std::vector](CppVector.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.7: 'Use a consistent method
    (such as uppercase first letter) to distinguish type names'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
