import QtQuick 2.0

Rectangle{
    id: equalizerResetButton

    property bool reset: false
    signal emitResetSignal()

    color: reset ? "Grey" : "lightGrey"
    radius : 4
    border.width: 1
    width : parent.width

    Text{
        text: "Reset"
        font{
            bold : true
            capitalization: Font.AllUppercase
            pixelSize: 15
        }

        width: parent.width
        height: parent.height
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            emitResetSignal()
        }
        onEntered: reset = true
        onExited: reset = false

    }
}
