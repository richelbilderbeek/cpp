# ([C++](Cpp.md)) [How to respond to the mobile phone's orientation, example 1](CppSymbianRespondToOrientationExample1.md)

[How to respond to the mobile phone's
orientation](CppSymbianRespondToOrientation.md), example 1.

## Technical facts

Application type(s)

    Mobile Mobile application

Operating system(s) or programming environment(s)

    Symbian Symbian
    Ubuntu Ubuntu 10.10 (maverick)

IDE(s):

    Qt Creator Qt Creator 2.0.0

Project type:

    GUI GUI application

C++ standard:

    C++98 C++98

Compiler(s):

    G++ 4.4.5

Libraries used:

    Qt Qt: version 4.7.0 (32 bit)

## Qt project file: QtAccelerometer.pro

```
HEADERS += accelerometer.h \
    athread.h
SOURCES += main.cpp \
    accelerometer.cpp \
    athread.cpp
```

## accelerometer.cpp

```c++
///Code from the Nokia Wiki
#include <QString>
#include <QFile>
#include <QTextStream>
#include <QGridLayout>

#include "accelerometer.h"

Accelerometer::Accelerometer(QWidget *parent)
    : QWidget(parent)
{
    setFont(QFont("Nokia Sans", 50, QFont::Bold));

    QGridLayout *grid = new QGridLayout;

    label1 = new QLabel("X");
    label1->setAlignment(Qt::AlignCenter);
    grid->addWidget(label1, 0, 0);

    label2 = new QLabel("Y");
    label2->setAlignment(Qt::AlignCenter);
    grid->addWidget(label2, 0, 1);

    label3 = new QLabel("Z");
    label3->setAlignment(Qt::AlignCenter);
    grid->addWidget(label3, 0, 2);

    xlabel = new QLabel("NaN");
    xlabel->setAlignment(Qt::AlignCenter);
    grid->addWidget(xlabel, 1, 0);

    ylabel = new QLabel("NaN");
    ylabel->setAlignment(Qt::AlignCenter);
    grid->addWidget(ylabel, 1, 1);

    zlabel = new QLabel("NaN");
    zlabel->setAlignment(Qt::AlignHCenter | Qt::AlignBottom);
    grid->addWidget(zlabel, 1, 2);

    setLayout(grid);

    myThread = new aThread(this);
    connect(myThread, SIGNAL(deviceOrientation(QString, QString, QString)),
            this, SLOT(showData(QString, QString, QString)));
    myThread->start(QThread::NormalPriority);
}

void Accelerometer::showData(QString x, QString y, QString z)
{
    xlabel->setText(x);
    ylabel->setText(y);
    zlabel->setText(z);
}
```

## accelerometer.h

```c++
///Code from the Nokia Wiki
#ifndef ACCELEROMETER_H
#define ACCELEROMETER_H

#include <QWidget>
#include <QLabel>

#include "athread.h"

class Accelerometer : public QWidget
{
    Q_OBJECT

public:
    Accelerometer(QWidget *parent = 0);

public slots:
    void showData(QString x, QString y, QString z);

private:
    QLabel *label1;
    QLabel *label2;
    QLabel *label3;
    QLabel *xlabel;
    QLabel *ylabel;
    QLabel *zlabel;
    aThread *myThread;
};

#endif // ACCELEROMETER_H
```

## athread.cpp

```c++
///Code from the Nokia Wiki
#include <QFile>
#include <QTextStream>
#include <QTimer>
#include <QStringList>

#include "athread.h"

aThread::aThread(QObject *parent)
    : QThread(parent)
{
}

void aThread::run()
{
    QTimer timer;
    connect(&timer, SIGNAL(timeout()), this, SLOT(updateCoords()));
    timer.start(20); // 50 Hz update rate
    exec();
}

void aThread::updateCoords()
{
     QFile file("/sys/class/i2c-adapter/i2c-3/3-001d/coord");
     if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
         return;
     QTextStream in(&file);
     QString data = in.readAll();
     processCoords(data);
}

void aThread::processCoords(QString &data)
{
    QStringList data_splited = data.split(" ");

    x = data_splited[0];
    y = data_splited[1];
    z = data_splited[2];

    emit deviceOrientation(x, y, z);
}
```

## athread.h

```c++
///Code from the Nokia Wiki
#ifndef ATHREAD_H
#define ATHREAD_H

#include <QThread>
#include <QString>

class aThread : public QThread
{
  Q_OBJECT

public:
    aThread(QObject *parent = 0);
    void run();

    QString x;
    QString y;
    QString z;

public slots:
    void updateCoords();
    void processCoords(QString &data);

signals:
    void deviceOrientation(QString x, QString y, QString z);
};

#endif // ATHREAD_H
```

## main.cpp

```c++
///Code from the Nokia Wiki
#include <QApplication>

#include "accelerometer.h"

int main(int argc, char *argv[])
{
  QApplication app(argc, argv);
  Accelerometer acc;
  acc.showFullScreen();
  return app.exec();
}
```
