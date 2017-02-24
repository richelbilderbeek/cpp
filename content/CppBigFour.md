[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Big Four](CppBigFour.htm)
===========================================

 

The [Big Four](CppBigFour.htm) are the following four special
[class](CppClass.htm) [member functions](CppMemberFunction.htm) \[1\]:

 

1.  [Default constructor](CppDefaultConstructor.htm)
2.  [Copy constructor](CppCopyConstructor.htm)
3.  [Copy assignment operator](CppCopyAssignmentOperator.htm)
4.  [Destructor](CppDestructor.htm)

 

 

 

 

 

Example
-------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  ///Gossip is a class that tells you what is happening to it struct Gossip {   Gossip() { std::cout << "Default constructor\n"; }   Gossip(const Gossip&) { std::cout << "Copy constructor\n"; }   ~Gossip() { std::cout << "Destructor\n"; }   Gossip& operator=(const Gossip&) { std::cout << "Copy assignment operator\n"; }  };  int main() {   {     Gossip g; //Default constructor     const Gossip h(g); //Copy constructor     g = h; //Copy assignment operator     //Destructor of g and h   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ----------------------------------------------------------------------------------------
  ` Default constructor Copy constructor Copy assignment operator Destructor Destructor`
  ----------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Introduction 'Class Design and Inheritance'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
