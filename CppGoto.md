[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [goto](CppGoto.htm)
====================================

 

[goto](CppGoto.htm) is a [keyword](CppKeyword.htm) to jump to a
[label](CppLabel.htm). Prefer not to use [goto](CppGoto.htm) \[1,2\],
except when breaking out of multiple [loops](CppLoop.htm) \[1\].

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Beginning\n";   goto label1;   std::cout << "Unreachable\n";   label1:   std::cout << "Ending\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 189 (MISRA Rule 56): 'The goto
    statement shall not be used.' and 'Exception: A goto may be used to
    break out of multiple nested loops provided the alternative would
    obscure or otherwise significantly complicate the control logic.'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8.
    Advice. page 240: '\[7\] Avoid goto'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
