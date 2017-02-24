
 

 

 

 

 

([C++](Cpp.md)) [goto](CppGoto.md)
====================================

 

[goto](CppGoto.md) is a [keyword](CppKeyword.md) to jump to a
[label](CppLabel.md). Prefer not to use [goto](CppGoto.md) \[1,2\],
except when breaking out of multiple [loops](CppLoop.md) \[1\].

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Beginning\n";   goto label1;   std::cout << "Unreachable\n";   label1:   std::cout << "Ending\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 189 (MISRA Rule 56): 'The goto
    statement shall not be used.' and 'Exception: A goto may be used to
    break out of multiple nested loops provided the alternative would
    obscure or otherwise significantly complicate the control logic.'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8.
    Advice. page 240: '\[7\] Avoid goto'

 

 

 

 

 

 

