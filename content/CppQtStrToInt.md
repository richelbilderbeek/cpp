



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QtStrToInt](CppQtStrToInt.htm)
=================================================================

 

[QtStrToInt](CppQtStrToInt.htm) is a [conversion](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) a
[QString](CppQString.htm) to an [integer](CppInt.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QString>  //From http://www.richelbilderbeek.nl/CppQtStrToInt.htm int QtStrToInt(const QString& s) {   bool okay = true;   const int i = s.toInt(&okay);   assert(okay == true);   return i; }  //From http://www.richelbilderbeek.nl/CppIntToQtStr.htm QString IntToQtStr(const int i) {   QString s;   s.setNum(i);   return s; }  int main() {   assert(QtStrToInt("123")==123);   assert(IntToQtStr(123)=="123"); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



