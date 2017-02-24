[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [Thinking Wt 1: general](CppThinkingWt1.htm)
==============================================================================

 

This [article](CppArticle.htm) shows one way to think about program
architecture when using the [Wt](CppWt.htm) [library](CppLibrary.htm).

 

 

 

 

 

Downloads
---------

 

-   [View a screenshot of the application developed in this
    article (png)](CppThinkingWt1.png)
-   [Download the Qt Creator source code of
    'CppThinkingWt1' (zip)](CppThinkingWt1.zip)

 

 

 

 

 

Overview
--------

 

In the first two paragraph I will explain the rationale behind the
architecture proposed. The following paragraphs describes the steps in
implementing this architecture in a top-down way, followed by a
conclusion.

 

 

 

 

 

Why these guidelines?
---------------------

 

[Wt](CppWt.htm) is 'a widget-centric API' \[1\] for, primarily, dynamic
web applications. I see many resemblances in its architecture with the
[Qt](CppQt.htm) [library](CppLibrary.htm), suitable for, among others,
desktop applications. Due to their different running environments,
[Wt](CppWt.htm) (web) and [Qt](CppQt.htm) (desktop) are mutually
exclusive. Because I enjoy porting applications to as much platforms as
possible, I have developed some applications that use both (but not
simultaneously) a [Wt](CppWt.htm) and a [Qt](CppQt.htm) front-end. To be
able to do this easily, I follow the guidelines presented in this
[article](CppArticle.htm). Additionally, I like to reuse my own widgets
and dialogs in multiple applications, which is only possible with a
proper architecture.

 

Note that I follow the same guidelines for [Qt](CppQt.htm) front-ends.

 

 

 

 

 

Architecture
------------

 

The architecture, from biggest to smallest, is: [main](CppMain.htm),
[Wt::WApplication](CppWApplication.htm), dialog, widget:

 

-   Every C++ program has a single [main](CppMain.htm)
    [function](CppFunction.htm). The purpose of this [main](CppMain.htm)
    [function](CppFunction.htm) is to create a
    [Wt::WApplication](CppWApplication.htm). Optionally,
    [main](CppMain.htm) can parse the command-line arguments
-   The purpose of the [Wt::WApplication](CppWApplication.htm) is to
    manage dialogs. Optionally, [Wt::WApplication](CppWApplication.htm)
    can respond to the [Wt::WEnvironment](CppWEnvironment.htm)
    parameters given at [construction](CppConstructor.htm)
-   A dialog is a collection of at least one widget. The purpose of a
    dialog is to respond to its widgets or creating other dialogs. A
    menu is an example of a dialog that creates other dialogs. A
    TicTacToe dialog would display a TicTacToe widget, but additionally
    shows the score, responding to a player winning and allowing the
    user to close it
-   A widget is a single visual element. The purpose of a widget is to
    repond to interaction and emitting signals when needed. For example,
    a TicTacToe widget responds to the clicking of the user and emits a
    signal when the game is finished. The signal might (or might not) be
    used by the dialog it is in

 

 

 

 

 

Implementing [main](CppMain.htm)
--------------------------------

 

In this example, [main](CppMain.htm) creates a single
[Wt::WApplication](CppWApplication.htm), and does not respond to
command-line arguments.

 

The most basic [main](CppMain.htm) [function](CppFunction.htm) would
only call WRun with a createApplication [function](CppFunction.htm) that
only [returns](CppReturn.htm) a [newly](CppNew.htm) created
[Wt::WApplication](CppWApplication.htm):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <Wt/WApplication> #include <Wt/WEnvironment>  Wt::WApplication *createApplication(   const Wt::WEnvironment& env) {   return new WtApplication(env); }  int main(int argc, char **argv) {   return WRun(argc, argv, &createApplication); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This way of creating a [Wt::WApplication](CppWApplication.htm) is
identical to \[2\]\[3\].

 

 

 

 

 

 

Implementing the [Wt::WApplication](CppWApplication.htm)
--------------------------------------------------------

 

The purpose of the [Wt::WApplication](CppWApplication.htm) is to create
a dialog. In this example, WtApplication manages a single to pointer to
a single dialog, called WtDialog. WtApplication does not respond to the
[Wt::WEnvironment](CppWEnvironment.htm) parameters given at
[construction](CppConstructor.htm), but sets the WtDialog as its widget.
Additionaly, it sets the browser title to 'My title'.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <Wt/WApplication> #include <Wt/WEnvironment>  struct WtApplication : public Wt::WApplication {   WtApplication(const Wt::WEnvironment& env)     : Wt::WApplication(env),     m_dialog(new WtDialog)   {     this->setTitle("My title");     root()->addWidget(m_dialog);   }   private:   WtDialog * const m_dialog; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Because the [pointer](CppPointer.htm) m\_dialog is set to be managed by
[Wt](CppWt.htm) in the 'addWidget' method, it should not be
[deleted](CppDelete.htm) (doing so results in a double
[deletion](CppDelete.htm) warning.

 

 

 

 

 

Implementing the dialog
-----------------------

 

Because a dialog is a collection of at least one widget, WtDialog is a
[derived class](CppDerivedClass.htm) from
[Wt::WContainerWidget](CppWContainerWidget.htm). WtDialog manages two
widgets, but does not respond to their signals.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <Wt/WContainerWidget>  struct WtDialog : public Wt::WContainerWidget {   WtDialog()   : m_widget1(new WtWidget),     m_widget2(new WtWidget)   {     this->addWidget(m_widget1);     this->addWidget(m_widget2);   }   private:   WtWidget * const m_widget1;   WtWidget * const m_widget2; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Because the [pointers](CppPointer.htm) m\_widget1 and m\_wiget2 are set
to be managed by [Wt](CppWt.htm) in the 'addWidget' method, these should
not be [deleted](CppDelete.htm) (doing so results in a double
[deletion](CppDelete.htm) warning.

 

 

 

 

 

Implementing the widget
-----------------------

 

A widget is a single visual element. In this example, WtWidget is a
button (and thus a [derived class](CppDerivedClass.htm) of
[Wt::WPushButton](CppWPushButton.htm)), that displays how often it is
clicked.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <sstream> #include <stdexcept> #include <string> #include <Wt/WString> #include <Wt/WPushButton>  ///IntToWString converts integer to Wt::WString ///From http://www.richelbilderbeek.nl/CppIntToWString.htm const Wt::WString IntToWString(const int i) {   std::ostringstream s;   if (!(s << i)) throw std::logic_error("IntToWString failed");   return Wt::WString(s.str()); }  struct WtWidget : public Wt::WPushButton {   WtWidget()     : m_clicks(0)   {     setText(IntToWString(m_clicks));     this->clicked().connect(this,&WtWidget::OnClick);   }   private:   void OnClick()   {     ++m_clicks;     setText(IntToWString(m_clicks));   }   int m_clicks; };`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

WtWidget responds to its own 'clicked'-signal only.

 

 

 

 

 

Running the Wt application
--------------------------

 

Add the following line to your [Qt project file](CppQtProjectFile.htm)
(to prevent [link errors](CppLinkError.htm) like [undefined reference to
'Wt::WRun(int, char\*\*, Wt::WApplication\* (\*)(Wt::WEnvironment
const&))'](CppLinkErrorUndefinedReferenceToWtWrun.htm)):

 

  --------------------------
  ` LIBS += -lwt -lwthttp`
  --------------------------

 

Additionally, add the following line to your [Qt project
file](CppQtProjectFile.htm), as [Wt](CppWt.htm) uses the
[Boost.Signals](CppBoostSignals.htm) [library](CppLibrary.htm), that
needs to be [linked](CppLink.htm) to as well:

 

  ----------------------------
  ` LIBS += -lboost_signals`
  ----------------------------

 

Add the following arguments to the [Run
Settings](CppQtCreatorRunSettings.png) (to prevent the [misc
error](CppMiscError.htm) [stat: No such file or directory. Document root
("") not
valid.](CppMiscErrorStatNoSuchFileOrDirectoryDocumentRootNotValid.htm)

 

  --------------------------------------------------------
  ` --docroot . --http-address 0.0.0.0 --http-port 8080`
  --------------------------------------------------------

 

Start the program and your favorite webbrowser. Take the webbrowser to
the following address:

 

  ---------------------------
  ` http://127.0.0.1:8080/`
  ---------------------------

 

 

 

 

 

Conclusion
----------

 

In this [article](CppArticle.htm) I have shown one of many
[Wt](CppWt.htm) program architectures you can use, for a very basic
application. In my humble opinion, this architecture makes sense, but I
am open to discussion on this subject.

 

My next article, [Thinking Wt 2: TicTacToe widget](CppThinkingWt2.htm)
describes how I implement the [Wt](CppWt.htm) widget of a Tic-tac-toe
game.

 

-   [View a screenshot of the application developed in this
    article (png)](CppThinkingWt1.png)
-   [Download the Qt Creator source code of
    'CppThinkingWt1' (zip)](CppThinkingWt1.zip)

 

 

 

 

 

External links
--------------

 

-   [Wt homepage](http://www.webtoolkit.eu/wt)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Wt homepage](http://www.webtoolkit.eu/wt)
2.  [Victor Volkman. Wt: C++ Web Toolkit Library Lets You Write
    Scripting-Independent Web Apps.
    www.codeguru.com](http://www.codeguru.com/cpp/i-n/internet/browsercontrol/article.php/c15275__2/Wt-C-Web-Toolkit-Library-Lets-You-Write-Scripting-Independent-Web-Apps.htm)
3.  [Wt homepage, source code of the 'Hello world'
    example](http://www.webtoolkit.eu/wt#/src/hello)

 

 

 

 

 

Acknowledgements
----------------

 

Thanks Tor Arne Fallingen for notifying me that I omitted linking to
Boost.Signals.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
