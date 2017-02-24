

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise: Qt hide and show \#1](CppExerciseQtHideAndShow1Answer.htm)
================================================================================================

 

[Answer of exercise: Qt hide and show
\#1](CppExerciseQtHideAndShow1Answer.htm) is the answer of the
[exercise](CppExercise.htm) [Qt hide and show
\#1](CppExerciseQtHideAndShow1.htm).

 

 

 

 

 

Solution
--------

 

-   [Download the Qt Creator project
    'CppExerciseQtHideAndShow1Answer' (zip)](CppExerciseQtHideAndShow1Answer.zip)

 

The uninteded behavior is coded in [main](CppMain.htm):

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "firstdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   FirstDialog w;   w.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

I think that this means, that at the moment when FirstDialog is hidden
(for showing the second dialog) and the second dialog closes,
FirstDialog::exec finishes with an error code of zero.

 

Instead, I want that that moment is bridged until the first dialog
closes. In that case [main](CppMain.htm) should be:

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "firstdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   FirstDialog w;   w.show();   a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
