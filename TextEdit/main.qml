import QtQuick 2.9
import QtQuick.Window 2.2
/*
 Text edit은 tsxt input과 유사하나 여러줄의 텍스트 편집을 지원한다.
 텍스트 제한은 없지만 텍스트가 페인팅 될 크기(paintedHeight, paintedWidth)에 제한을 받는다.
 배경을 꾸밀 수 있고 focus scope을 활용해 focus를 잘 전달하는 component TTextEdit를 만든다.
*/

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        width: 136; height: 120
        color: "linen"

        //TTextEdit 컴포넌트가 이미 제공되었던 것처럼 사용할 수 있다.
        TTextEdit{
            id: input
            x: 8; y: 8
            width: 120; height: 104
            focus: true
            text: "Text Edit"
        }
    }


}
