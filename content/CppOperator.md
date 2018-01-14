# ([C++](Cpp.md)) [operator](CppOperator.md)

[Keyword](CppKeyword.md) to [overload](CppOverload.md) an
[operator](CppOperator.md). An [operator](CppOperator.md) performs a
[function](CppFunction.md) or [member function](CppMemberFunction.md).


## Overview of operators (incomplete)

[operator](CppOperator.md)|[operator](CppOperator.md)
---|---
[address-of operator](CppOperatorAddressOf.md) | [&](CppOperatorAddressOf.md)
[dereference operator](CppOperatorDereference.md) | [\*](CppOperatorDereference.md)
[assign operator](CppOperatorAssign.md) | [=](CppOperatorAssign.md)
[bit shift left assign operator](CppOperatorBitShiftLeftAssign.md) | [&lt;&lt;=](CppOperatorBitShiftLeftAssign.md)
[bit shift right assign operator](CppOperatorBitShiftRightAssign.md) | [&gt;&gt;=](CppOperatorBitShiftRightAssign.md)
[bitwise and operator](CppOperatorBitwiseAnd.md) | [&](CppOperatorBitwiseAnd.md)
[bitwise not operator](CppOperatorBitwiseNot.md) | [\~](CppOperatorBitwiseNot.md)
[bitwise or operator](CppOperatorBitwiseOr.md) | [|](CppOperatorBitwiseOr.md)
[bitwise xor operator](CppOperatorBitwiseXor.md) | [\^](CppOperatorBitwiseXor.md)
[bitwise xor assign operator](CppOperatorBitwiseXorAssign.md) | [\^=](CppOperatorBitwiseXorAssign.md)
[comma operator](CppOperatorComma.md) | [,](CppOperatorComma.md)
[decrement operator](CppOperatorDecrement.md) | [--](CppOperatorDecrement.md)
[divide assign operator](CppOperatorDivideAssign.md) | [/=](CppOperatorDivideAssign.md)
[divide operator](CppOperatorDivide.md) | [/](CppOperatorDivide.md)
[equal operator](CppOperatorEqual.md) | [==](CppOperatorEqual.md)
[function call operator](CppOperatorFunctionCall.md) | [()](CppOperatorFunctionCall.md)
[greater than operator](CppOperatorGreater.md) | [&gt;](CppOperatorGreater.md)
[greater than or equal operator](CppOperatorGreaterEqual.md) | [&gt;=](CppOperatorGreaterEqual.md)
[increment operator](CppOperatorIncrement.md) | [++](CppOperatorIncrement.md)
[index operator](CppOperatorIndex.md) | [\[](CppOperatorIndex.md)
[index operator](CppOperatorIndex.md) | [\[\]](CppOperatorIndex.md)
[index operator](CppOperatorIndex.md) | [\]](CppOperatorIndex.md)
[less than operator](CppOperatorLess.md) | [&lt;](CppOperatorLess.md)
[less than or equal operator](CppOperatorLessEqual.md) | [&lt;=](CppOperatorLessEqual.md)
[logical and operator](CppOperatorLogicalAnd.md) | [&&](CppOperatorLogicalAnd.md)
[logical not operator](CppOperatorLogicalNot.md) | [!](CppOperatorLogicalNot.md)
[||, logical or operator](CppOperatorLogicalOr.md) | [||](CppOperatorLogicalOr.md)
 member access operator | .
[arrow operator](CppArrowOperator.md) | -&gt;
[minus assign operator](CppOperatorMinusAssign.md) | [-=](CppOperatorMinusAssign.md)
[minus operator](CppOperatorMinus.md) | [-](CppOperatorMinus.md)
[modulus assign operator](CppOperatorModulusAssign.md) | [%=](CppOperatorModulusAssign.md)
[modulus operator](CppOperatorModulus.md) | [%](CppOperatorModulus.md)
[multiply assign operator](CppOperatorMultiplyAssign.md) | [\*=](CppOperatorMultiplyAssign.md)
[multiply operator](CppOperatorMultiply.md) | [\*](CppOperatorMultiply.md)
[not equal operator](CppOperatorNotEqual.md) | [!=](CppOperatorNotEqual.md)
[plus assign operator](CppOperatorPlusAssign.md) | [+=](CppOperatorPlusAssign.md)
[plus operator](CppOperatorPlus.md) | [+](CppOperatorPlus.md)
[questionmark colon operator](CppOperatorQuestionmarkColon.md) | [?:](CppOperatorQuestionmarkColon.md)
[scope operator](CppOperatorScope.md) | [::](CppOperatorScope.md)
[sizeof operator](CppSizeof.md) | [sizeof](CppOperatorSizeof.md)
[stream out operator](CppOperatorStreamOut.md) | [&lt;&lt;](CppOperatorStreamOut.md)

## [Advice](CppAdvice.md)

 * Use operator overloads judiciously [6]
 * [Define](CppDefinition.md) [operators](CppOperator.md) primarily to mimic conventional usage [1]
 * Place spaces on either side of a binary [operator](CppOperator.md) [2]
 * [Define](CppDefinition.md) [operators](CppOperator.md) consistently with each other and whenever appropriate provide semantics similar to those of standard types [3]
 * Pay attention that the semantic/intended priority of your overloaded [operators](CppOperator.md) matches the priorities of [C++](Cpp.md) [operators](CppOperator.md) [4]
 * Implement binary [operators](CppOperator.md) as free [functions](CppFunction.md) [5]

## [References](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7. Advice, page 547: '\[1\] Define operators primarily to mimic conventional usage'
 * [2] Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition). 2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Good Programming Practice 2.7. page 28: 'Place spaces on either side of a binary operator. This will make the operator stand out and make the program more readable.'
 * [3] Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015. Chapter 2.7.1: 'Define your operators consistently with each other and whenever appropriate provide semantics similar to those of standard types'
 * [4] Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015. Chapter 2.7.2: 'Pay attention that the semantic/intended priority of your overloaded operators matches the priorities of C++ operators'
 * [5] Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015. Chapter 2.7.3: 'Implement binary operators as free functions'
 * [6] [Jason Turner, cppbestpractices: Use Operator Overloads Judiciously](https://github.com/lefticus/cppbestpractices/blob/master/03-Style.md#use-operator-overloads-judiciously)
