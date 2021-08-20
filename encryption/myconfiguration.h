#ifndef MYCONFIGURATION_H
#define MYCONFIGURATION_H

#include <QObject>
#include <QSettings>

class MyConfiguration : public QObject
{
    Q_OBJECT
public:
    explicit MyConfiguration(QObject *parent = nullptr);

    // 使用 Q_INVOKABLE 宏修饰的方法才可以在 QML 中被调用
    Q_INVOKABLE QString getCtext(QString text);

signals:

public slots:
};

#endif // MYCONFIGURATION_H
