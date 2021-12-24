#ifndef EFFEXENUMS_H
#define EFFEXENUMS_H

enum class commandType{
    kAdd = 0,
    kRemove = 1,
    kUpdate = 2
};

enum class parameterType{
    kNone = 0,
    kVolume = 1,
    kMute = 2,
    kDelayTime = 3,
    kDelayGain = 4,
    kDistortionGain = 5,
    kActivateEffect = 6,
    kHigh = 7,
    kMid = 8,
    kLow = 9
};

#endif // EFFEXENUMS_H
