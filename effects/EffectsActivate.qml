import QtQuick 2.0

Rectangle{
    id: effectActivateButton

    property bool activated: false
    property string textWhenActivated : ""
    property string textWhenNotActivated: ""

    //using real to match knob signal value
    signal emitActivatedStatus(real activateEffect)

    color: activated ? "green" : "lightGrey"
    radius : 4
    border.width: 1
    width : parent.width

    Text{
        text: activated ? textWhenActivated : textWhenNotActivated
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
            activated = !activated;
            if(activated){
                emitActivatedStatus(1)
            }else{
                emitActivatedStatus(0)
            }
        }
    }
}
