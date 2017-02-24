[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Wt FAQ: how to set a font's size?](CppWtSetFontSize.htm)
==========================================================================

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct WtDialog : public Wt::WContainerWidget {   WtDialog()   {     Wt::WText * const title = new Wt::WText("TicTacToe");     Wt::WCssDecorationStyle s;     Wt::WFont f;     f.setSize(Wt::WFont::XXLarge);     s.setFont(f);     title->setDecorationStyle(s);     this->addWidget(title);   } };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
