#ifndef CHATWINDOW_H
#define CHATWINDOW_H

#include <QByteArray>
#include <QLabel>
#include <QLineEdit>
#include <QPushButton>
#include <QTcpSocket>
#include <QTextEdit>
#include <QWidget>

class ChatWindow : public QWidget {
    Q_OBJECT
   public:
    ChatWindow(const QString& name, QTcpSocket* socket,
               QWidget* parent = nullptr);
    ~ChatWindow();
   private slots:
    void onSend();
    void onReceive();

   signals:
    void sendMessage(const QString& message);

   private:
    QLineEdit* mMessageInput;
    QByteArray* mMessageList;
    QPushButton* mSendButton;
    QTcpSocket* mSocket;
    QString mUserName;
    QTextEdit* mDisplayMessage;
    QTextEdit* mDisplayUsers;
};

#endif  // CHATWINDOW_H
