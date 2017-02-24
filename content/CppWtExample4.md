[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Wt example 4: broadcasting using WtBroadcastServer](CppWtExample4.htm)
========================================================================================

 

[Wt example 4: broadcasting using WtBroadcastServera](CppWtExample4.htm)
is an [article](CppArticle.htm) about a simple [Wt](CppWt.htm)
[example](CppWtExample.htm) in which is shown how multiple clients can
respond to the same data source and be notified when needed.

 

This [example](CppWtExample.htm) shows how to use two
[classes](CppClass.htm) to do most of the work for you. For a complete
view of all delegated tasks, [Wt example 3:
broadcasting](CppWtExample3.htm) gives a complete view of all
bookkeeping necessary.

 

The code shown is simplified from the [tool](Tools.htm)
[TestBroadcastServer](ToolTestBroadcastServer.htm) (version 1.0).

 

This example has the following players:

-   [WtBroadcastServer](CppWtBroadcastServer.htm): a server
    [singleton](CppSingleton.htm) [class](CppClass.htm) that notifies
    its [WtBroadcastServerClients](CppWtBroadcastServerClient.htm) every
    100 milliseconds
-   WtMainDialog: a [derived class](CppDerivedClass.htm) of
    [WtBroadcastServerClients](CppWtBroadcastServerClient.htm) that has
    contents editable and viewable to all web page visitos

 

The program does the following:

-   WtMainDialog displays one [Wt::WLineEdit](CppWLineEdit.htm) that
    acts as one shared edit box for all visitors

 

Below, the WtMainDialog and its communication to the
[WtBroadcastServer](CppWtBroadcastServer.htm) is discussed in detail,
starting at its [header file](CppHeaderFile.htm).

 

 

 

 

The [WtBroadcastServer](CppWtBroadcastServer.htm) [header file](CppHeaderFile.htm)
----------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct WtMainDialog : public Wt::WContainerWidget, WtBroadcastServerClient {   WtMainDialog();    private:   ///The user interface   struct Ui   {     Ui() : m_edit(0) {}     Wt::WLineEdit * m_edit;   } ui;    ///The user changes the text in the Wt::WLineEdit   void OnEditChanged();    ///The server updates the page   void UpdatePage(); };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This header file has the following elements:

-   WtMainDialog is a [Wt::WContainerWidget](CppWContainerWidget.htm),
    because it [inherits](CppInheritance.htm) from
    [Wt::WContainerWidget](CppWContainerWidget.htm).
    [Wt::WContainerWidget](CppWContainerWidget.htm) is used as a [base
    class](CppBaseClass.htm) to let WtMainDialog be a dialog
-   WtMainDialog is a
    [WtBroadcastServerClient](CppWtBroadcastServerClient.htm), because
    it also [inherits](CppInheritance.htm) from
    [WtBroadcastServerClient](CppWtBroadcastServerClient.htm).
    [WtBroadcastServerClient](CppWtBroadcastServerClient.htm) is used as
    a [base class](CppBaseClass.htm) to let WtMainDialog be a client to
    the [WtBroadcastServer](CppWtBroadcastServer.htm). This imposes a
    rule on WtMainDialog: it must define an UpdatePage method, which
    will be called every 100 milliseconds
-   WtMainDialog uses a nested [struct](CppStruct.htm) called 'Ui',
    short for 'User Interface', which contains the only visible control:
    the [Wt::WLineEdit](CppWLineEdit.htm) called m\_edit. In this
    example, one could also easily put m\_edit as a direct member
    of WtMainDialog. For reasons of following the same approach as
    [Qt](CppQt.htm), this is done in this (and in many more) examples
-   WtMainDialog has a method called 'OnEditChanged', which will be
    called when the [Wt::WLineEdit](CppWLineEdit.htm) is changed by one
    of its possibly many users
-   WtMainDialog has a method called 'UpdatePage', which will be called
    when the [Wt::WLineEdit](CppWLineEdit.htm) is changed by one of its
    possibly many users. Because WtMainDialog is a
    [WtBroadcastServerClient](CppWtBroadcastServerClient.htm), it must
    define this [abstract](CppAbstract.htm) method, otherwise the
    [compiler](CppCompiler.htm) will indicate this

 

 

 

 

 

The [WtBroadcastServer](CppWtBroadcastServer.htm) [implementation file](CppImplementationFile.htm)
--------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` WtMainDialog::WtMainDialog() {   ui.m_edit = new Wt::WLineEdit(this);   ui.m_edit->keyWentUp().connect(this,&WtMainDialog::OnEditChanged); } //--------------------------------------------------------------------------- void WtMainDialog::OnEditChanged() {   WtBroadcastServer::GetInstance()->SetData(     std::string(ui.m_edit->text().toUTF8())); } //--------------------------------------------------------------------------- void WtMainDialog::UpdatePage() {   std::string text;   try   {     text = boost::any_cast<std::string>(WtBroadcastServer::GetInstance()->GetData());   }   catch (boost::bad_any_cast&)   {     text = "TestBroadcastServer";   }   ui.m_edit->setText(text.c_str()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

WtMainDialog has only three methods:

-   WtMainDialog::WtMainDialog: the WtMainDialog
    [constructor](CppConstructor.htm): in it, the ui.m\_edit is
    [constructed](CppConstructor.htm) and its keyWentUp signal is
    connected to WtMainDialog::OnEditChanged: when the user releases a
    key when ui.m\_edit is in focus, WtMainDialog::OnEditChanged is
    called
-   WtMainDialog::OnEditChanged: sets the data of the server to the
    freshly edited text in the Wt::WLineEdit.
    [WtBroadcastServer](CppWtBroadcastServer.htm) holds only one piece
    of data, in the form of [boost::any](CppAny.htm). In this case, the
    data is of type [std::string](CppString.htm), but it can be any (no
    pun intended) much more complex [data type](CppDataType.htm)
-   WtMainDialog::UpdatePage: this method is called every 100
    milliseconds and gets the data of the server and puts it in the
    Wt::WLineEdit. The use of [boost::any\_cast](CppAny_cast.htm) is
    needed, because [WtBroadcastServer](CppWtBroadcastServer.htm) holds
    only one piece of data, in the form of [boost::any](CppAny.htm). It
    can be true, however, that
    [WtBroadcastServer](CppWtBroadcastServer.htm) has no data yet. In
    such a case, [boost::any\_cast](CppAny_cast.htm) throws
    boost::bad\_any\_cast and the content content of the Wt::WLineEdit
    is set to the name of the application

 

 

 

 

 

Conclusion
----------

 

Compared to the previous [example](CppWtExample.htm), that is [Wt
example 3: broadcasting](CppWtExample3.htm), this
[example](CppWtExample.htm) is shorter and, in my humble opinion, better
focussed: all bookkeeping is done by
[WtBroadcastServer](CppWtBroadcastServer.htm) and
[WtBroadcastServerClient](CppWtBroadcastServerClient.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
