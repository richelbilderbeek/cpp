[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [Wt signal](WtSignal.htm)
===========================================================

 

The [Wt](CppWt.htm) way of sending a [signal](CppSignal.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <Wt/WSignal>  struct Emitter : public Wt::WObject {  void DoEmit()  {    std::clog << "Emitter: emitting signal\n";    m_signal.emit();  }  Wt::Signal<Wt::NoClass> m_signal; };  struct Receiver : public Wt::WObject {  void OnReceive()  {    std::clog << "Receiver: received signal\n";  } };  int main() {  //Create emitter  Emitter e;  //Create receiver  Receiver r;  //Connect emitter's signal to receiver  e.m_signal.connect(      &r,      &Receiver::OnReceive);  e.DoEmit(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
