
 

 

 

 

 

([C++](Cpp.md)) [SetReadOnlyTableWidget](CppSetReadOnlyTableWidget.md)
========================================================================

 

[SetReadOnlyTableWidget](CppSetReadOnlyTableWidget.md) is a
[QTableWidget](CppQTableWidget.md) [code snippet](CppCodeSnippets.md)
to render a [QTableWidget](CppQTableWidget.md) read-only.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///SetReadOnlyTableWidget makes the QTableWidget read-only. ///From http://www.richelbilderbeek.nl/CppSetReadOnlyTableWidget.htm void SetReadOnlyTableWidget(QTableWidget * const t) {   const int n_cols = t->columnCount();   const int n_rows = t->rowCount();   const Qt::ItemFlags f(Qt::ItemIsSelectable | Qt::ItemIsEnabled);   for (int y=0; y!=n_rows; ++y)   {     for (int x=0; x!=n_cols; ++x)     {       QTableWidgetItem * i = new QTableWidgetItem;       i->setFlags(f);       t->setItem(x,y,i);     }   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

