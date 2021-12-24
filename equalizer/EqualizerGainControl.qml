import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import "../effects"

Rectangle{
    id: gainControl
    color: "Grey"
    radius: 4

    property string knobName: ""
    property real gainValue: 0

    readonly property int childSpacing : 7
    readonly property int childObjectSpacing : gainControl.height-4*childSpacing

    signal emitKnobValueFromGainControl(string knobName, real knobValue)

    onGainValueChanged: {
        emitKnobValueFromGainControl(knobName, gainValue)
    }

    ColumnLayout{
        anchors{
           fill: parent
           margins: childSpacing
        }
        spacing: childSpacing

        EffectsHeader{
            effectName: gainControl.knobName
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
                id : gainSlider
                orientation: Qt.Vertical
                anchors.fill: parent
                anchors.margins:childSpacing
                Layout.alignment: Qt.AlignVCenter + Qt.AlignHCenter

                onValueChanged: {
                    gainValue = value;
                }
                stepSize: 0.01
                minimumValue: -0.5
                maximumValue: 0.5

            }
        }

        EqualizerReset{
            Layout.preferredHeight: childObjectSpacing*2/10
            Layout.preferredWidth:  parent.width
            onEmitResetSignal: {
                gainSlider.value = 0 ;
            }
        }
    }
}
