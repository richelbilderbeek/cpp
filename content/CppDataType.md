
 

 

 

 

 

([C++](Cpp.md)) [data type](CppDataType.md)
=============================================

 

A [data type](CppDataType.md) is the form that data (for example:
numbers, words, images) has. Every [variable](CppVariable.md) has a
[data type](CppDataType.md). [C++](Cpp.md) is type safe, which means
that during compiling it checks that all conversions are legal.

 

The example below the [definition](CppDefinition.md) of a
[variable](CppVariable.md) of [data type](CppDataType.md)
[double](CppDouble.md) with the name of 'd' being assigned the value
3.1415. The next line tries to assign the text 'hello world' to d, which
is illegal, because 'hello world' if not of [data type](CppDataType.md)
[double](CppDouble.md) (but of [std::string](CppString.md)).

 

  --------------------------------------------------------------------------------
  ` int main() {   double d = 3.1415; //Legal   d = "hello world"; //ILLEGAL! }`
  --------------------------------------------------------------------------------

 

Use a consistent method (such as uppercase first letter) to distinguish
[type](CppDataType.md) names \[1\].

 

 

 

 

 

List of [data types](CppDataType.md) that are also [keywords](CppKeyword.md)
------------------------------------------------------------------------------

 

Some [data types](CppDataType.md) are only accepted by some
[standards](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)
-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

 

1.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [bool](CppBool.md)
2.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [char](CppChar.md)
3.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [char16\_t](CppChar16_t.md)
4.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [char32\_t](CppChar32_t.md)
5.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [double](CppDouble.md)
6.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [float](CppFloat.md)
7.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [int](CppInt.md)
8.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [long](CppLong.md)
9.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [long long
    int](CppLongLongInt.md)
10. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [short](CppShort.md)
11. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [void](CppVoid.md) (in
    the form of [void](CppVoid.md)\*)
12. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [wchar\_t](CppWchar_t.md)

 

The range of each of these data types can be found with
[std::numeric\_limits](CppNumeric_limits.md).

 

 

 

 

 

List of [data types](CppDataType.md) that are not [keywords](CppKeyword.md) (incomplete)
------------------------------------------------------------------------------------------

 

This list will never be complete and is just a colorful collection of
[classes](CppClass.md).

 

1.  [boost::regex](CppBoostRegex.md)
2.  [cln::cl\_I](CppCl_I.md)
3.  [Flood::MultilayerPerceptron](CppFloodMultilayerPerceptron.md)
4.  [HugeVector](CppHugeVector.md)
5.  [QLabel](CppQLabel.md)
6.  [std::string](CppString.md)
7.  [std::vector](CppVector.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.7: 'Use a consistent method
    (such as uppercase first letter) to distinguish type names'

 

 

 

 

 

 

