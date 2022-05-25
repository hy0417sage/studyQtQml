import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import Qt.labs.folderlistmodel 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Memo")

    signal clicked

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 640
        height: 81
        color: "#090909"

        Text {
            id: element
            x: 299
            y: 26
            width: 42
            color: "#f0efef"
            text: qsTr("Memo")
            font.family: "Times New Roman"
            font.bold: true
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 29
        }

        Dialog{
            id: dialog
            x:(parent.width)/2; y:(parent.height)/2
            implicitWidth: 500;
            implicitHeight: 300;
            modal: true;

            Column {
                anchors.fill: parent
                Text {
                    text: "할일"
                    height: 40
                }
                TextField {
                    id: newFolderInput
                    width: parent.width
                    height: parent.height * 0.8
                    wrapMode: Text.WrapAnywhere
                    focus: true
                    onFocusChanged: console.log("Focus changed " + focus)
                }
            }

            standardButtons: Dialog.Ok | Dialog.Cancel

            onAccepted: element.text = newFolderInput.text
            onRejected: element.text = "Cancel!"
        }

        Button {
            id: button
            x: 572
            y: 18
            width: 48

            text: qsTr("+")
            focusPolicy: Qt.ClickFocus
            font.bold: true
            font.family: "Times New Roman"
            font.pointSize: 19
            background : Rectangle {
                color: "Black"
            }

            onClicked :{
                dialog.open();
            }

        }
    }

    ListView {
        id: listView
        x: 0
        y: 133
        width: 317
        height: 347
        model: ListModel {
            ListElement {
                name: "일기 쓰기"
                colorCode: "grey"
            }


        }

        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                spacing: 10
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
            }
        }
    }

    Text {
        id: element1
        x: 55
        y: 95
        width: 40
        height: 25
        text: qsTr("Start")
        font.family: "Times New Roman"
        font.bold: true
        font.pixelSize: 20
    }

    Text {
        id: element2
        x: 380
        y: 95
        width: 40
        height: 25
        text: qsTr("Finish")
        font.bold: true
        font.pixelSize: 20
        font.family: "Times New Roman"
    }

}
