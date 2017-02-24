



 

 

 

 

 

([C++](Cpp.htm)) [IntToQtStr](CppIntToQtStr.htm)
================================================

 

[IntToQtStr](CppIntToQtStr.htm) is a [conversion](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) an
[integer](CppInt.htm) to a [QString](CppQString.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <QString>  //From http://www.richelbilderbeek.nl/CppQtStrToInt.htm int QtStrToInt(const QString& s) {   bool okay = true;   const int i = s.toInt(&okay);   assert(okay == true);   return i; }  //From http://www.richelbilderbeek.nl/CppIntToQtStr.htm QString IntToQtStr(const int i) {   QString s;   s.setNum(i);   return s; }  int main() {   assert(QtStrToInt("123")==123);   assert(IntToQtStr(123)=="123"); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



