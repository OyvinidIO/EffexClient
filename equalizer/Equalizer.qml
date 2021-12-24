import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "../effects/"
import "../effex_enums_JS.js" as EffexEnumsJS

Page{

    property string effectName: EffexEnumsJS.strEqName
    property int equalizerFrameHeight: 400
    property int equalizerFrameWidth: 125


    signal emitKnobChangesForAnEffect(string effectName, string knobName, real knobValue)

    onEmitKnobChangesForAnEffect: {
          console.log("Change " + effectName +"-effect: Knob: " + knobName + ": " + knobValue)
    }

    Rectangle{
        id: equalizerOmittingRectangle

        color : "lightGrey"
        border.width: 1
        radius : 5

        anchors{
            fill : parent
            topMargin: 70
            bottomMargin: 70
        }

        RowLayout{
            id:effectGridView
            anchors{
                fill : parent
                leftMargin: 20
                rightMargin: 20
            }
            Item{
                Layout.fillWidth: true
            }

            EqualizerGainControl{
                knobName: EffexEnumsJS.strEqLow
                Layout.preferredHeight: equalizerFrameHeight
                Layout.preferredWidth:  equalizerFrameWidth
                onEmitKnobValueFromGainControl: {
                    emitKnobChangesForAnEffect(effectName, knobName, knobValue)
                }
            }
            EqualizerGainControl{
                knobName: EffexEnumsJS.strEqMid
                Layout.preferredHeight: equalizerFrameHeight
                Layout.preferredWidth:  equalizerFrameWidth
                onEmitKnobValueFromGainControl: {
                    emitKnobChangesForAnEffect(effectName, knobName, knobValue)
                }
            }
            EqualizerGainControl{
                knobName: EffexEnumsJS.strEqHigh
                Layout.preferredHeight: equalizerFrameHeight
                Layout.preferredWidth:  equalizerFrameWidth
                onEmitKnobValueFromGainControl: {
                    emitKnobChangesForAnEffect(effectName, knobName, knobValue)
                }
            }
            Item{
                Layout.fillWidth: true
            }
        }
    }
}
