



 

 

 

 

 

([C++](Cpp.htm)) [operator==](CppOperatorEqual.htm)
===================================================

 

[operator==](CppOperatorEqual.htm) is the [operator](CppOperator.htm) to
determine if two [instances](CppInstance.htm) are the same.

 

The following code uses [operator==](CppOperatorEqual.htm) to determine
that one plus two is equal to three:

 

  ----------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   if (1 + 2 == 3) std::cout << "One plus two is equal to three" << std::endl; }`
  ----------------------------------------------------------------------------------------------------------------------

 

[operator==](CppOperatorEqual.htm) is encapsulated by the
[functor](CppFunctor.htm) [std::equal\_to](CppEqual_to.htm).

 

 

 

 

 

Overloading [operator==](CppOperatorEqual.htm) for a user-defined type
----------------------------------------------------------------------

 

Prefer making [operator==](CppOperatorEqual.htm) a free function
\[1,2\].

 

-   [Download the Qt Creator project
    'CppOperatorEqual' (zip)](CppOperatorEqual.zip)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <cassert> #include <vector>  //Can even define both! #define DEFINE_OPERATOR_EQUAL_AS_MEMBER_FUNCTION #define DEFINE_OPERATOR_EQUAL_AS_FREE_FUNCTION  struct Test {   Test(const int x, const int y) : m_x(x), m_y(y) {}   int GetX() const { return m_x; }   int GetY() const { return m_y; }    #ifdef DEFINE_OPERATOR_EQUAL_AS_MEMBER_FUNCTION   bool operator==(const Test rhs)   {     return this->GetX() == rhs.GetX() && this->GetY() == rhs.GetY();   }   #endif    private:   int m_x;   int m_y; };   #ifdef DEFINE_OPERATOR_EQUAL_AS_FREE_FUNCTION bool operator==(const Test& lhs, const Test rhs) {   return lhs.GetX() == rhs.GetX() && lhs.GetY() == rhs.GetY(); } #endif  int main() {   std::vector<Test> v;   v.push_back(Test(0,0));   v.push_back(Test(1,1));   v.push_back(Test(2,2));   v.push_back(Test(0,0));   assert(v[0] == v[3]); //Both ways work   assert(std::count(v.begin(),v.end(),Test(0,0)) == 2); //Both ways work }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Paragraph 9.1.2, page 596: 'The
    conclusion is that operator== should always be a free function,
    regardless of what other functions are involved'
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
