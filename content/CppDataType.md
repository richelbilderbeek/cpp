# ([C++](Cpp.md)) [data type](CppDataType.md)

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

```c++
int main()
{
  double d = 3.1415; //Legal
  d = "hello world"; //ILLEGAL!
}
```

## List of [data types](CppDataType.md) that are also [keywords](CppKeyword.md)

Some [data types](CppDataType.md) are only accepted by some [standards](CppStandard.md).

 * ![C++98](PicCpp98.png) [C++98](Cpp98.md)
 * ![C++11](PicCpp11.png) [C++11](Cpp11.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [bool](CppBool.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [char](CppChar.md)
 * ![ ](PicSpacer.png)![C++11](PicCpp11.png)[char16_t](CppChar16_t.md)
 * ![ ](PicSpacer.png)![C++11](PicCpp11.png)[char32_t](CppChar32_t.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [double](CppDouble.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [float](CppFloat.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [int](CppInt.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [long](CppLong.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [long long int](CppLongLongInt.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [short](CppShort.md)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [void](CppVoid.md) (in the form of [void](CppVoid.md)\*)
 * ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [wchar_t](CppWchar_t.md)

The range of each of these data types can be found with [std::numeric_limits](CppStdNumeric_limits.md).

## [Advice](CppAdvice.md)

 * Ideally, a program should be statically type safe [1]
 * Use a consistent method (such as uppercase first letter) to distinguish [type](CppDataType.md) names [2].


# [References](CppReferences.md)

 * [1] [C++ Core Guidelines: P.4: Ideally, a program should be statically type safe](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p4-ideally-a-program-should-be-statically-type-safe)
 * [2] [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Chapter 2.7: 'Use a consistent method (such as uppercase first letter) to distinguish type names'
