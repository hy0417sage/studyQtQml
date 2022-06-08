import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

Window {
    width: 200; height: 200

    QtObject {
        id: attributes
        property string name
        property int size
        property variant attributes

        // 사용자정의 시그널
        signal signalItemCreated(string name)

        Component.onCompleted: {
            signalItemCreated("SignalItem")
        }

        Text { text: attributes.name }

        Rectangle {
            anchors.fill: parent
            color: "red"
            objectName: "myRect"
        }
    }

    AlarmDialog {
        id: alarmDialog
        x: Math.round((parent.width - width) / 2)
        y: Math.round((parent.height - height) / 2)
    }

    ListElement {
        hour: 6
        minute: 0
        day: 2
        month: 8
        year: 2018
        activated: true
        label: "Wake up"
        repeat: true
        daysToRepeat: [
            ListElement { dayOfWeek: 0; repeat: false },
            ListElement { dayOfWeek: 1; repeat: false },
            ListElement { dayOfWeek: 2; repeat: false },
            ListElement { dayOfWeek: 3; repeat: false },
            ListElement { dayOfWeek: 4; repeat: false },
            ListElement { dayOfWeek: 5; repeat: false },
            ListElement { dayOfWeek: 6; repeat: false }
        ]
    }


}
