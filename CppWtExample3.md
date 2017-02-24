[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Wt example 3: broadcasting](CppWtExample3.htm)
================================================================

 

[Wt example 3: broadcasting](CppWtExample3.htm) is an
[article](CppArticle.htm) about a simple [Wt](CppWt.htm)
[example](CppWtExample.htm) in which is shown how multiple clients can
respond to the same data source and be notified when needed.

 

The code shown is from the Wt git repository from
'examples/feature/broadcast/Broadcast.C'. Underneath the code it its
working is explained.

 

-   [Download the Qt Creator project
    'CppWtExample3' (zip)](CppWtExample3.zip)
-   [View the class architecture of this
    example (png)](CppWtExample3.png)
-   [View the class architecture of this
    example (dia)](CppWtExample3.dia)

 

This [example](CppWtExample.htm) gives a complete view of all
bookkeeping necessary. [Wt example 4: broadcasting](CppWtExample4.htm)
shows how to use two [classes](CppClass.htm) to do this bookkeeping for
you, resulting in shorter code.

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /*  * Copyright (C) 2010 Emweb bvba, Kessel-Lo, Belgium.  *  * See the LICENSE file for terms of use.  */ #include <Wt/WApplication> #include <Wt/WText> #include <Wt/WServer>  #include <boost/thread.hpp>  /*  * This example illustrates how using WServer::post() you may notify  * one or more sessions of shared data changes.  */  /*  * Simple interface to uniquely identify a client  */ class Client { };  /*  * A (singleton) server class which would protect and manage a shared  * resource. In our example we take a simple counter as data.  */ class Server { public:   Server()     : counter_(0),       stop_(false)   {     thread_ = boost::thread(boost::bind(&Server::run, this));   }    ~Server()   {     stop_ = true;     thread_.join();   }    void connect(Client *client, const boost::function<void()>& function)   {     boost::mutex::scoped_lock lock(mutex_);      connections_.push_back       (Connection(Wt::WApplication::instance()->sessionId(), client, function));   }    void disconnect(Client *client)   {     boost::mutex::scoped_lock lock(mutex_);      for (unsigned i = 0; i < connections_.size(); ++i) {       if (connections_[i].client == client) {   connections_.erase(connections_.begin() + i);   return;       }     }      assert(false);   }    int getCount() const {     boost::mutex::scoped_lock lock(mutex_);      return counter_;   }  private:   struct Connection {     Connection(const std::string& id, Client *c,          const boost::function<void()>& f)       : sessionId(id),   client(c),   function(f)     { }      std::string sessionId;     Client *client;     boost::function<void()> function;   };    mutable boost::mutex mutex_;   boost::thread thread_;   int counter_;   bool stop_;    std::vector<Connection> connections_;    void run(); };  Server server;  /*  * A widget which displays the server data, keeping itself up-to-date  * using server push.  */ class ClientWidget : public Wt::WText, public Client { public:   ClientWidget(Wt::WContainerWidget *parent = 0)     : Wt::WText(parent)   {     server.connect(this, boost::bind(&ClientWidget::updateData, this));      Wt::WApplication::instance()->enableUpdates(true);      updateData();   }    virtual ~ClientWidget() {     server.disconnect(this);      Wt::WApplication::instance()->enableUpdates(false);   }  private:   void updateData() {     setText(Wt::WString("count: {1}").arg(server.getCount()));      Wt::WApplication::instance()->triggerUpdate();   } };  void Server::run() {   /*    * This method simulates changes to the data that happen in a background    * thread.    */   for (;;) {     boost::this_thread::sleep(boost::posix_time::seconds(1));      if (stop_)       return;      {       boost::mutex::scoped_lock lock(mutex_);       ++counter_;        /* This is where we notify all connected clients. */       for (unsigned i = 0; i < connections_.size(); ++i) {   Connection& c = connections_[i];   Wt::WServer::instance()->post(c.sessionId, c.function);       }     }   } }  Wt::WApplication *createApplication(const Wt::WEnvironment& env) {   Wt::WApplication *app = new Wt::WApplication(env);   app->setCssTheme("");   new ClientWidget(app->root());   return app; }  int main(int argc, char **argv) {   return WRun(argc, argv, &createApplication); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppWtExample3' (zip)](CppWtExample3.zip)
-   [View the class architecture of this
    example (png)](CppWtExample3.png)
-   [View the class architecture of this
    example (dia)](CppWtExample3.dia)

 

This example has the following players:

-   Client: a client [class](CppClass.htm)
-   Server: a server [class](CppClass.htm), where Clients can connect
    and disconnect to
-   ClientWidget: [class](CppClass.htm) to display a Client
-   a global Server

 

In general, the program does the following:

-   The main action is in Server::Run: every second it posts to the
    Clients that are connect to it
-   The Clients connect to the Server and let the Server work on them

 

First, the Server will be discussed in detail, as it is at the heart of
the program. Then the ClientWidgets interplay with it is checked in more
detail.

 

Server has the following [member functions](CppMemberFunction.htm),
which I explain in detail:

-   [constructor](CppConstructor.htm): set the data member 'counter\_'
    to zero, set the data member 'stop\_' to false and create a
    [boost::thread](CppThread.htm), 'thread\_', that calls Server::run
-   [destructor](CppDestructor.htm): set the data member 'stop\_' to
    true and stop the [boost::thread](CppThread.htm) 'thread\_'
-   Server::run: contains the action: it consists of an infinite loop,
    that starts with doing nothing for a second. Then Server checks if
    it should terminate this loop, by checking 'stop\_'. The only 'real
    data' 'counter\_' is incremented. Then, in a locked scope, all
    connected clients are notified. The most important line is the call
    of Wt::WServer::post: all clients (identified by their session ID's
    are post a function that these clients submitted themselves upon
    connecting
-   Server::connect: this method is called by the Clients: a client
    connecting to Server denotes that it wants to have the supplied
    [boost::function](CppFunction.htm) called. In this example, the
    ClientWidgets want to have their ClientWidget::updateData method
    called: a Client simply wants to be updated when needed!
-   Server::disconnect: this method is called by a Client when it
    is destroyed. This method takes that Client of the list of Clients
    being notified
-   Server::getCount: this method is called by a Client and let it
    obtain the only 'real data': the value of the Server its counter.
    This method is called when a Client is updated

 

ClientWidget has the following [member
functions](CppMemberFunction.htm):

-   [constructor](CppConstructor.htm): in it, ClientWidget connects to
    Server and gives it the ClientWidget::updateData function to call.
    Or: it lets itself be notified by letting the Server
    call ClientWidget::updateData. Additionaly,
    Wt::WApplication::enableUpdates is set to true and ClientWidget its
    first update is called
-   [destructor](CppDestructor.htm): the ClientWidget notifies the
    Server that it does not want to be notified any longer (as it will
    not exist after destruction anymore. Additionaly,
    Wt::WApplication::enableUpdates is set to false
-   ClientWidget::updateData: the main method of ClientWidget: it
    requests the Server for its only data, by calling
    Server::getCounter, sets its text to this value and calls
    Wt::WApplication::triggerUpdate

 

The above being the main story, there is the following to be noted:

-   Every method in Server that writes to it, is locked by
    a boost::mutex. This ensures that only one thread is writing to the
    same data at the same time
-   Every ClientWidget sets Wt::WApplication::enableUpdates to true upon
    construction, calls Wt::WApplication::triggerUpdate in its most
    action-packed method and sets Wt::WApplication::enableUpdates to
    false upon destruction

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
