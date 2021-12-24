import QtQuick 2.0
import QtQuick.Controls 2.3

ToolButton {
    id: effexToolBarButton
    readonly property int iconMargins : 6
    property string imageSource : ""
    property string toolButtonName: ""

    signal toolBarButtonClicked(string toolBarButtonName)

    onClicked: toolBarButtonClicked(toolButtonName)

    onHoveredChanged: {
        if(hovered && toolButtonName){
            toolbuttoninfo.open()
        }else if(!hovered && toolButtonName){
            toolbuttoninfo.close()
        }
    }

    Image {
        source: imageSource
        anchors.fill: parent
        anchors.margins: iconMargins
    }

    Popup{
        id: toolbuttoninfo
        x: effexToolBarButton.width/2
        y: effexToolBarButton.height-iconMargins

        Text{
            text: toolButtonName
            anchors.fill: parent
        }
    }
}


