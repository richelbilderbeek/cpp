# ([C++](Cpp.md)) ![Boost](PicBoost.png) [Asio](CppBoostAsio.md)

The [Asio](CppBoostAsio.md) is a cross-platform [library](CppLibrary.md)
for networking and part of [Boost](CppBoost.md).

 

[Asio](CppBoostAsio.md) can be installed from the Ubuntu Software Center.

 

-   [1: chat server](CppAsioExample1.md)
-   [2: chat client](CppAsioExample2.md)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent the [link error](CppLinkError.md) [undefined reference to
'boost::system::get\_system\_category()'](CppLinkErrorUndefinedReferenceToBoostSystemGet_system_category.md)):

 

  ---------------------------
  ` LIBS += -lboost_system`
  ---------------------------

 

 

 

 

 

External links
--------------

 

-   [Asio documentation (v.
    1.43.0)](http://www.boost.org/doc/libs/1_43_0/doc/html/boost_asio.html)

 

 

 

 

 

 

