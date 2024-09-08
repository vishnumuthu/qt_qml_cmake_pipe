#ifndef PIPE_H
#define PIPE_H

#include <QObject>
#include <QQmlEngine>

class Pipe : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    // the NOTIFY property calls the READ function when triggered and the
    // WRITE function send the data from qml to cpp code.
    Q_PROPERTY(int data_1 READ getdata_1 WRITE setData_1 NOTIFY data_1Changed FINAL)
    Q_PROPERTY(int data_2 READ getdata_2 WRITE setData_2 NOTIFY data_2Changed FINAL)

public:
    explicit Pipe(QObject *parent = nullptr);

    int getdata_1();
    void setData_1(int value);

    int getdata_2();
    void setData_2(int value);

signals:
    void data_1Changed();
    void data_2Changed();

private:
    int data_1, data_2;
};

#endif // PIPE_H
