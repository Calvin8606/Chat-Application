#ifndef DEVICESERVER_H
#define DEVICESERVER_H

#include <QObject>
#include <QTcpServer>
#include <QTcpSocket>

class DeviceServer : public QObject {
    Q_OBJECT

   public:
    DeviceServer(QObject* parent = nullptr, quint16 port = 8080);
    bool isStarted() const;

    ~DeviceServer();

   private slots:
    void onClientConnection();
    void readDataFromSocket();
    void handleClientDisconnect();

   private:
    QTcpServer* mTcpServer;
    bool mIsStart;
    QMap<QTcpSocket*, QString> mUserList;
    void handleUserList();
    QList<QString> mUserMessages;
};

#endif  // DEVICESERVER_H
