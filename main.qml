import QtQuick 2.10
import QtQuick.Controls 2.3

import "equalizer"

ApplicationWindow {
    visible: true
    width: 800
    height: 800
    title: qsTr("Effex Client - Feel the effect")

    header: EffexToolbar{

    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        EffexEffectMainView{

        }

        Equalizer{

        }

        Label{
            text: "Saved effects"
        }


    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Effects")
        }
        TabButton {
            text: qsTr("Equalizer")
        }
        TabButton {
            text: qsTr("Saved Effects")
        }
    }
}
