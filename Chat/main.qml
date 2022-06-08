import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 540
    height: 960
    visible: true

    Page {
        anchors.fill: parent
        header: Label {
            padding: 10
            text: qsTr("Contacts")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }


        ListView {
            id: listView
            anchors.fill: parent
            topMargin: 48
            leftMargin: 48
            bottomMargin: 48
            rightMargin: 48
            spacing: 20
            model: ["Albert Einstein", "Ernest Hemingway", "Hans Gude"]
            delegate: ItemDelegate {
                text: modelData
                width: listView.width - listView.leftMargin - listView.rightMargin
                height: avatar.implicitHeight
                leftPadding: avatar.implicitWidth + 32

                Image {
                    id: avatar
                    source: "qrc:/" + modelData.replace(" ", "_") + ".png"
                }
            }
        }
    }


    header: ToolBar {
         Label {
             text: qsTr("Contacts")
             font.pixelSize: 20
             anchors.centerIn: parent
         }
     }


}
