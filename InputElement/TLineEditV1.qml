import QtQuick 2.0

Rectangle {
    width: 96; height: input.height + 8
    color: "lightsteelblue"
    border.color: "gray"
    property alias text: input.text
    property alias input: input

    TextInput{
        id: input
        anchors.fill: parent
        anchors.margins: 4
        focus: true
    }
}

//TextInput을 완전히 외부로 노출 시키고 싶다면 property alias input: input과 같이 element를 내보낼 수 있다.
