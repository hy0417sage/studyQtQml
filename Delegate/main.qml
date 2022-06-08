import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import QtWebView 1.1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        x: 290
        y: 210
    }

    ItemDelegate {
        id: itemDelegate
        x: 32
        y: 26
        text: qsTr("Item Delegate")
    }


}
