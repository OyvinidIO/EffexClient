.pragma library

// Enums - do not modify
// command type
var kAdd = 0
var kRemove = 1
var kUpdate = 2

// parameter type
var kNone = 0
var kVolume = 1
var kMute = 2
var kDelayTime = 3
var kDelayGain = 4
var kDistortionGain = 5
var kActivateEffect = 6
var kHigh = 7
var kMid = 8
var kLow = 9

// effect strings
var strDelayEffectName = "Delay"
var strDelayGain = "Delay Gain"
var strDelayTime = "Time[ms]"
var strDistortionEffectName = "Distortion"
var strDistortionGain = "Dist Gain"
var strActivateEffect = "ActivateEffect"
var strVolumeEffectName = "Volume"
var strMasterVolume =  "MasterVolume"
var strEqName = "Equalizer"
var strEqLow = "Low"
var strEqMid = "Mid"
var strEqHigh = "High"

function mapStrToEnum(str){
    switch(str){
    case "None" :
        return kNone;
    case strVolumeEffectName :
        return kVolume;
    case "Mute" :
        return kMute;
    case strDelayTime :
        return kDelayTime;
    case strDelayGain :
        return kDelayGain;
    case strDistortionGain :
        return kDistortionGain;
    case strActivateEffect :
        return kActivateEffect;
    case strEqHigh :
        return kHigh;
    case strEqMid :
        return kMid;
    case strEqLow :
        return kLow;
    default :
        return kNone;
    }
}

