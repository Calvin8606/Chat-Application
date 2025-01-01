#ifndef WINDOW_H
#define WINDOW_H

#include <QObject>
#include <QTcpSocket>

class LoginWindow;
class ChatWindow;
class Window : public QObject {
    Q_OBJECT
   public:
    Window(QObject* parent = nullptr);
    void connectToDevice(const QString& ip, quint16 port);
    ~Window();
    void start();

   private slots:
    void handleLogin(const QString& name, const QString& ip, quint16 port);

   private:
    LoginWindow* mLoginWindow;
    ChatWindow* mChatWindow;
    QTcpSocket* mTcpSocket;
};

#endif  // WINDOW_H
