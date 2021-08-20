#include "myconfiguration.h"
#include "qaesencryption.h"
MyConfiguration::MyConfiguration(QObject *parent) : QObject(parent)
{

}

QString MyConfiguration::getCtext(QString text)
{
    QByteArray key;
    key.resize(16);
    key[0] = 0x00;
    key[1] = 0x01;
    key[2] = 0x02;
    key[3] = 0x03;
    key[4] = 0x04;
    key[5] = 0x05;
    key[6] = 0x06;
    key[7] = 0x07;
    key[8] = 0x08;
    key[9] = 0x09;
    key[10] = 0x0a;
    key[11] = 0x0b;
    key[12] = 0x0c;
    key[13] = 0x0d;
    key[14] = 0x0e;
    key.data()[15] = 0x0f;

    QAESEncryption encryption(QAESEncryption::AES_128, QAESEncryption::ECB);
    //QString to QByteArray
    QByteArray batext;
    batext = text.toLocal8Bit();

    //encoding
    QByteArray encodedText = encryption.encode(batext, key);

    //QByteArray to QString
    QString ctext = QString::fromLocal8Bit(encodedText);

    return ctext;
}
