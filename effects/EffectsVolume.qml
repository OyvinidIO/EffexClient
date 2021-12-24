import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import "../effex_enums_JS.js" as EffexEnumsJS

Rectangle{
    id: volumeControl
    color: "Grey"
    radius: 4

    property string effectName : EffexEnumsJS.strVolumeEffectName
    property string knobName: EffexEnumsJS.strMasterVolume
    property string textActivated :"Mute"
    property string textNotActivated: "Muted"

    property bool muted: false
    property real volumeValue: 0

    readonly property int childSpacing : 7
    readonly property int childObjectSpacing : volumeControl.height-4*childSpacing

    signal emitKnobValueFromVolumeControl(string knobName, real knobValue)

    onVolumeValueChanged: {
        emitKnobValueFromVolumeControl(knobName, volumeValue)
    }

    ColumnLayout{
        anchors{
           fill: parent
           margins: childSpacing
        }
        spacing: childSpacing

        EffectsHeader{
            effectName: volumeControl.effectName
            Layout.preferredHeight: childObjectSpacing*1/10
            Layout.preferredWidth:  parent.width
        }

        Rectangle{
            Layout.preferredHeight: childObjectSpacing*7/10
            Layout.preferredWidth:  parent.width
            radius: 4
            border.width: 1
            color: "LightGrey"

            Slider{
                id : volumeSlider
                orientation: Qt.Vertical
                anchors.fill: parent
                anchors.margins:childSpacing
                Layout.alignment: Qt.AlignVCenter + Qt.AlignHCenter
                onValueChanged: {
                    volumeValue = value;
                }
                opacity: muted ? 1 : 0.5
                stepSize: 0.01
                RotationAnimation{

                }
            }
        }

        EffectsActivate{
            Layout.preferredHeight: childObjectSpacing*2/10
            Layout.preferredWidth:  parent.width
            textWhenActivated : textActivated
            textWhenNotActivated: textNotActivated

            onEmitActivatedStatus: {
                muted = activateEffect;
                emitKnobValueFromVolumeControl(EffexEnumsJS.strActivateEffect, activateEffect);
            }
        }
    }
}
