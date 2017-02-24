
 

 

 

 

 

([C++](Cpp.md)) ![Cygwin](PicCygwin.png) [Cygwin](CppCygwin.md)
=================================================================

 

[Cygwin](CppCygwin.md) is a [system environent](CppOs.md) to offer a
UNIX-like environment under Windows. Among others,
[Cygwin](CppCygwin.md) can be used to [port](CppPort.md) programs from
UNIX to Windows.

 

Under Ubuntu, [Cygwin](CppCygwin.md) can be installed from
[Wine](CppWine.md), see ![FAIL](PicRed.png) [running Cygwin under Wine
under Ubuntu](CppCygwinUnderWineUnderUbuntu.md).

 

[Cygwin](CppCygwin.md) can be installed with many libraries, among
others:

-   [STL](CppStl.md)
-   [Boost](CppBoost.md)
-   [Qt](CppQt.md)

 

 

 

 

 

Can I build Boost from a path with spaces?
------------------------------------------

 

I have tried building Boost from the folder '/Program
Files/boost/boost\_1\_44\_0', but this was unsuccessfull.

Building Boost from the folder '/BoostLib/boost\_1\_44\_0' is ....

 

 

 

 

 

Is it okay for my username to contain spaces?
---------------------------------------------

 

No, see \[1\].

 

 

 

 

 

Any tips setting up Cygwin?
---------------------------

 

Yes, see \[2\].

 

 

 

 

 

External links
--------------

 

-   [Cygwin homepage](http://www.cygwin.com)
-   [Wikipedia page about Cygwin](http://en.wikipedia.org/wiki/Cygwin)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Cygwin FAQ, question 15: My Windows logon name has a space in it,
    will this cause
    problems?](http://www.cygwin.com/faq/faq.setup.html)\
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     My Windows logon name has a space in it, will this cause problems?          Most definitely yes! UNIX shells (and thus Cygwin) use the space character as a word delimiter. Under certain circumstances, it is possible to get around this with various shell quoting mechanisms, but you are much better off if you can avoid the problem entirely.          You have two choices:      1. You can rename the user in the Windows User Manager GUI and then run mkpasswd.      2. You can simply edit the /etc/passwd file and change the Cygwin user name (first field). It's also a good idea to avoid spaces in the home directory.      `
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

2.  [Charles Plager's page about
    Cygwin](http://www-cdf.fnal.gov/~cplager/cygwin.html)\
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #  Cygwin doesn't like spaces in directories. To have access to my program files, I created a 'mount point':     cygwin> mount -f -s -b "c:/Program Files" "/mount/programfiles"     You only need to run this command once.     # To make access easier to my documents and the decktop, I made the following soft links in my home directory     cygwin> ln -s 'C:/Documents and Settings/cplager/Desktop' Desktop     cygwin> ln -s 'C:/Documents and Settings/cplager/My Documents' Documents     `
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

