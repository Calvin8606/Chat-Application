#include "ChatWindow.h"

ChatWindow::ChatWindow(const QString& name, QTcpSocket* socket, QWidget* parent)
    : mUserName{name},
      mSocket{socket},
      mMessageInput{new QLineEdit(this)},
      mSendButton{new QPushButton(this)},
      mDisplayMessage{new QTextEdit(this)},
      mDisplayUsers{new QTextEdit(this)},
      QWidget{parent} {
    setFixedSize(900, 720);
    setWindowTitle("Cal-Chat");

    // Create a layout to display the messages top to bottom
    mDisplayMessage->setReadOnly(true);
    mDisplayMessage->move(275, 25);
    mDisplayMessage->setFixedSize(600, 575);

    // Create Message Input
    mMessageInput->setPlaceholderText("Message");
    mMessageInput->move(275, 625);
    mMessageInput->setFixedSize(520, 45);

    // Create Send Button
    mSendButton->setText("Send");
    mSendButton->move(810, 619);
    mSendButton->setFixedSize(65, 57);

    // List Users Connected
    mDisplayUsers->setReadOnly(true);
    mDisplayUsers->move(50, 25);
    mDisplayUsers->setFixedSize(200, 640);

    connect(mSendButton, &QPushButton::clicked, this, &ChatWindow::onSend);
    connect(mSocket, &QTcpSocket::readyRead, this, &ChatWindow::onReceive);
}

void ChatWindow::onSend() {
    QString message = mMessageInput->text();
    QString messageList = "MESSAGE_LIST:" + message;
    if (message.isEmpty()) {
        return;
    }
    emit sendMessage(message);

    // Send data to server
    mSocket->write(messageList.toUtf8());

    // Clear input field after being sent
    mMessageInput->clear();

    // Display message being sent
    mDisplayMessage->append(mUserName + ": " + message);
    qDebug() << "Message Sent: " << message;
}

void ChatWindow::onReceive() {
    QByteArray data = mSocket->readAll();
    QString message = QString::fromUtf8(data);

    // Handle User List
    if (message.startsWith("USERNAME_LIST:")) {
        QString userList = message.mid(14).trimmed();
        QStringList users = userList.split(",");
        mDisplayUsers->clear();
        mDisplayUsers->append(users.join("\n"));
        qDebug() << "Updated user list: " << users;
    }
    // Handle Messages
    if (message.startsWith("MESSAGE_LIST:")) {
        QString chatMessage = message.mid(13).trimmed();
        mDisplayMessage->append(chatMessage);
        qDebug() << "New message received: " << chatMessage;
    }
}

ChatWindow::~ChatWindow() {}
