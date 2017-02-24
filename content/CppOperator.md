



 

 

 

 

 

([C++](Cpp.htm)) [operator](CppOperator.htm)
============================================

 

[Keyword](CppKeyword.htm) to [overload](CppOverload.htm) an
[operator](CppOperator.htm). An [operator](CppOperator.htm) performs a
[function](CppFunction.htm) or [member function](CppMemberFunction.htm).

 

 

 

 

 

Overview of operators (incomplete)
----------------------------------

 

  ----------------------------------------------------------------------- -------------------------------------------------
  **[operator](CppOperator.htm) name**                                    **[operator](CppOperator.htm)**
                                                                          .\*
                                                                          -&gt;\*
  [address-of operator](CppOperatorAddressOf.htm)                         [&](CppOperatorAddressOf.htm)
  [dereference operator](CppOperatorDereference.htm)                      [\*](CppOperatorDereference.htm)
  [assign operator](CppOperatorAssign.htm)                                [=](CppOperatorAssign.htm)
  [bit shift left assign operator](CppOperatorBitShiftLeftAssign.htm)     [&lt;&lt;=](CppOperatorBitShiftLeftAssign.htm)
  [bit shift right assign operator](CppOperatorBitShiftRightAssign.htm)   [&gt;&gt;=](CppOperatorBitShiftRightAssign.htm)
  [bitwise and operator](CppOperatorBitwiseAnd.htm)                       [&](CppOperatorBitwiseAnd.htm)
  [bitwise not operator](CppOperatorBitwiseNot.htm)                       [\~](CppOperatorBitwiseNot.htm)
  [bitwise or operator](CppOperatorBitwiseOr.htm)                         [|](CppOperatorBitwiseOr.htm)
  [bitwise xor operator](CppOperatorBitwiseXor.htm)                       [\^](CppOperatorBitwiseXor.htm)
  [bitwise xor assign operator](CppOperatorBitwiseXorAssign.htm)          [\^=](CppOperatorBitwiseXorAssign.htm)
  [comma operator](CppOperatorComma.htm)                                  [,](CppOperatorComma.htm)
  [decrement operator](CppOperatorDecrement.htm)                          [--](CppOperatorDecrement.htm)
  [divide assign operator](CppOperatorDivideAssign.htm)                   [/=](CppOperatorDivideAssign.htm)
  [divide operator](CppOperatorDivide.htm)                                [/](CppOperatorDivide.htm)
  [equal operator](CppOperatorEqual.htm)                                  [==](CppOperatorEqual.htm)
  [function call operator](CppOperatorFunctionCall.htm)                   [()](CppOperatorFunctionCall.htm)
  [greater than operator](CppOperatorGreater.htm)                         [&gt;](CppOperatorGreater.htm)
  [greater than or equal operator](CppOperatorGreaterEqual.htm)           [&gt;=](CppOperatorGreaterEqual.htm)
  [increment operator](CppOperatorIncrement.htm)                          [++](CppOperatorIncrement.htm)
  [index operator](CppOperatorIndex.htm)                                  [\[](CppOperatorIndex.htm)
  [index operator](CppOperatorIndex.htm)                                  [\[\]](CppOperatorIndex.htm)
  [index operator](CppOperatorIndex.htm)                                  [\]](CppOperatorIndex.htm)
  [less than operator](CppOperatorLess.htm)                               [&lt;](CppOperatorLess.htm)
  [less than or equal operator](CppOperatorLessEqual.htm)                 [&lt;=](CppOperatorLessEqual.htm)
  [logical and operator](CppOperatorLogicalAnd.htm)                       [&&](CppOperatorLogicalAnd.htm)
  [logical not operator](CppOperatorLogicalNot.htm)                       [!](CppOperatorLogicalNot.htm)
  [||, logical or operator](CppOperatorLogicalOr.htm)                     [||](CppOperatorLogicalOr.htm)
  member access operator                                                  .
  [arrow operator](CppArrowOperator.htm)                                  -&gt;
  [minus assign operator](CppOperatorMinusAssign.htm)                     [-=](CppOperatorMinusAssign.htm)
  [minus operator](CppOperatorMinus.htm)                                  [-](CppOperatorMinus.htm)
  [modulus assign operator](CppOperatorModulusAssign.htm)                 [%=](CppOperatorModulusAssign.htm)
  [modulus operator](CppOperatorModulus.htm)                              [%](CppOperatorModulus.htm)
  [multiply assign operator](CppOperatorMultiplyAssign.htm)               [\*=](CppOperatorMultiplyAssign.htm)
  [multiply operator](CppOperatorMultiply.htm)                            [\*](CppOperatorMultiply.htm)
  [not equal operator](CppOperatorNotEqual.htm)                           [!=](CppOperatorNotEqual.htm)
  [plus assign operator](CppOperatorPlusAssign.htm)                       [+=](CppOperatorPlusAssign.htm)
  [plus operator](CppOperatorPlus.htm)                                    [+](CppOperatorPlus.htm)
  [questionmark colon operator](CppOperatorQuestionmarkColon.htm)         [?:](CppOperatorQuestionmarkColon.htm)
  [scope operator](CppOperatorScope.htm)                                  [::](CppOperatorScope.htm)
  [sizeof operator](CppSizeof.htm)                                        [sizeof](CppOperatorSizeof.htm)
  [stream out operator](CppOperatorStreamOut.htm)                         [&lt;&lt;](CppOperatorStreamOut.htm)
  ----------------------------------------------------------------------- -------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   [Define](CppDefinition.htm) [operators](CppOperator.htm) primarily
    to mimic conventional usage \[1\]
-   Place spaces on either side of a binary [operator](CppOperator.htm)
    \[2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice, page 547: '\[1\] Define operators primarily to mimic
    conventional usage'
2.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Good Programming
    Practice 2.7. page 28: 'Place spaces on either side of a
    binary operator. This will make the operator stand out and make the
    program more readable.'

 

 

 

 

 





 



