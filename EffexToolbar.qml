import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ToolBar{
    id: effexToolbar

    function handleToolbarButtonClick(buttonAction){
        switch(buttonAction){
        case "grid overview" :
            console.log(buttonAction + " clicked");
            break;
        case "Open" :
            console.log(buttonAction + " clicked");
            break;
        case "Save" :
            console.log(buttonAction + " clicked");
            break;
        case "Save as" :
            console.log(buttonAction + " clicked");
            break;
        case "Clear current configuration" :
            console.log(buttonAction + " clicked");
            break;
        default:
            return;
        }
    }

    RowLayout {
        anchors.fill: parent

        EffexToolbarButton {
            toolButtonName: "Open"
            imageSource: "pics/open.png"
            onToolBarButtonClicked: {
                effexToolbar.handleToolbarButtonClick(toolBarButtonName);
            }
        }
        EffexToolbarButton {
            toolButtonName: "Save"
            imageSource: "pics/save.png"
            onToolBarButtonClicked: {
                effexToolbar.handleToolbarButtonClick(toolBarButtonName);
            }
        }
        EffexToolbarButton {
            toolButtonName: "Save as"
            imageSource: "pics/save-as.png"
            onToolBarButtonClicked: {
                effexToolbar.handleToolbarButtonClick(toolBarButtonName);
            }
        }
        EffexToolbarButton {
            toolButtonName: "Clear current configuration"
            imageSource: "pics/clear-symbol.png"
            onToolBarButtonClicked: {
                effexToolbar.handleToolbarButtonClick(toolBarButtonName);
            }
        }

        // Fill remaining space to push icons next to each other
        Rectangle{
            Layout.fillWidth: parent
        }
        EffexToolbarButton {
            toolButtonName: ""
            imageSource: "pics/grid-view.png"
            onToolBarButtonClicked: {
                effexToolbar.handleToolbarButtonClick("grid overview");
            }
        }
    }
}
