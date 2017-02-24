



 

 

 

 

 

([C++](Cpp.htm)) [catch](CppCatch.htm)
======================================

 

[catch](CppCatch.htm) is a [keyword](CppKeyword.htm) to mark a
[catch](CppCatch.htm)-block. A [catch](CppCatch.htm)-block is always
preceded by a [try](CppTry.htm)-block in which an
[exception](CppException.htm) might be [thrown](CppThrow.htm). The
[exception](CppException.htm) can be [caught](CppCatch.htm) by the
subsequent [catch](CppCatch.htm)-block.

 

The code below shows the [function](CppFunction.htm)
[CanLexicalCast](CppCanLexicalCast.htm), which [returns](CppReturn.htm)
[true](CppTrue.htm) if a certain [std::string](CppString.htm) can be
[converted](CppConvert.htm) to another [data type](CppDataType.htm) (an
[int](CppInt.htm), for example). The risky operation, the
[conversion](CppConvert.htm), is put in the [try](CppTry.htm)-block.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <boost/lexical_cast.hpp>   //From http://www.richelbilderbeek.nl/CppCanLexicalCast.htm template <class TargetType> bool CanLexicalCast(const std::string& from) {   try   {     boost::lexical_cast<TargetType>(from);   }   catch (boost::bad_lexical_cast)   {     return false;   }   catch (...)   {     assert(!"Something unexpected happened");     throw;   }   return true; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Don't try to [catch](CppCatch.htm) every
    [exception](CppException.htm) in every [function](CppFunction.htm)
    \[1\]
-   Always [catch](CppCatch.htm) [exception](CppStdException.htm)&
    and ... \[3\]
-   Have [main](CppMain.htm) [catch](CppCatch.htm) and report every
    exception \[2\]

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[8\] 'Don't try to catch every exception in
    every function'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[27\] 'Have main() catch and report every
    exception'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[10\] Always catch exception& (for
    standard-library and language support exceptions) and ... (for
    unexpected exceptions)'

 

 

 

 

 





 



