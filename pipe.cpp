#include "pipe.h"
#include <iostream>

Pipe::Pipe(QObject *parent)
    : QObject{parent}
{
    data_1 = 0;
    data_2 = 0;
}

int Pipe::getdata_1()
{
    return data_1;
}

void Pipe::setData_1(int value)
{
    std::cout << "Data: " << value << std::endl;
    data_1 = value;
    data_1++;

    // emit data_1Changed(); // Block the NOTIFY property calls the READ function when triggered
}

int Pipe::getdata_2()
{
    return data_2;
}

void Pipe::setData_2(int value)
{
    std::cout << "Data: " << value << std::endl;
    data_2 = value;
    data_2++;

    emit data_2Changed(); // the NOTIFY property calls the READ function when triggered
}
