



 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png) [Asio](CppAsio.htm)
===========================================================

 

The [Asio](CppAsio.htm) is a cross-platform [library](CppLibrary.htm)
for networking and part of [Boost](CppBoost.htm).

 

[Asio](CppAsio.htm) can be installed from the Ubuntu Software Center.

 

-   [1: chat server](CppAsioExample1.htm)
-   [2: chat client](CppAsioExample2.htm)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.htm) (to
prevent the [link error](CppLinkError.htm) [undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.htm)):

 

  ---------------------------
  ` LIBS += -lboost_system`
  ---------------------------

 

 

 

 

 

External links
--------------

 

-   [Asio documentation (v.
    1.43.0)](http://www.boost.org/doc/libs/1_43_0/doc/html/boost_asio.html)

 

 

 

 

 





 



