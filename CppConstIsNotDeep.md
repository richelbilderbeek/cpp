[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [const is not deep](CppConstIsNotDeep.htm)
===========================================================

 

The meaning of '[const is not deep](CppConstIsNotDeep.htm)' can be
viewed in the example below:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/shared_ptr.hpp>  struct Widget {   Widget(const int x) : mX(x) {}   int mX; };  struct WidgetManager {   WidgetManager()   {     mV.push_back(boost::shared_ptr<Widget>(new Widget(69)));   }     //A getter?   const std::vector<boost::shared_ptr<Widget> > GetWidgets() const { return mV; }   private:   std::vector <boost::shared_ptr<Widget> > mV; };  int main() {   const WidgetManager m; //Cannot modify WidgetManager   m.GetWidgets()[0]->mX = 0; //CAN modify a Widget of a const WidgetManager! } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The desired and proper getter of WidgetManager should be the following,
in which the Widgets themselves are also [const](CppConst.htm):

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` struct WidgetManager {   const std::vector<boost::shared_ptr<const Widget> >& GetWidgets() const { return mV; }   //... }; `
  --------------------------------------------------------------------------------------------------------------------------------

 

The [compiler](CppCompiler.htm), however, states that is cannot add
const to the Widget:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] Unit1.cpp(51): E2034 Cannot convert 'const _STL::vector<boost::shared_ptr<Widget>,_STL::allocator<boost::shared_ptr<Widget> > >' to '_STL::vector<boost::shared_ptr<const Widget>,_STL::allocator<boost::shared_ptr<const Widget> > >'`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The solution is to write a function to add const yourself:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <class T> const std::vector <boost::shared_ptr<const T> > AddConst(   const std::vector <boost::shared_ptr<T> > v) {   return std::vector <boost::shared_ptr<const T> >(v.begin(),v.end()); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The function needs to be called in the getter [member
function](CppMemberFunction.htm) as shown below. Note that the getter
cannot return a reference to the original Widgets anymore.

 

  -----------------------------------------------------------------------------------------------------------------------------------------
  ` struct WidgetManager {   const std::vector <boost::shared_ptr<const Widget> > GetWidgets() const { return AddConst(mV); }   //... };`
  -----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
