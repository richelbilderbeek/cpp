
 

 

 

 

 

([C++](Cpp.md)) [catch](CppCatch.md)
======================================

 

[catch](CppCatch.md) is a [keyword](CppKeyword.md) to mark a
[catch](CppCatch.md)-block. A [catch](CppCatch.md)-block is always
preceded by a [try](CppTry.md)-block in which an
[exception](CppException.md) might be [thrown](CppThrow.md). The
[exception](CppException.md) can be [caught](CppCatch.md) by the
subsequent [catch](CppCatch.md)-block.

 

The code below shows the [function](CppFunction.md)
[CanLexicalCast](CppCanLexicalCast.md), which [returns](CppReturn.md)
[true](CppTrue.md) if a certain [std::string](CppString.md) can be
[converted](CppConvert.md) to another [data type](CppDataType.md) (an
[int](CppInt.md), for example). The risky operation, the
[conversion](CppConvert.md), is put in the [try](CppTry.md)-block.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <boost/lexical_cast.hpp>   //From http://www.richelbilderbeek.nl/CppCanLexicalCast.htm template <class TargetType> bool CanLexicalCast(const std::string& from) {   try   {     boost::lexical_cast<TargetType>(from);   }   catch (boost::bad_lexical_cast)   {     return false;   }   catch (...)   {     assert(!"Something unexpected happened");     throw;   }   return true; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Don't try to [catch](CppCatch.md) every
    [exception](CppException.md) in every [function](CppFunction.md)
    \[1\]
-   Always [catch](CppCatch.md) [exception](CppStdException.md)&
    and ... \[3\]
-   Have [main](CppMain.md) [catch](CppCatch.md) and report every
    exception \[2\]

 

 

 

 

[Reference](CppReferences.md)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[8\] 'Don't try to catch every exception in
    every function'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[27\] 'Have main() catch and report every
    exception'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[10\] Always catch exception& (for
    standard-library and language support exceptions) and ... (for
    unexpected exceptions)'

 

 

 

 

 

 

