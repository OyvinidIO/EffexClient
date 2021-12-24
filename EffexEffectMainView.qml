import QtQuick 2.0
import QtQuick.Controls 2.0

import "effex_enums_JS.js" as EffexEnumsJS

Page{

    StackView{
        id: effexEffectMainView
        anchors.fill: parent

        initialItem:
            EffexEffectGrid{

            onEmitKnobChangesForAnEffect: {
                console.log("Change " + effectName +"-effect: Knob: " + knobName + ": " + knobValue)

                msgCtrl.updateEffect(effectName, EffexEnumsJS.mapStrToEnum(knobName), knobValue)
            }
        }

        //    EffexEffectGridOverview{}
    }
}
