#include "Window.h"

#include "ChatWindow.h"
#include "LoginWindow.h"

Window::Window(QObject* parent)
    : QObject{parent},
      mLoginWindow{new LoginWindow(nullptr)},
      mChatWindow{nullptr},
      mTcpSocket{new QTcpSocket(this)} {
    connect(mLoginWindow, &LoginWindow::loginSuccess, this,
            &Window::handleLogin);
}

void Window::handleLogin(const QString& name, const QString& ip, quint16 port) {
    mTcpSocket->connectToHost(ip, port);

    if (mTcpSocket->waitForConnected(3000)) {
        qDebug() << "Connected to Server!";

        // Send username to the server
        QString message = "SET_USERNAME:" + name;
        mTcpSocket->write(message.toUtf8());
        mTcpSocket->flush();

        mLoginWindow->hide();
        mChatWindow = new ChatWindow(name, mTcpSocket);
        mChatWindow->show();
    } else {
        qDebug() << "Failed to connect to Server";
    }
}

void Window::start() { mLoginWindow->show(); }

Window::~Window() {
    delete mLoginWindow;
    delete mChatWindow;
}
