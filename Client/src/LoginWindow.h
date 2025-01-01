#ifndef LOGINWINDOW_H
#define LOGINWINDOW_H

#include <QLineEdit>
#include <QPushButton>
#include <QString>

class QLineEdit;
class QPushButton;
class LoginWindow : public QWidget {
    Q_OBJECT

   public:
    LoginWindow(QWidget* parent = nullptr);
    ~LoginWindow();

   signals:
    void loginSuccess(const QString& name, const QString& ip, quint16 port);

   private slots:
    void onConnectClick();

   private:
    QLineEdit* mNameInput;
    QLineEdit* mIpInput;
    QLineEdit* mPortInput;
    QPushButton* mConnectButton;
};

#endif  // LOGINWINDOW_H
