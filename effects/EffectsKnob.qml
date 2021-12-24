import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3


Item{

    property string knobName: ""
    property int knobValueForDispaly: 0

    signal emitKnobValue(real knobValue);

    visible: knobName === "" ? 0 : 1


    ColumnLayout{
        spacing: 2
        anchors.fill: parent
        Rectangle{
            id: numberDisplay
            border.width: 1
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height/4
            Layout.alignment: Qt.AlignVCenter + Qt.AlignHCenter

            TextInput{
                anchors.centerIn: parent
                font.pixelSize: 16
                text: knobValueForDispaly


            }
        }

        Rectangle{
            id: rotatingKnob
            Layout.preferredWidth: parent.width
            Layout.preferredHeight : parent.width
            Layout.alignment: Qt.AlignVCenter + Qt.AlignHCenter
            radius: width*0.5
            border.width: 1

            Dial{
                anchors{
                    fill: parent
                    margins: 3
                    centerIn: parent
                }
                stepSize: 0.1
                onValueChanged: {
                    knobValueForDispaly = value*10;
                    emitKnobValue(value);
                }
            }
        }
        Item{
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height/4
            Layout.alignment: Qt.AlignVCenter + Qt.AlignHCenter
            Text{
                anchors.centerIn: parent
                font.pixelSize: 14
                text:  knobName
            }
        }
    }
}
