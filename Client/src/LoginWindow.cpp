#include "LoginWindow.h"

#include <QLabel>
#include <QMessageBox>
#include <QVBoxLayout>
#include <QValidator>

LoginWindow::LoginWindow(QWidget* parent) : QWidget{parent} {
    // Set the size and title of the window
    setFixedSize(400, 300);  // Width: 400, Height: 300
    setWindowTitle("Login to Cal-Chat");

    // Create input fields
    QLabel* nameLabel = new QLabel("Name: ", this);
    mNameInput = new QLineEdit(this);
    nameLabel->setBuddy(mNameInput);

    QLabel* ipLabel = new QLabel("IP Address: ", this);
    mIpInput = new QLineEdit(this);
    mIpInput->setPlaceholderText("e.g. 127.0.0.1");
    ipLabel->setBuddy(mIpInput);

    QLabel* portLabel = new QLabel("Port: ", this);
    mPortInput = new QLineEdit(this);
    mPortInput->setValidator(new QIntValidator(0, 65535, this));
    portLabel->setBuddy(mPortInput);

    mConnectButton = new QPushButton("Connect", this);

    // Create Verticle Layout (Top to Bottom)
    QVBoxLayout* layout = new QVBoxLayout(this);
    layout->addWidget(nameLabel);
    layout->addWidget(mNameInput);
    layout->addWidget(ipLabel);
    layout->addWidget(mIpInput);
    layout->addWidget(portLabel);
    layout->addWidget(mPortInput);
    layout->addWidget(mConnectButton);
    setLayout(layout);

    connect(mConnectButton, &QPushButton::clicked, this,
            &LoginWindow::onConnectClick);
}

// Connect button handling
void LoginWindow::onConnectClick() {
    QString name = mNameInput->text();
    QString ip = mIpInput->text();
    quint16 port = mPortInput->text().toUShort();

    if (name.isEmpty() || ip.isEmpty() || port == 0) {
        QMessageBox::warning(this, "Invalid Input",
                             "Please fill in all fields.");
        return;
    }
    emit loginSuccess(name, ip, port);
}

LoginWindow::~LoginWindow() {
    delete mIpInput;
    delete mPortInput;
    delete mConnectButton;
}
