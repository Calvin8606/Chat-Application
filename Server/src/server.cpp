#include <QCoreApplication>

#include "DeviceServer.h"

int main(int argc, char *argv[]) {
    QCoreApplication a(argc, argv);
    DeviceServer server;

    return a.exec();
}
