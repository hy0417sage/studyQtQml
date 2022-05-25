import QtQuick 2.0

Rectangle {
    width: 200
    height: 80
    color: "linen"

    TLineEditV1{
        id: input1
        x: 8; y:8
        width: 96; height: 20
        focus: true
        text: "Text Input1"
        KeyNavigation.tab: input2
    }

    TLineEditV1{
        id: input2
        x: 8; y:36
        width: 96; height: 20
        text: "Text Input2"
        KeyNavigation.tab : input1 //
    }

}
