import QtQuick 2.0

Rectangle{
    property string effectName: ""

    color: "lightGrey"

    radius : 4
    border.width: 1

    width : parent.width

    Text{
        text: effectName
        font.bold : true
        font.capitalization: Font.AllUppercase
        width: parent.width
        height: parent.height
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
