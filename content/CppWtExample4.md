



 

 

 

 

 

([C++](Cpp.md)) [Wt example 4: broadcasting using WtBroadcastServer](CppWtExample4.md)
========================================================================================

 

[Wt example 4: broadcasting using WtBroadcastServera](CppWtExample4.md)
is an [article](CppArticle.md) about a simple [Wt](CppWt.md)
[example](CppWtExample.md) in which is shown how multiple clients can
respond to the same data source and be notified when needed.

 

This [example](CppWtExample.md) shows how to use two
[classes](CppClass.md) to do most of the work for you. For a complete
view of all delegated tasks, [Wt example 3:
broadcasting](CppWtExample3.md) gives a complete view of all
bookkeeping necessary.

 

The code shown is simplified from the [tool](Tools.md)
[TestBroadcastServer](ToolTestBroadcastServer.md) (version 1.0).

 

This example has the following players:

-   [WtBroadcastServer](CppWtBroadcastServer.md): a server
    [singleton](CppSingleton.md) [class](CppClass.md) that notifies
    its [WtBroadcastServerClients](CppWtBroadcastServerClient.md) every
    100 milliseconds
-   WtMainDialog: a [derived class](CppDerivedClass.md) of
    [WtBroadcastServerClients](CppWtBroadcastServerClient.md) that has
    contents editable and viewable to all web page visitos

 

The program does the following:

-   WtMainDialog displays one [Wt::WLineEdit](CppWLineEdit.md) that
    acts as one shared edit box for all visitors

 

Below, the WtMainDialog and its communication to the
[WtBroadcastServer](CppWtBroadcastServer.md) is discussed in detail,
starting at its [header file](CppHeaderFile.md).

 

 

 

 

The [WtBroadcastServer](CppWtBroadcastServer.md) [header file](CppHeaderFile.md)
----------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct WtMainDialog : public Wt::WContainerWidget, WtBroadcastServerClient {   WtMainDialog();    private:   ///The user interface   struct Ui   {     Ui() : m_edit(0) {}     Wt::WLineEdit * m_edit;   } ui;    ///The user changes the text in the Wt::WLineEdit   void OnEditChanged();    ///The server updates the page   void UpdatePage(); };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This header file has the following elements:

-   WtMainDialog is a [Wt::WContainerWidget](CppWContainerWidget.md),
    because it [inherits](CppInheritance.md) from
    [Wt::WContainerWidget](CppWContainerWidget.md).
    [Wt::WContainerWidget](CppWContainerWidget.md) is used as a [base
    class](CppBaseClass.md) to let WtMainDialog be a dialog
-   WtMainDialog is a
    [WtBroadcastServerClient](CppWtBroadcastServerClient.md), because
    it also [inherits](CppInheritance.md) from
    [WtBroadcastServerClient](CppWtBroadcastServerClient.md).
    [WtBroadcastServerClient](CppWtBroadcastServerClient.md) is used as
    a [base class](CppBaseClass.md) to let WtMainDialog be a client to
    the [WtBroadcastServer](CppWtBroadcastServer.md). This imposes a
    rule on WtMainDialog: it must define an UpdatePage method, which
    will be called every 100 milliseconds
-   WtMainDialog uses a nested [struct](CppStruct.md) called 'Ui',
    short for 'User Interface', which contains the only visible control:
    the [Wt::WLineEdit](CppWLineEdit.md) called m\_edit. In this
    example, one could also easily put m\_edit as a direct member
    of WtMainDialog. For reasons of following the same approach as
    [Qt](CppQt.md), this is done in this (and in many more) examples
-   WtMainDialog has a method called 'OnEditChanged', which will be
    called when the [Wt::WLineEdit](CppWLineEdit.md) is changed by one
    of its possibly many users
-   WtMainDialog has a method called 'UpdatePage', which will be called
    when the [Wt::WLineEdit](CppWLineEdit.md) is changed by one of its
    possibly many users. Because WtMainDialog is a
    [WtBroadcastServerClient](CppWtBroadcastServerClient.md), it must
    define this [abstract](CppAbstract.md) method, otherwise the
    [compiler](CppCompiler.md) will indicate this

 

 

 

 

 

The [WtBroadcastServer](CppWtBroadcastServer.md) [implementation file](CppImplementationFile.md)
--------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` WtMainDialog::WtMainDialog() {   ui.m_edit = new Wt::WLineEdit(this);   ui.m_edit->keyWentUp().connect(this,&WtMainDialog::OnEditChanged); } //--------------------------------------------------------------------------- void WtMainDialog::OnEditChanged() {   WtBroadcastServer::GetInstance()->SetData(     std::string(ui.m_edit->text().toUTF8())); } //--------------------------------------------------------------------------- void WtMainDialog::UpdatePage() {   std::string text;   try   {     text = boost::any_cast<std::string>(WtBroadcastServer::GetInstance()->GetData());   }   catch (boost::bad_any_cast&)   {     text = "TestBroadcastServer";   }   ui.m_edit->setText(text.c_str()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

WtMainDialog has only three methods:

-   WtMainDialog::WtMainDialog: the WtMainDialog
    [constructor](CppConstructor.md): in it, the ui.m\_edit is
    [constructed](CppConstructor.md) and its keyWentUp signal is
    connected to WtMainDialog::OnEditChanged: when the user releases a
    key when ui.m\_edit is in focus, WtMainDialog::OnEditChanged is
    called
-   WtMainDialog::OnEditChanged: sets the data of the server to the
    freshly edited text in the Wt::WLineEdit.
    [WtBroadcastServer](CppWtBroadcastServer.md) holds only one piece
    of data, in the form of [boost::any](CppAny.md). In this case, the
    data is of type [std::string](CppString.md), but it can be any (no
    pun intended) much more complex [data type](CppDataType.md)
-   WtMainDialog::UpdatePage: this method is called every 100
    milliseconds and gets the data of the server and puts it in the
    Wt::WLineEdit. The use of [boost::any\_cast](CppAny_cast.md) is
    needed, because [WtBroadcastServer](CppWtBroadcastServer.md) holds
    only one piece of data, in the form of [boost::any](CppAny.md). It
    can be true, however, that
    [WtBroadcastServer](CppWtBroadcastServer.md) has no data yet. In
    such a case, [boost::any\_cast](CppAny_cast.md) throws
    boost::bad\_any\_cast and the content content of the Wt::WLineEdit
    is set to the name of the application

 

 

 

 

 

Conclusion
----------

 

Compared to the previous [example](CppWtExample.md), that is [Wt
example 3: broadcasting](CppWtExample3.md), this
[example](CppWtExample.md) is shorter and, in my humble opinion, better
focussed: all bookkeeping is done by
[WtBroadcastServer](CppWtBroadcastServer.md) and
[WtBroadcastServerClient](CppWtBroadcastServerClient.md).

 

 

 

 

 





 



