



 

 

 

 

 

([C++](Cpp.htm)) [QtSqlExample1](CppQtSqlExample1.htm)
======================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Qt SQL example 1](CppQtSqlExample1.htm) is a [Qt SQL](CppQtSql.htm)
[example](CppExample.htm).

 

-   [View a screenshot of
    'CppQtSqlExample1' (png)](CppQtSqlExample1.png)
-   [Download the Qt Creator project
    'CppQtSqlExample1' (zip)](CppQtSqlExample1.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQtSqlExample1/CppQtSqlExample1.pro
--------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console qt QT += sql SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

./CppQtSqlExample1/main.cpp
---------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <QtSql>  int main() {   //Create a database   QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE"); //Choose from QSQLITE QODBC3 QODBC   db.setDatabaseName("MY_DATABASE");   const bool ok = db.open();   assert(ok);    //Delete the table 'PEOPLE' from a possible previous session   QSqlQuery("DROP TABLE PEOPLE");   assert(db.tables().empty() && "There must be zero tables at startup");    //Creata a 'PEOPLE' table   QSqlQuery("CREATE TABLE PEOPLE (ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL)");   assert(db.tables().size() == 1 && "Table PEOPLE must have been created");    //Check that table is empty   {     QSqlQuery query("SELECT * FROM PEOPLE");     //Using QSqlQuery::size is not supported by all drivers, so count the number of rows manually     int size = 0;     while (query.next()) { ++size; }     assert(size == 0 && "Table PEOPLE must be empty directly after its creation");   }    //Insert people   QSqlQuery("INSERT INTO PEOPLE VALUES (1,\"Mr. A\")");   QSqlQuery("INSERT INTO PEOPLE VALUES (2,\"Ms. B\")");   QSqlQuery("INSERT INTO PEOPLE VALUES (3,\"Mr. C\")");    //Check that table is not empty anymore   {     QSqlQuery query("SELECT * FROM PEOPLE");     //Using QSqlQuery::size is not supported by all drivers, so count the number of rows manually     int size = 0;     while (query.next()) { ++size; }     assert(size == 3 && "Table PEOPLE must contain three persons");   }    //Display content of PEOPLE on screen   {     QSqlQuery query("SELECT * FROM PEOPLE");     std::cout << "#\tID\tNAME\n";     int index = 0;     while (query.next())     {       const int id = query.value(0).toInt();       const std::string name = query.value(1).toString().toStdString();       std::cout << index << '\t' << id << '\t' << name << '\n';       ++index;     }   } }  /* Screen output:  #       ID      NAME 0       1       Mr. A 1       2       Ms. B 2       3       Mr. C  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
