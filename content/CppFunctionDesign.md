([C++](Cpp.md)) [function design](CppFunctionDesign.md)

[Function design](CppFunctionDesign.md) is the correct design of a [function](CppFunction.md). 

## [Advice](CppAdvice.md)

### General

 * Avoid writing long [functions](CppFunction.md) [1-2,5,35]
 * Avoid using [functions](CppFunction.md) with a large number of arguments [36]
 * Prefer functions over [macros](CppMacro.md) [23,24]
 * If a function may have to be evaluated at compile time, declare it [constexpr](CppConstexpr.md) [7]

## The name of the function should say what it does

 * Do use names like [Swap](CppSwap.md), [IsPrime](CppIsPrime.md), [StrToInt](CppStrToInt.md)
 * Do not use names like `DoIt`, `Transmogrify`, `Stuff`
 * Exceptions: `Transmogrify` is a function name commonly used in the literature to denote a function you are not aware of what it is doing

## A function should perform a single logical operation [4]

 * Do not use names with 'And' in it, like SwapAndGetMean
 * Do use two functions instead, Swap and GetMean
 * Exceptions: some mathematical functions can cooperate and so improve runtime speed: [MeanAndStdDev](CppMeanAndStdDev.md) executes faster then calling the seperate functions for Mean and StdDev

## [Interface](CppInterface.md)

 * Make [interfaces](CppInterface.md) easy to use correctly and hard to use incorrectly [41,47]
 * Make [interfaces](CppInterface.md) explicit (that is, among others, independent of global variables) [46]
 * Seperate the [interface](CppInterface.md) of a [class](CppClass.md) from its [implementation](CppImplementation.md) [44]: allow the user not to know what kind of [data types](CppDataType.md) you used in the [private](CppPrivate.md) section of your class
 * Use [const](CppConst.md) [pointers](CppPointer.md) and [const](CppConst.md) [references](CppReference.md) to express immutability in interfaces [43]
 * [Document](CppDocumentation.md) the [interfaces](CppInterface.md) so that they are usable by others [42]
 * Have at least one other developer review each [interface](CppInterface.md) [42]
 * Prefer [public](CppPublic.md) [members](CppMember.md) for [interfaces](CppInterface.md) [45]

## The [return type](CppReturnType.md) is expected from the name of the function

 * If a function cannot return, mark it [[[noreturn]]](CppNoreturn.md) [8]
 * Do give a function a [void](CppVoid.md) [return type](CppReturnType.md) when it has no [return type](CppReturnType.md)
 * Do return a non-[pointer](CppPointer.md) non-[reference](CppReference.md) object when a function is expected to always execute successfully on the assumptions that its [arguments](CppArgument.md) are valid
 * Return a result as a return value rather than modifying an object through an argument [11]
 * Do return a [pointer](CppPointer.md) (or better: a [smart pointer](CppSmartPointer.md)) to a [data type](CppDataType.md) when the [return type](CppReturnType.md) can be [null](CppNull.md), that is: empty. If the [pointer](CppPointer.md) needs to be read-only, make it [const](CppConst.md) (for example '[const](CppConst.md) T \* [const](CppConst.md) GetT()', where GetT is a function that returns a pointer to a T)
 * Do not make a function return a [reference](CppReference.md) to a function's [local](CppLocal.md) variable [6,31], this leads to undefined behavior
 * Do not make a function return an error code, use [exceptions](CppException.md) instead [32]

## The function arguments are expected from the name of the function

 * A function declared with an empty parameter list takes no arguments [37]. Or: write 'int f()' instead of 'int f(void)' [37]
 * Prefer pass-by-reference-to-const to pass-by-value [30]
 * Use pass-by-non-const-reference only if you have to [14]
 * Do use a non-[pointer](CppPointer.md) [reference](CppReference.md) object for expensive-to-copy data types, like [std::string](CppString.md), [std::vector](CppStdVector.md)&lt;int&gt; or Database. Make the argument [const](CppConst.md) if it must be marked read-only [10]
 * Do use a non-[pointer](CppPointer.md) non-[reference](CppReference.md) object for standard data types like int [9]. Make the argument [const](CppConst.md) if it must be marked read-only
 * Do use a [pointer](CppPointer.md) (or better: a [smart pointer](CppSmartPointer.md)) to a [data type](CppDataType.md) when the [argument](CppArgument.md) can be [nullptr](CppNullptr.md)/[null](CppNull.md)/empty [13]. If the [pointer](CppPointer.md) needs to be read-only, make it [const](CppConst.md) (for example 'void CoutT([const](CppConst.md) T \* [const](CppConst.md) t)', where CoutT is a function that uses std::cout on a T)
 * Avoid passing [arrays](CppArray.md) as [pointers](CppPointer.md) [16]
 * Assume that a [char\*](CppCharPointer.md) or a const [char\*](CppCharPointer.md) [argument](CppArgument.md) points to a C-style string [15]
 * Use rvalue references to implement move and forwarding [12]
 * Pass a homogeneous list of unknown length as an [std::initializer_list](CppInitializer_list.md) or as some other [container](CppContainer.md) [17]
 * Avoid unspecified numbers of arguments (...) [18]
 * Prefer to pass function objects (including lambdas) and virtual functions to pointers to functions [22]

## Specify preconditions and postconditions for your functions [21,25-28,38,40]

 * Do use [Expects](CppExpects.md) (preferred [39]) and [exceptions](CppException.md) to make clear to the client which input the function cannot handle. For example, the square root of a negative number does not exist
 * Prefer [Ensures](CppEnsures.md) to express postconditions [48]
 * Do not use error codes as return types, use [exceptions](CppException.md) instead [32]

## Exception handling

 * Don't try to [catch](CppCatch.md) every [exception](CppException.md) in every [function](CppFunction.md) [29]
 * Assume that every [exception](CppException.md) that can be [thrown](CppThrow.md) by a [function](CppFunction.md) will be [thrown](CppThrow.md) [33]
 * If a [function](CppFunction.md) may not [throw](CppThrow.md), [declare](CppDeclaration.md) it [noexcept](CppNoexcept.md) [34]

## Function overloading

 * Use overloading when functions perform conceptually the same task on different types [19]
 * When overloading on integers, provide functions to eliminate common ambiguities [20]

## See also

 * [Exercise #2: correct function declarations](CppExerciseCorrectFunctionDeclarations.md) is an exercise in correct [function design](CppFunctionDesign.md).


## [References](CppReferences.md)

 * [1] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 20: 'Avoid long functions. Avoid deep nesting'
 * [2] Joint Strike Fighter Air Vehicle C++ Coding Standards for the System Development and Demonstration Program. Document Number 2RDU00001 Rev C. December 2005. AV Rule 1: 'Any one function (or method) will contain no more than 200 logical source lines of code.'
 * [3] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[1] "Package meaningful operations as carefully named functions'
 * [4] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[2] A function should perform a single logical operation'
 * [5] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[3] Keep functions short'
 * [6] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[4] Don't return pointers or references to local variables'
 * [7] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[5] If a function may have to be evaluated at compile time, declare it constexpr'
 * [8] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[6] If a function cannot return, mark it [[noreturn]]'
 * [9] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[7] Use pass-by-value for small objects'
 * [10] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[8] Use pass-by-const-reference to pass large values that you don't need to modify'
 * [11] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[9] Return a result as a return value rather than modifying an object through an argument'
 * [12] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[10] Use rvalue references to implement move and forwarding'
 * [13] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[11] Pass a pointer if "no object" is a valid alternative (and represent "no object" by nullptr)'
 * [14] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[12] Use pass-by-non-const-reference only if you have to'
 * [15] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[14] Assume that a char\* or a const char\* argument points to a C-style string'
 * [16] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[15] Avoid passing arrays as pointers'
 * [17] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[16] Pass a homogeneous list of unknown length as an initializer_list (or as some other container)'
 * [18] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[17] Avoid unspecified numbers of arguments (...)'
 * [19] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[18] Use overloading when functions perform conceptually the same task on different types'
 * [20] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[19] When overloading on integers, provide functions to eliminate common ambiguities'
 * [21] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[20] Specify preconditions and postconditions for your functions'
 * [22] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[21] Prefer function objects (including lambdas) and virtual functions to pointers to functions'
 * [23] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '[22] Avoid macros'
 * [24] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Item 16: 'Avoid macro's'.
 * [25] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter 68: 'Assert liberally to document internal assumptions and invariants'
 * [26] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). 1997. ISBN: 0-201-88954-4. Advice 24.5.18: 'Explicitly express preconditions, postconditions, and other assertions as assertions'
 * [27] Steve McConnell. Code Complete (2nd edition). 2004. ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines for using asserts': 'Use assertions to document and verify preconditions and postconditions'
 * [28] Steve McConnell. Code Complete (2nd edition). 2004. ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines for using asserts': 'Use assertions for conditions that should never occur'.
 * [29] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7. Advice. page 387: '[8] 'Don't try to catch every exception in every function'
 * [30] [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. Item 20: Prefer pass-by-reference-to-const to pass-by-value.
 * [31] [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. Item 21: Don't try to return a reference when you must return an object.
 * [32] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7. Advice. page 386: '[3] Use exceptions for error handling'
 * [33] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7. Advice. page 387: '[33] Assume that every exception that can be thrown by a function will be thrown'
 * [34] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7. Advice, page 387: '[23] If your function may not throw, declare it noexcept'
 * [35] [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition, volume 1. 2000. ISBN: 0-13-979809-9. Chapter B: Programming Guidelines. Item 15: 'Watch for long member function definitions. A function that is long and complicated is difficult and expensive to maintain, and is probably trying to do too much all by itself. If you see such a function, it indicates that, at the least, it should be broken up into multiple functions. It may also suggest the creation of a new class.'
 * [36] [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition, volume 1. 2000. ISBN: 0-13-979809-9. Chapter B: Programming Guidelines. Item 16: 'Watch for long argument lists. Function calls then become difficult to write, read and maintain. Instead, try to move the member function to a class where it is (more) appropriate, and/or pass objects in as arguments.'
 * [37] Working Draft, Standard for Programming Language C++. 2014-08-22. N3936. Paragraph C.1.7. First change. 'In C++, a function declared with an empty parameter list takes no arguments. In C, an empty parameter list means that the number and type of the function arguments are unknown.'
 * [38] [C++ Core Guidelines: I.5: State preconditions (if any)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i5-state-preconditions-if-any)
 * [39] [C++ Core Guidelines: I.6: Prefer Expects() for expressing preconditions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i6-prefer-expects-for-expressing-preconditions)
 * [40] [C++ Core Guidelines: I.7: State postconditions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i7-state-postconditions)
 * [41] [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. Item 18: Make interfaces easy to use correctly and hard to use incorrectly.
 * [42] [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Chapter 2.6: Document the interfaces so that they are usable by others. Have at least one other developer review each interface
 * [43] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8. Advice. page 199: '[13] Use const pointers and const references to express immutability in interfaces'
 * [44] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4. Advice. page 479: '[2] Seperate the interface of a class from its implementation'
 * [45] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7. Advice. page 611: '[11] Prefer public members for interfaces'
 * [46] [C++ Core Guidelines: I.1: Make interfaces explicit](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i1-make-interfaces-explicit)
 * [47] [C++ Core Guidelines: I.4: Make interfaces precisely and strongly typed](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i4-make-interfaces-precisely-and-strongly-typed)
 * [48] [C++ Core Guidelines: I.8: Prefer Ensures() for expressing postconditions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i8-prefer-ensures-for-expressing-postconditions)

 