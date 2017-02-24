[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [Thinking Wt 2: creating a TicTacToe widget](CppThinkingWt2.htm)
==================================================================================================

 

This [article](CppArticle.htm) shows the way to create a TicTacToe
widget when using the [Wt](CppWt.htm) [library](CppLibrary.htm).

 

 

 

 

 

Downloads
---------

 

-   [View a screenshot of application developed in step 1 of this
    article (png)](CppThinkingWt2_1.png)
-   [View a screenshot of application developed in step 2 of this
    article (png)](CppThinkingWt2_2.png)
-   [View a screenshot of application developed in step 3 of this
    article (png)](CppThinkingWt2_3.png)
-   [Download the Qt Creator source code of
    'CppThinkingWt2\_1' (zip)](CppThinkingWt2_1.zip)
-   [Download the Qt Creator source code of
    'CppThinkingWt2\_2' (zip)](CppThinkingWt2_2.zip)
-   [Download the Qt Creator source code of
    'CppThinkingWt2\_3' (zip)](CppThinkingWt2_3.zip)

 

 

 

 

 

Overview
--------

 

This [article](CppArticle.htm) follows the same architecture as
[Thinking Wt 1: general](CppThinkingWt1.htm). First the bare-bone
architecture is implemented, so the programmer can test the application
as early as possible. Next follows the dialog and widget implementation,
ending with a conclusion.

 

 

 

 

 

Architecture
------------

 

The architecture, from biggest to smallest, consists of:

 

-   [main](CppMain.htm) creates a single class called WtApplication
-   WtApplication (a [derived class](CppDerivedClass.htm) of
    [Wt::WApplication](CppWApplication.htm)) creates a single dialog,
    called WtTicTacToeDialog
-   WtTicTacToeDialog (a [derived class](CppDerivedClass.htm) of
    [Wt::WContainerWidget](CppWContainerWidget.htm)) consists of
    multiple widgets, among others the WtTicTacToeWidget
-   WtTicTacToeWidget (a [derived class](CppDerivedClass.htm) of
    [Wt::WPaintedWidget](CppWPaintedWidget.htm)) is the widget to
    display the [TicTacToe](CppTicTacToe.htm) board. The logic of the
    [TicTacToe](CppTicTacToe.htm) game is embodied in a
    [TicTacToe](CppTicTacToe.htm) class, which is managed by
    WtTicTacToeWidget

 

 

 

 

 

Step 1: implementing the bare-bone architecture
-----------------------------------------------

 

The purpose of first implementing the bare-bone architecture is to get
the program running, so it can be tested. The same architecture as
[Thinking Wt 1](CppThinkingWt1.htm) is used:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/signals2.hpp> #include <Wt/WApplication> #include <Wt/WContainerWidget> #include <Wt/WEnvironment> #include <Wt/WPaintDevice> #include <Wt/WPaintedWidget> #include <Wt/WPainter> #include <Wt/WPushButton> #include "tictactoe.h" //--------------------------------------------------------------------------- struct WtTicTacToeWidget : public Wt::WPaintedWidget {   WtTicTacToeWidget()   {     this->resize(32,32);   }   protected:   void paintEvent(Wt::WPaintDevice *paintDevice)   {     Wt::WPainter painter(paintDevice);     painter.drawImage(0,0,Wt::WPainter::Image("R.png",32,32));   }    private:   TicTacToe m_tictactoe; }; //--------------------------------------------------------------------------- struct WtTicTacToeDialog : public Wt::WContainerWidget {   WtTicTacToeDialog()   : m_tictactoe(new WtTicTacToeWidget)   {     this->addWidget(m_tictactoe);   }   private:   WtTicTacToeWidget * const m_tictactoe; }; //--------------------------------------------------------------------------- struct WtApplication : public Wt::WApplication {   WtApplication(const Wt::WEnvironment& env)     : Wt::WApplication(env),     m_dialog(new WtTicTacToeDialog)   {     this->setTitle("Thinking Wt 2: creating a TicTacToe widget");     root()->addWidget(m_dialog);   }   private:   WtTicTacToeDialog * const m_dialog; }; //--------------------------------------------------------------------------- Wt::WApplication *createApplication(   const Wt::WEnvironment& env) {   return new WtApplication(env); } //--------------------------------------------------------------------------- int main(int argc, char **argv) {   return WRun(argc, argv, &createApplication); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The most notable in this setup is that WtTicTacToeWidget is a [derived
class](CppDerivedClass.htm) of
[Wt::WPaintedWidget](CppWPaintedWidget.htm). This is because then there
is most control in drawing the TicTacToe board. For now, the widget
shows an image called 'R.png'.

 

 

 

 

 

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

 

 

 

 

 

Step 2: implementing the WtTicTacToeDialog
------------------------------------------

 

In this simple example, the WtTicTacToeDialog shows both a
WtTicTacToeWidget and a restart button, aligned vertically. The restart
button also shows the state of the game (that is: player 1 has won,
player 2 has won, draw, game is still unfinished):

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/signals2.hpp> #include <Wt/WApplication> #include <Wt/WBreak> #include <Wt/WContainerWidget> #include <Wt/WEnvironment> #include <Wt/WEvent> #include <Wt/WPaintDevice> #include <Wt/WPaintedWidget> #include <Wt/WPainter> #include <Wt/WPushButton> #include "tictactoe.h" //--------------------------------------------------------------------------- struct WtTicTacToeWidget : public Wt::WPaintedWidget {   WtTicTacToeWidget()   {     this->resize(32,32);   }   boost::signals2::signal<void ()> m_signal_state_changed;    int GetState() const { return 0; }   void Restart() {}   protected:   void paintEvent(Wt::WPaintDevice *paintDevice)   {     Wt::WPainter painter(paintDevice);     painter.drawImage(0,0,Wt::WPainter::Image("R.png",32,32));   }    private:   TicTacToe m_tictactoe; }; //--------------------------------------------------------------------------- struct WtTicTacToeDialog : public Wt::WContainerWidget {   WtTicTacToeDialog()   : m_button(new Wt::WPushButton),     m_tictactoe(new WtTicTacToeWidget)   {     this->addWidget(m_tictactoe);     this->addWidget(new Wt::WBreak(this));     this->addWidget(m_button);     m_button->setText("Restart");     m_tictactoe->m_signal_state_changed.connect(       boost::bind(         &WtTicTacToeDialog::OnStateChanged,         this));     m_button->clicked().connect(       this,&WtTicTacToeDialog::OnRestart);   }   private:   Wt::WPushButton * const m_button;   WtTicTacToeWidget * const m_tictactoe;   void OnRestart()   {     m_tictactoe->Restart();   }   void OnStateChanged()   {     switch (m_tictactoe->GetState())     {       case TicTacToe::player1:         m_button->setText("Player 1 has won. Click to restart");         break;       case TicTacToe::player2:         m_button->setText("Player 2 has won. Click to restart");         break;       case TicTacToe::draw:         m_button->setText("Draw. Click to restart");         break;       case TicTacToe::no_winner:         m_button->setText("Restart");         break;       default:         assert(!"Should not get here");         break;     }   } }; `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that the widget has only dummy [member
functions](CppMemberFunction.htm) yet, but that the dialog is fully
functional. Because I prefer using the same signal/slot system in all my
programs, I use the [Boost signals](CppBoostSignal.htm) instead of the
Wt signals. To get the widgets align vertically, I put a
[Wt::WBreak](CppWBreak.htm) between the two relevant widgets. The
unnamed [Wt::WBreak](CppWBreak.htm) will be [deleted](CppDelete.htm) by
the dialog.

 

 

 

 

 

Step 3: implementing the WtTicTacToeWidget
------------------------------------------

 

The widget handles the interface between the TicTacToe class and the
user's mouse clicks.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/signals2.hpp> #include <Wt/WApplication> #include <Wt/WBreak> #include <Wt/WBrush> #include <Wt/WContainerWidget> #include <Wt/WEnvironment> #include <Wt/WEvent> #include <Wt/WPaintDevice> #include <Wt/WPaintedWidget> #include <Wt/WPainter> #include <Wt/WPen> #include <Wt/WPushButton> #include "tictactoe.h" //--------------------------------------------------------------------------- struct WtTicTacToeWidget : public Wt::WPaintedWidget {   WtTicTacToeWidget()   {     //Without resize, there is nothing to paint on     this->resize(GetWidth(),GetHeight());     this->clicked().connect(this,&WtTicTacToeWidget::OnClicked);     this->update();   }   boost::signals2::signal<void ()> m_signal_has_winner;   boost::signals2::signal<void ()> m_signal_state_changed;    int GetState() const   {     return m_tictactoe.GetWinner();   }   void Restart()   {     m_tictactoe = TicTacToe();     this->update();   }   protected:   void paintEvent(Wt::WPaintDevice *paintDevice)   {     Wt::WPainter painter(paintDevice);     const int width  = GetWidth();     const int height = GetHeight();     //Set black pen     Wt::WPen pen = painter.pen();     pen.setCapStyle(Wt::RoundCap);     pen.setColor(Wt::WColor(255,255,255));     painter.setPen(pen);     painter.setBrush(Wt::WBrush(Wt::WColor(255,255,255)));     painter.drawRect(0.0,0.0,GetWidth(),GetHeight());     //Set thick white pen     pen.setColor(Wt::WColor(0,0,0));     const int line_width = std::min(width,height) / 15;     pen.setWidth(line_width);     painter.setPen(pen);     //Vertical lines     painter.drawLine(         ((1*width)/3)+4,     0+(line_width/2),         ((1*width)/3)-4,height-(line_width/2));     painter.drawLine(         ((2*width)/3)-4,     0+(line_width/2),         ((2*width)/3)+8,height-(line_width/2));     //Horizontal lines     painter.drawLine(         0+(line_width/2),((1*height)/3)+4,         width-(line_width/2),((1*height)/3)-4);     painter.drawLine(         0+(line_width/2),((2*height)/3)-4,         width-(line_width/2),((2*height)/3)+8);      for (int row=0; row!=3; ++row)     {       const int x1 = ((row + 0) * (width / 3)) + (line_width/1) + 4;       const int x2 = ((row + 1) * (width / 3)) - (line_width/1) - 4;       for (int col=0; col!=3; ++col)       {         const int y1 = ((col + 0) * (height / 3)) + (line_width/1) + 4;         const int y2 = ((col + 1) * (height / 3)) - (line_width/1) - 4;         const int state = m_tictactoe.GetSquare(row,col);         if (state == TicTacToe::player1)         {           //player1 = cross           painter.drawLine(x1,y1,x2,y2);           painter.drawLine(x1,y2,x2,y1);         }         else if (state == TicTacToe::player2)         {           //player1 = circle           painter.drawEllipse(x1,y1,x2-x1,y2-y1);         }       }     }   }    private:   TicTacToe m_tictactoe;   int GetWidth() const { return 300.0; }   int GetHeight() const { return 300.0; }    void OnClicked(const Wt::WMouseEvent& e)   {     if (m_tictactoe.GetWinner() != TicTacToe::no_winner) return;     const int x = 3 * e.widget().x / this->GetWidth();     if (x < 0 || x > 2) return;     const int y = 3 * e.widget().y / this->GetHeight();     if (y < 0 || y > 2) return;     if (m_tictactoe.CanDoMove(x,y))     {       m_tictactoe.DoMove(x,y);       //emit that the state has changed       this->m_signal_state_changed();     }     if (m_tictactoe.GetWinner() != TicTacToe::no_winner)     {       //emit that there is a winner       this->m_signal_has_winner();     }     this->update();   } };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Conclusion
----------

 

This [article](CppArticle.htm) described the gradual development of a
custom dialog and widget. Using the architecture described in [Thinking
Wt 1: general](CppThinkingWt1.htm), it is possible to have multiple
steps-in-between to check if the program still works.

 

The [tool](Tools.htm) [TestTicTacToe](ToolTestTicTacToe.htm) contains
the polished and slightly extended version of the code in this
[article](CppArticle.htm).

 

My next article, [Thinking Wt 3: TicTacToe game](CppThinkingWt3.htm)
describes how I implement the WtTicTacToeWidget in a full game.

 

-   [View a screenshot of application developed in step 1 of this
    article (png)](CppThinkingWt2_1.png)
-   [View a screenshot of application developed in step 2 of this
    article (png)](CppThinkingWt2_2.png)
-   [View a screenshot of application developed in step 3 of this
    article (png)](CppThinkingWt2_3.png)
-   [Download the Qt Creator source code of
    'CppThinkingWt2\_1' (zip)](CppThinkingWt2_1.zip)
-   [Download the Qt Creator source code of
    'CppThinkingWt2\_2' (zip)](CppThinkingWt2_2.zip)
-   [Download the Qt Creator source code of
    'CppThinkingWt2\_3' (zip)](CppThinkingWt2_3.zip)

 

 

 

 

 

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
