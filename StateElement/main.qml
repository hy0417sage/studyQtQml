import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Item {
        id: root

        state: "stop"

        states:[
            State{
                name: "stop"
                PropertyChanges{
                    target: light1; color:root.red
                }
                PropertyChanges{
                    target: light2; color:root.black
                }
            },
            State{
                name: "go"
                PropertyChanges{
                    target: light1; color:root.black
                }
                PropertyChanges{
                    target: light2; color:root.green
                }
            }
        ]


    }


    Rectangle{
        id: light1
        x: 25; y:15
        width: 100; height: width
        radius: width/2
        color: root.black
        border.color: Qt.lighter(color, 1.1)
    }

    Rectangle{
        id: light2
        x: 25; y:135
        width: 100; height: width
        radius: width/2
        color: root.black
        border.color: Qt.lighter(color, 1.1)

    }

    MouseArea{
        anchors.fill: parent
        onClicked: parent.state = (parent.state === "stop"?"go":"stop")
    }
}
