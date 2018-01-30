# ([C++](Cpp.md)) ![Qwt](PicQwt.png) [Qwt](CppQwt.md)

[Qwt](CppQwt.md) is a cross-platform [library](CppLibrary.md) (built
on the [Qt](CppQt.md) [library](CppLibrary.md)) for visualizing data
in charts and plots.

## [Qwt](CppQwt.md) examples

Development of these examples has moved to [richelbilderbeek's Qwt GitHub](https://github.com/richelbilderbeek/Qwt).

 * [Qwt example 1: basic scatter plot](https://github.com/richelbilderbeek/QwtExample1): [screenshot](CppQwtExample1.png)
 * [Qwt example 2: QwtPlot as QGraphicsItem](https://github.com/richelbilderbeek/QwtExample2): [screenshot](CppQwtExample2Windows.png)/[screenshot](CppQwtExample2Lubuntu.png)
 * [Qwt example 3: alpha beta filter](https://github.com/richelbilderbeek/QwtExample3)
 * [Qwt example 4: alpha beta filter with variable parameters](https://github.com/richelbilderbeek/QwtExample4)
 * [Qwt example 5: alpha filter added](https://github.com/richelbilderbeek/QwtExample5)
 * [Qwt example 6: basic scatter plot with smart pointers](https://github.com/richelbilderbeek/QwtExample6): [screenshot](CppQwtExample6.png)
 * [Qwt example 7: spectrogram from Qwt examples](https://github.com/richelbilderbeek/QwtExample7): [screenshot](CppQwtExample7.png)
 * [Qwt example 8: adapted spectrogram from Qwt examples](https://github.com/richelbilderbeek/QwtExample8): [screenshot](CppQwtExample8.png)
 * [Qwt example 9: histogram](https://github.com/richelbilderbeek/QwtExample9) (FAILS): [screenshot](CppQwtExample9.png)
 * [Qwt example 10: stacked bar chart](https://github.com/richelbilderbeek/QwtExample10): [screenshot](CppQwtExample10.png)
 * [Qwt example 11: plot chi-squared distribution](https://github.com/richelbilderbeek/QwtExample11): [screenshot](CppQwtExample11.png)
 * [Qwt example 12: plot exponential distribution](https://github.com/richelbilderbeek/QwtExample12): [screenshot](CppQwtExample12.png)
 * [TicTacToeLearner](ToolTicTacToeLearner.md)

## ![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent [link errors](CppLinkError.md)):

```
INCLUDEPATH += /usr/include/qwt-qt4 LIBS += -lqwt-qt4
```

## External links

 * [Qwt homepage](http://qwt.sourceforge.net)
