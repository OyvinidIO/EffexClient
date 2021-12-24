#ifndef COMMANDMESSAGES_H
#define COMMANDMESSAGES_H

#include <string>
#include "effex_enums.h"

struct commandMessageBase{
    commandMessageBase() = delete;
    commandMessageBase(commandType cmdType, std::string id) :
        cmdType(cmdType), id(id){}
    const commandType cmdType;
    std::string id;
};

struct commandMessageAdd : public commandMessageBase {
    commandMessageAdd() = delete;
    commandMessageAdd(std::string id, int index) :
        commandMessageBase(commandType::kAdd, id),
        index(index){}
    int index;
};
struct commandMessageRemove : public commandMessageBase {
    commandMessageRemove() = delete;
    commandMessageRemove(std::string id) :
        commandMessageBase(commandType::kRemove, id){}
};
struct commandMessageUpdate : public commandMessageBase {
    commandMessageUpdate() = delete;
    commandMessageUpdate(std::string id, parameterType type, float parameterValue) :
        commandMessageBase(commandType::kUpdate, id),
        type(type),
        parameterValue(parameterValue){}
    parameterType type;
    float parameterValue;
};

#endif // COMMANDMESSAGES_H. 
