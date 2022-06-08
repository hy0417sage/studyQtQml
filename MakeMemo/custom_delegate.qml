import QtQuick 2.0
import QtQuick.Controls 2.3

Rectangle {
    width: parent.width
    height: 50
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
