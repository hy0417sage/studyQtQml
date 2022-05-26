import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 480
    height: 480
    title: qsTr("Hello World")

    ListModel{
        id: mymodel
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 480
        height: 50
        color: "#090909"
        Text {
            id: count
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            padding: 10
            color: "#f0efef"
            font.family: "Times New Roman"
            font.bold: true
            text: qsTr("Todo: " + mymodel.count)
            font.capitalization: Font.Capitalize
            font.pixelSize: 20
        }
    }


    Row{
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height

        spacing: 20
        //메모 추가버튼
        Button{
            anchors.verticalCenter: parent.verticalCenter
            text: "+"
            onClicked: {
                dialog.open()
            }
        }

        ListView{
            width: 350
            height: 400
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10
            clip: true // ListView 영역을 벋어난 부분을 자른다.

            model: mymodel

            delegate:
                Rectangle {
                width: parent.width
                height: 50
                Control:{
                    Topinsert
                }

                color: "#00ff0000"

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text : newFolderInput.text
                }

                Button{
                    anchors.right: parent.right
                    anchors.rightMargin: 15
                    anchors.verticalCenter: parent.verticalCenter

                    text: "remove"
                    onClicked: {
                        // 클릭한 아이템을 모델에서 삭제
                        mymodel.remove(index)
                    }
                }
            }
        }
    }

    Dialog{
        id: dialog
        x:(parent.width)/2; y:(parent.height)/2
        implicitWidth: 500;
        implicitHeight: 300;
        modal: true;

        Column {
            anchors.fill: parent
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

        onAccepted: mymodel.append({'number': Math.ceil(Math.random() * 10)})
    }

}
