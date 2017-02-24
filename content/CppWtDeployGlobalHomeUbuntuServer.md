
 

 

 

 

 

([C++](Cpp.md)) ![Wt](PicWt.png)![Ubuntu](PicUbuntu.png) [Global Wt deployment on a home server with the Ubuntu Server operating system](CppWtDeployGlobalHomeUbuntuServer.md)
================================================================================================================================================================================

 

[Global Wt deployment on a home server with the Ubuntu Server operating
system](CppWtDeployGlobalHomeUbuntuServer.md) is a type of [global Wt
deployment on a home server](CppWtDeployGlobalHome.md) where the server
has the Ubuntu Server operating system.

 

The deployment consists of the following steps:

-   Installing Ubuntu Server edition
-   Finding out your IP address
-   (when behind a router) port forwarding
-   Starting the Wt application
-   (Optional) Register a name for your IP-address

 

 

 

 

 

Installing Ubuntu Server edition
--------------------------------

 

Install Ubuntu Server edition on the server-to-be.

 

I did so by burning a CD from the ISO image that can be downloaded from
the Ubuntu Server edition homepage. During installation I kept all
options at their default.

 

 

 

 

 

Finding out your IP address
---------------------------

 

On the server-to-be, find out its IP address. To do, there are multiple
options:

-   Install lynx and visit the cmyip.com website:\
      ------------------------------------------------
      `     sudo apt-get install lynx     lynx     `
      ------------------------------------------------

-   Install snarf and read the cmyip.com website:\
      -------------------------------------------------------------------------
      `     sudo apt-get install snarf     snarf www.cmyip.com - | less     `
      -------------------------------------------------------------------------

-   (if you can access another computer connected to the same router)
    visit the wwww.cmyip.com website with any browser
-   (when behind a router) visit the router internals (see next step)

 

Write down this IP address, you will need it to access your Wt
application.

 

 

 

 

 

(when behind a router) port forwarding
--------------------------------------

 

When behind a router, ports 80 an 8080 need to be forwarded to the
server. How to do this depends on your router. Below I show how to do it
using a router called the 'KPN Experia box'

 

To set up the port forwarding with the KPN Experia box, I used the web
browser Google Chrome to access this router. According to the Experia
box's manual, I would need to surft to http://192.168.2.254. After doing
so, the [Experia login screen](CppExperiaLogin.png) was shown. After
submitting the correct pasword, the [Experia status
screen](CppExperiaStatus.png) was shown. On this screen, [I can see the
local (useful for computers connected to the router only) IP address and
the global IP address (the IP address any Internet users can
access](CppExperiaStatusHighlight.png). In this example, my server is
called 'bbserver' and has a local IP address of 192.168.2.3, where the
global IP address is 84.85.246.65.

 

In the [Experia port mapping menu](CppExperiaPortMapping.png), ports 80
and 8080 are routed to the local IP address of the server, in this case
192.168.2.3.

 

 

 

 

 

Starting the Wt application
---------------------------

 

If you haven't installed the [Wt](CppWt.md) [library](CppLibrary.md),
do so:

  -------------------------------
  ` sudo apt-get install witty`
  -------------------------------

 

Start the [Wt](CppWt.md) application (in this case
'CppHelloWorldQtCreatorUbuntu'):

 

  -----------------------------------------------------------------------------------------
  ` sudo ./CppHelloWtQtCreatorUbuntu --docroot . --http-address 0.0.0.0 --http-port 8080`
  -----------------------------------------------------------------------------------------

 

After submitting your password, the server is running. From another
computer it can be accessed from its global IP address with ':8080'
appended. In this example, surfing to 84.85.246.65:8080 would show up
the application.

 

 

 

 

 

(Optional) Register a name for your IP-address
----------------------------------------------

 

An IP address is not an easy-to-remember thing. When visiting a free
dynamic DNS service, for example the changeip.net page, after a free
registration, a human-readable name can be coupled to the IP address. In
this example, I coupled the name 'richelbilderbeek.changeip.net' to the
IP address 84.85.246.65. From then on, surfing to
richelbilderbeek.changeip.net:8080 will show up the application.

 

 

 

 

 

External links
--------------

 

-   [Wt homepage](http://www.webtoolkit.eu/wt)
-   [Wt wiki's page about Wt
    deployment](http://redmine.webtoolkit.eu/projects/wt/wiki/Wt_Deployment)
-   [Ubuntu Server edition homepage](http://www.ubuntu.com/server)
-   [cmyip.com page](http://cmyip.com)
-   [changeip.net page](http://www.changeip.net)
-   [KPN Experia box
    homepage](http://www.kpnadsl.com/index_experia.html)
-   [Tinkernut's YouTube video 'How To Set Up A Home
    Server'](http://www.youtube.com/watch?v=-rKDhZJignU)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  ...

 

 

 

 

 

 

