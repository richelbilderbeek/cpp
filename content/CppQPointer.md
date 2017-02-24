[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QPointer](CppQPointer.htm)
=============================================================

 

[QPointer](CppQPointer.htm) is a [Qt](CppQt.htm) [class](CppClass.htm)
to hold a [pointer](CppPointer.htm). Such a [class](CppClass.htm) is
called a [smart pointer](CppSmartPointer.htm), yet -in my humble
opinion- [QPointer](CppQPointer.htm) behaves unexpectedly.

 

Prefer to use [smart pointers](CppSmartPointer.htm) over normal pointers
\[1\].

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <QPointer>  //QPointer can only hold classes derived from QObject struct Test : public QObject {   Test(const int x) : m_x(x) { std::cout << "~Test\n"; }   ~Test()   {     std::clog << "~Test\n";   }   const int m_x; };  int main() {   {     QPointer<Test> p;     assert(!p);     assert(!p.data());     assert(p.isNull());   }   {     QPointer<Test> p(new Test(42));     assert(p);     assert(p.data());     assert(!p.isNull());     std::clog << p->m_x << '\n';     std::clog << "~Test will be called after this\n";   }   std::clog << "~Test should have been called before this\n"; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------------------------------------------------------------------
  ` ~Test 42 ~Test will be called after this ~Test should have been called before this`
  ---------------------------------------------------------------------------------------

 

Expected screen output:

 

  ---------------------------------------------------------------------------------------
  ` 42 ~Test will be called after this ~Test ~Test should have been called before this`
  ---------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
