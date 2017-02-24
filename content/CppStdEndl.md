

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::endl](CppEndl.htm)
=========================================

 

[std::endl](CppEndl.htm) is an output [stream](CppStream.htm) modifier
to go to the next line and flush the [stream](CppStream.htm)'s buffer.

 

  ---------------------------------------------------------------------------------------------------------------------
  ` #include <iostream<  int main() {   //Go to next line and flush the std::cout buffer   std::cout << std::endl; }`
  ---------------------------------------------------------------------------------------------------------------------

 

The code above is equivalent to the code below \[1\]:

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream<  int main() {   //Go to next line   std::cout << '\n';   //Flush the std::cout buffer   std::cout.flush(); }`
  -------------------------------------------------------------------------------------------------------------------------------------

 

One does not need to flush the [std::cout](CppCout.htm) buffer after
every output \[1\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Angelika Langer](CppAngelikaLanger.htm), [Klaus
    Kreft](CppKlausKreft.htm). Standard C++ IOStreams and Locales.
    1999. ISBN:0-321-58558-5. Chapter 1.2.4, section 'Manipulators',
    page 23

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
