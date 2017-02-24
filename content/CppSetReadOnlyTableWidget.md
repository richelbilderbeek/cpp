



 

 

 

 

 

([C++](Cpp.htm)) [SetReadOnlyTableWidget](CppSetReadOnlyTableWidget.htm)
========================================================================

 

[SetReadOnlyTableWidget](CppSetReadOnlyTableWidget.htm) is a
[QTableWidget](CppQTableWidget.htm) [code snippet](CppCodeSnippets.htm)
to render a [QTableWidget](CppQTableWidget.htm) read-only.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///SetReadOnlyTableWidget makes the QTableWidget read-only. ///From http://www.richelbilderbeek.nl/CppSetReadOnlyTableWidget.htm void SetReadOnlyTableWidget(QTableWidget * const t) {   const int n_cols = t->columnCount();   const int n_rows = t->rowCount();   const Qt::ItemFlags f(Qt::ItemIsSelectable | Qt::ItemIsEnabled);   for (int y=0; y!=n_rows; ++y)   {     for (int x=0; x!=n_cols; ++x)     {       QTableWidgetItem * i = new QTableWidgetItem;       i->setFlags(f);       t->setItem(x,y,i);     }   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
