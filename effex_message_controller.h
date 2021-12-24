#ifndef EFFEX_MESSAGE_CONTROLLER_H
#define EFFEX_MESSAGE_CONTROLLER_H

#include <QObject>
#include <QVariant>

class effex_message_controller : public QObject{
    Q_OBJECT

public:
    effex_message_controller();

    Q_INVOKABLE void updateEffect(QString id, int parameterType, int value);

};
//Q_DECLARE_METATYPE(effex_message_controller)

#endif // EFFEX_MESSAGE_CONTROLLER_H
