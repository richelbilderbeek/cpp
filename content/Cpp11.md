# ([C++](Cpp.md)) ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[C++11](Cpp11.md) is the official name of the C++ [standard](CppStandard.md) accepted in 2011. Before, this standard was
called 'C++0x'.

 * ![Qt Creator](PicQtCreator.png) [Using C++11 under Qt Creator](CppQtCpp11.md)

## [C++11](Cpp11.md) new features

-   [data types](CppDataType.md):
    -   [char16_t](CppChar16_t.md): a new 16-bit character [data
        type](CppDataType.md)
    -   [char32_t](CppChar32_t.md): a new 32-bit character [data
        type](CppDataType.md)
    -   [enum class](CppEnumClass.md): a new conversion-safe
        [enumeration](CppEnum.md)
    -   [extern template](CppExternTemplate.md): [forward
        declare](CppForwardDeclaration.md) [template
        functions](CppTemplateFunction.md)
    -   [long long int](CppLongLongInt.md): guaranteed to be 64-bit
-   [keywords](CppKeyword.md):
    -   [auto](CppAuto.md): let the [compiler](CppCompiler.md) infer
        the [data type](CppDataType.md)
    -   [constexpr](CppConstexpr.md): mark a generalized constant
        expressions
    -   [final](CppFinal.md): to indicate that a
        [virtual](CppVirtual.md) [member
        function](CppMemberFunction.md) cannot be overriden
    -   [for](CppFor.md): support of a range-based [for](CppFor.md)
        loop
    -   [nullptr](CppNullptr.md): set a [pointer](CppPointer.md) to
        uninitialized
    -   [static_assert](CppStatic_assert.md): same function as
        [BOOST_STATIC_ASSERT](CppBOOST_STATIC_ASSERT.md)
-   [classes](CppClass.md):
    -   [std::array](CppArray.md)
    -   [std::regex](CppRegex.md)
    -   [std::shared_ptr](CppShared_ptr.md)
    -   [std::thread](CppThread.md)
    -   [std::unique_ptr](CppStdUnique_ptr.md)
-   [algorithms](CppAlgorithm.md):
    -   [std::all_of](CppStdAll_of.md)
    -   [std::any_of](CppStdAny_of.md)
    -   [std::copy_if](CppCopy_if.md)
    -   [std::copy_n](CppStdCopy_n.md)
    -   [std::find_if_not](CppStdFind_if_not.md)
    -   [std::iota](CppIota.md)
    -   [std::is_heap](CppStdIs_heap.md)
    -   [std::is_heap_until](CppStdIs_heap_until.md)
    -   [std::is_sorted](CppStdIs_sorted.md)
    -   [std::is_sorted_until](CppStdIs_sorted_until.md)
    -   [std::minmax_element](CppStdMinmax_element.md)
    -   [std::minmax](CppStdMinmax.md)
    -   [std::move_backward](CppStdMove_backward.md)
    -   [std::move](CppStdMove.md)
    -   [std::none_of](CppStdNone_of.md)
    -   [std::partial_sort_copy](CppStdPartial_sort_copy.md)
    -   [std::partition_copy](CppStdPartition_copy.md)
    -   [std::partition_point](CppStdPartition_point.md)
-   '&gt;&gt;' can be used as a [nested template
    closer](CppNestedTemplateCloser.md)
-   [delegation](CppDelegation.md): let
    [constructors](CppConstructor.md) call each other
-   [enum class forward
    declarations](CppEnumClassForwardDeclaration.md)
-   [initializer lists](CppInitializerList.md)
-   [lambda expressions](CppLambdaExpression.md)
-   std::move
-   much more


## [Advice](CppAdvice.md)

 * Write in ISO Standard C++ [1]

## External links

 * [Wikipedia page about C++11](http://en.wikipedia.org/wiki/C%2B%2B0x)
 * [C++ source article about C++11 by Bjarne Stroustrup](http://www.artima.com/cppsource/cpp0x.html)
 * [isocpp.org super-FAQ page about C++11](https://isocpp.org/wiki/faq/cpp11)
 * [Interview with Scott Meyers](http://media.libsyn.com/media/seradio/seradio-episode159-cPlusPlus0x.mp3) (on [se-radio](http://www.se-radio.net), episode 159)
 * [GCC page about C++11 support](http://gcc.gnu.org/projects/cxx0x.html)
 * [Aaron Ballman's blog about C++11](http://blog.aaronballman.com/tag/c0x)

## [References](CppReferences.md)

 * [1] [C++ Core Guidelines: P.2: Write in ISO Standard C++](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p2-write-in-iso-standard-c)
