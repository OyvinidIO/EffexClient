import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../effex_enums_JS.js" as EffexEnumsJS

Rectangle {
    id: effectFrame

    property string effectName : ""
    property string knobName1 : ""
    property string knobName2 : ""

    readonly property int childSpacing : 7
    readonly property int childObjectSpacing : effectFrame.height-4*childSpacing

    signal emitKnobValueFromEffectFrame(string knobName, real knobValue)


    radius: 4
    color: "grey"

    ColumnLayout{
        anchors{
           fill: parent
           margins: childSpacing
        }
        spacing: childSpacing

        EffectsHeader{
            id: effectHeader
            effectName: effectFrame.effectName
            Layout.preferredHeight: childObjectSpacing*1/10
        }

        Rectangle{
            id: effectBody
            Layout.preferredHeight: childObjectSpacing*7/10
            Layout.preferredWidth:  parent.width
            border.width: 1
            color: "lightGrey"
            radius: 4

            RowLayout{
                anchors{
                    fill: parent
                    margins : 5
                }
                spacing: childSpacing

                EffectsKnob{
                    Layout.preferredWidth: parent.width/2-3*5
                    Layout.preferredHeight: parent.height
                    knobName: knobName1

                    onEmitKnobValue: {
                        emitKnobValueFromEffectFrame(knobName, knobValue)
                    }
                }
                EffectsKnob{
                    Layout.preferredWidth: parent.width/2-3*5
                    Layout.preferredHeight: parent.height
                    knobName:  knobName2
                    onEmitKnobValue: {
                        emitKnobValueFromEffectFrame(knobName, knobValue)
                    }
                }
            }
        }

        EffectsActivate{
            id: effectActivate
            Layout.preferredHeight: childObjectSpacing*2/10
            textWhenActivated : "Active"
            textWhenNotActivated: "Bypassed"
            onEmitActivatedStatus: {
                emitKnobValueFromEffectFrame(EffexEnumsJS.strActivateEffect, activateEffect)
            }
        }
    }
}
