[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Comparing shared\_ptrs](CppCompareShared_ptrs.htm)
====================================================================

 

This [article](CppArticle.htm) describes an architectural problem and
then compares two solutions, using the [C++98](Cpp98.htm) and
[C++11](Cpp11.htm) [standards](CppStandard.htm) respectively.

 

-   [Download the Qt Creator project
    'CppCompareShared\_ptrs' (zip)](CppCompareShared_ptrs.zip)

 

 

 

 

 

The problem
-----------

 

Suppose you have a [class](CppClass.htm) called 'Test' you want to have
managed. So, a [class](CppClass.htm) called 'Source' is written for
simply this purpose. It is kind of a source, because it produces
read-only versions of the Test managed by it. These read-only Tests are
used by Observer.

 

An example where one would want to do this, is when a program loads its
parameters from file. These parameters are not to be altered, but might
be used throughout the program.

 

But the problem is as follows: what if the original source changes the
thing its manages? How can the observer know this?

 

The code below compiles, runs but does not meet our needs:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/shared_ptr.hpp>  struct Test {   Test(const int x = 0) : m_x(x) {}   int m_x; };  struct Source {   Source() : m_test(new Test(1)) {}    ///Note the added constness   boost::shared_ptr<const Test> Get() const { return m_test; }    void SetTest(const boost::shared_ptr<Test>& test) { m_test = test; }    private:   boost::shared_ptr<Test> m_test; };  struct Observer {   boost::shared_ptr<const Test> Get() const { return m_test; }    void SetTest(const boost::shared_ptr<const Test>& test) { m_test = test; }    private:   boost::shared_ptr<const Test> m_test; };   int main() {   Source source;   Observer observer;   observer.SetTest(source.Get());   assert(source.Get()->m_x == 1);   assert(observer.Get()->m_x == 1);    ///Put another Test in the Source, makes Observer observing an older Test   source.SetTest(boost::shared_ptr<Test>(new Test(2)));   assert(source.Get()->m_x == 2);   assert(observer.Get()->m_x == 2); //Observer still has old version }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The final line of code shows the problem: the observer still has an old
copy of Test (with a value of one), instead of the new one (with a value
of two).

 

 

 

 

 

![C++98](PicCpp98.png) Solution \#1: use of the [C++98](Cpp98.htm) [boost::shared\_ptr](CppShared_ptr.htm)
----------------------------------------------------------------------------------------------------------

 

When instead of the observer having a
[boost::shared\_ptr](CppShared_ptr.htm)&lt;**[const](CppConst.htm)**
Test&gt;, this is changed to
[boost::weak\_ptr](CppWeak_ptr.htm)&lt;**[const](CppConst.htm)**
Test&gt;, the program will give a fine run-time error:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/shared_ptr.hpp> #include <boost/weak_ptr.hpp>  struct Test {   Test(const int x = 0) : m_x(x) {}   int m_x; };   struct Source {   Source() : m_test(new Test(1)) {}    ///Note the added constness   boost::shared_ptr<const Test> Get() const { return m_test; }    void SetTest(const boost::shared_ptr<Test>& test) { m_test = test; }    private:   boost::shared_ptr<Test> m_test; };  struct Observer {   boost::weak_ptr<const Test> Get() const { return m_test; }    ///Change: use of boost::weak_ptr   void SetTest(const boost::weak_ptr<const Test>& test) { m_test = test; }    private:   ///Change: use of boost::weak_ptr   boost::weak_ptr<const Test> m_test; };   int main() {   Source source;   Observer observer;   observer.SetTest(source.Get());   assert(source.Get()->m_x == 1);   assert(observer.Get().lock()->m_x == 1);    ///Put another Test in the Source, makes Observer observing an older Test   source.SetTest(boost::shared_ptr<Test>(new Test(2)));   assert(source.Get()->m_x == 2);   assert(observer.Get().lock()->m_x == 2); //Good: run-time error: 'Assertion 'px != 0' failed'. }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Sure, a run-time error has its drawbacks, but with a debugger its source
can be located easily.

 

 

 

 

 

![C++11](PicCpp11.png) Solution \#2: use of the [C++11](Cpp11.htm) [std::shared\_ptr](CppShared_ptr.htm)
--------------------------------------------------------------------------------------------------------

 

When replacing [boost::shared\_ptr](CppShared_ptr.htm) and
[boost::weak\_ptr](CppWeak_ptr.htm) to
[std::shared\_ptr](CppShared_ptr.htm) and
[std::weak\_ptr](CppWeak_ptr.htm) respectively also gives a fine
run-time error:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///The solution: std::weak_ptr #include <memory> #include <cassert>  struct Test {   Test(const int x = 0) : m_x(x) {}   int m_x; };   struct Source {   Source() : m_test(new Test(1)) {}    ///Note the added constness   std::shared_ptr<const Test> Get() const { return m_test; }    void SetTest(const std::shared_ptr<Test>& test) { m_test = test; }    private:   std::shared_ptr<Test> m_test; };  struct Observer {   std::weak_ptr<const Test> Get() const { return m_test; }    ///Change: use of boost::weak_ptr   void SetTest(const std::weak_ptr<const Test>& test) { m_test = test; }    private:   ///Change: use of boost::weak_ptr   std::weak_ptr<const Test> m_test; };  int main() {   Source source;   Observer observer;   observer.SetTest(source.Get());   assert(source.Get()->m_x == 1);   assert(observer.Get().lock()->m_x == 1);    ///Put another Test in the Source, makes Observer observing an older Test   source.SetTest(std::shared_ptr<Test>(new Test(2)));   assert(source.Get()->m_x == 2);   assert(observer.Get().lock()->m_x == 2); //Mediocre: segmentation fault, but no reason is given }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The problem is, that in this case, a segmentation fault is given,
instead of a failed assertion. Also, the debugger could not get me to
pinpoint to the source of the error.

 

 

 

 

 

Conclusion
----------

 

-   weak\_ptr's are better observers than std::shared\_ptr's
-   you might want to use boost::shared\_ptr instead of std::shared\_ptr
    until debug support is better

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
