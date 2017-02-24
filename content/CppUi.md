

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Ui](CppUi.htm)
================================

 

[Ui](CppUi.htm) is the [namespace](CppNamespace.htm) that [Qt
Creator](CppQtCreator.htm) puts the designed [GUI](CppGui.htm)'s in.

 

The code below shows the code of a default-created [Qt
Creator](CppQtCreator.htm) dialog, with added
[comments](CppComment.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  //Forward declaration of Ui::Dialog namespace Ui {     class Dialog; }  class Dialog : public QDialog {     Q_OBJECT  public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();  protected:     void changeEvent(QEvent *e);  private:     //Pointer to this Ui::Dialog     Ui::Dialog *ui; };  #endif // DIALOG_H `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
