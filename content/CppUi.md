



 

 

 

 

 

([C++](Cpp.md)) [Ui](CppUi.md)
================================

 

[Ui](CppUi.md) is the [namespace](CppNamespace.md) that [Qt
Creator](CppQtCreator.md) puts the designed [GUI](CppGui.md)'s in.

 

The code below shows the code of a default-created [Qt
Creator](CppQtCreator.md) dialog, with added
[comments](CppComment.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  //Forward declaration of Ui::Dialog namespace Ui {     class Dialog; }  class Dialog : public QDialog {     Q_OBJECT  public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();  protected:     void changeEvent(QEvent *e);  private:     //Pointer to this Ui::Dialog     Ui::Dialog *ui; };  #endif // DIALOG_H `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



