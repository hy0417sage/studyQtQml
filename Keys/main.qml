import QtQuick 2.9
import QtQuick.Window 2.2
/*
첨부 속성인 keys는 특정 키를 눌렀을 때 코드를 실행할 수 있게 한다.
ex) 방향 키를 눌렀을 때 사각형을 움직이거나 더하기, 빼기를 눌렀을 때 엘리먼트의 크기를 조정하는 등의 구현을 할 수 있다.
*/

Window {
    visible: true
    width: 640
    height: 480

    DarkSquare{
        width: 400; height: 200

        GreenSquare{
            id: square
            x:8; y:8
        }
        focus: true
        Keys.onLeftPressed: square.x -= 8
        Keys.onRightPressed: square.x += 8
        Keys.onUpPressed: square.y -= 8
        Keys.onDownPressed: square.y += 8
        Keys.onPressed: {
            switch(event.key){
                case Qt.Key_Plus:
                    square.scale += 0.2
                    break;

                case Qt.Key_Minus:
                    square.scale -= 0.2
                    break;
        }
    }
}
