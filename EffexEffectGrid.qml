import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "effects/"

Rectangle{
    id: effectsOmittingRectangle

    property int effectFrameHeight: 400
    property int effectFrameWidth: 250

    color : "lightGrey"
    border.width: 1
    radius : 5

    anchors{
        fill : parent
        topMargin: 71
        bottomMargin: 71
    }

    signal emitKnobChangesForAnEffect(string effectName, string knobName, real knobValue)

    RowLayout{
        id:effectGridView
        anchors{
            fill : parent
            leftMargin: 20
            rightMargin: 20
        }
        EffectsVolume{
            Layout.preferredHeight: effectFrameHeight
            Layout.preferredWidth:  effectFrameWidth/3
            onEmitKnobValueFromVolumeControl: {
                emitKnobChangesForAnEffect(effectName, knobName, knobValue)
            }
        }
        Item{
            Layout.fillWidth: true
        }

        Delay{
            Layout.preferredHeight: effectFrameHeight
            Layout.preferredWidth: effectFrameWidth
            onEmitKnobValueFromEffectFrame:  {
                emitKnobChangesForAnEffect(effectName, knobName, knobValue)
            }
        }

        Distortion{
            Layout.preferredHeight: effectFrameHeight
            Layout.preferredWidth: effectFrameWidth
            onEmitKnobValueFromEffectFrame: {
                emitKnobChangesForAnEffect(effectName, knobName, knobValue)
            }
        }
        Item{
            Layout.fillWidth: true
        }
    }
}
