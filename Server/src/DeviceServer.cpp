#include "DeviceServer.h"

DeviceServer::DeviceServer(QObject* parent, quint16 port)
    : QObject{parent}, mTcpServer{new QTcpServer(this)} {
    // Returns whether the server is listening to the connection.
    mIsStart = mTcpServer->listen(QHostAddress::Any, port);
    if (mIsStart) {
        connect(mTcpServer, &QTcpServer::newConnection, this,
                &DeviceServer::onClientConnection);
        qDebug() << "Server Start";

    } else {
        qDebug() << "Server Fail";
    }
}

void DeviceServer::onClientConnection() {
    qDebug() << "A client is connected to the server";
    QTcpSocket* socket = mTcpServer->nextPendingConnection();
    connect(socket, &QTcpSocket::readyRead, this,
            &DeviceServer::readDataFromSocket);
    connect(socket, &QTcpSocket::disconnected, this,
            &DeviceServer::handleClientDisconnect);

    mUserList[socket] = QString();
    // Send the existing message history to the new client
    for (const QString& message : mUserMessages) {
        socket->write("MESSAGE_LIST:" + message.toUtf8() + "\n");
        socket->flush();
    }
}

void DeviceServer::readDataFromSocket() {
    QTcpSocket* socket = qobject_cast<QTcpSocket*>(sender());
    if (!socket) return;

    QByteArray data = socket->readAll();
    QString message = QString::fromUtf8(data);

    if (message.startsWith("SET_USERNAME:")) {
        // Trim the username ex: SET_USERNAMECALVIN -> CALVIN
        QString username = message.mid(13).trimmed();

        // Map username to that socket
        mUserList[socket] = username;

        qDebug() << "Set username for client:" << username;

        handleUserList();
    } else if (message.startsWith("MESSAGE_LIST:")) {
        // Create a full message with the username
        QString newMessage = message.mid(13).trimmed();
        QString fullMessage = mUserList[socket] + ": " + newMessage;

        // Add the message to the history
        mUserMessages.append(fullMessage);

        QByteArray chatData = "MESSAGE_LIST:" + fullMessage.toUtf8() + "\n";

        // Broadcast the data to all other clients
        for (QTcpSocket* otherSocket : mUserList.keys()) {
            if (otherSocket != socket) {
                otherSocket->write(chatData);
            }
        }
    }
}

void DeviceServer::handleClientDisconnect() {
    QTcpSocket* socket = qobject_cast<QTcpSocket*>(sender());
    if (socket) {
        QString userName = mUserList.take(socket);
        socket->deleteLater();
        qDebug() << "Client disconnected." << userName;

        handleUserList();
    }
}

void DeviceServer::handleUserList() {
    QStringList userList = mUserList.values();
    QByteArray data = "USERNAME_LIST:" + userList.join(",").toUtf8() + "\n";

    for (QTcpSocket* socket : mUserList.keys()) {
        socket->write(data);
        socket->flush();
    }

    qDebug() << "Broadcasted user list:" << userList;
}

bool DeviceServer::isStarted() const { return mIsStart; }

DeviceServer::~DeviceServer() {
    for (QTcpSocket* socket : mUserList.keys()) {
        socket->disconnect();
        socket->deleteLater();
    }
    mTcpServer->close();
    delete mTcpServer;
}
