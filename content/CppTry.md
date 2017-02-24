[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [try](CppTry.htm)
==================================

 

[try](CppTry.htm) is a [keyword](CppKeyword.htm) to mark a
[try](CppTry.htm)-block, in which an [exception](CppException.htm) might
be [thrown](CppThrow.htm). The [exception](CppException.htm) can be
[caught](CppCatch.htm) by the subsequent [catch](CppCatch.htm)-block.

 

The code below shows the [function](CppFunction.htm)
[CanLexicalCast](CppCanLexicalCast.htm), which [returns](CppReturn.htm)
[true](CppTrue.htm) if a certain [std::string](CppString.htm) can be
[converted](CppConvert.htm) to another [data type](CppDataType.htm) (an
[int](CppInt.htm), for example). The risky operation, the
[conversion](CppConvert.htm), is put in the [try](CppTry.htm)-block.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <boost/lexical_cast.hpp>   //From http://www.richelbilderbeek.nl/CppCanLexicalCast.htm template <class TargetType> bool CanLexicalCast(const std::string& from) {   try   {     boost::lexical_cast<TargetType>(from);   }   catch (boost::bad_lexical_cast)   {     return false;   }   catch (...)   {     assert(!"Something unexpected happened");     throw;   }   return true; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Minimize the use of [try](CppTry.htm)-blocks \[1\].

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[16\] 'Minimize the use of try-blocks'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
