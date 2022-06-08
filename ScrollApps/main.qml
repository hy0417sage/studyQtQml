import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")

    ScrollView {
        anchors.rightMargin: 269
        anchors.fill: parent

        property int num

        GridLayout {
            x: 428
            y: 153
            rows: 3
            columns: 3

            Button {
                id: b1
                text: qsTr("1")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 1
            }

            Button {
                id: b2
                text: qsTr("2")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 2
            }

            Button {
                id: b3
                text: qsTr("3")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 3
            }

            Button {
                id: b4
                text: qsTr("4")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 4
            }

            Button {
                id: b5
                text: qsTr("5")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 5
            }

            Button {
                id: b6
                text: qsTr("6")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 6
            }

            Button {
                id: b7
                text: qsTr("7")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 7
            }

            Button {
                id: b8
                text: qsTr("8")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 8
            }

            Button {
                id: b9
                text: qsTr("9")
                Layout.preferredHeight: 40
                Layout.preferredWidth: 47
                onClicked: number.text += 9
            }


        }

        Text {
            id: number
            x: 95
            y: 181
            width: 239
            height: 39
            text: num
            styleColor: "#77c4c4"
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: element1
            x: 95
            y: 136
            width: 239
            height: 39
            text: qsTr("번호를 입력하세요.")
            font.bold: true
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 15
        }


    }
}
