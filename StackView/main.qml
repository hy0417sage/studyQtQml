import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    header: ToolBar{


    }

    Drawer{


    }

    StackView{
        id: stackView
        anchors.fill: parent
        initialItem: Home{}
    }
}
