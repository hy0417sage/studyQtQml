import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    default property double cmm : 0.0
    property double kgg : 0.0
    property double bmi : 0.0

    ColumnLayout {
        x: 14
        y: 10
        anchors.fill: parent

        Text {
            id: element
            text: qsTr("키와 몸무게를 입력하세요.")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 25
            padding: 20
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Text {
                id: element1
                text: qsTr("키")
                font.pixelSize: 20

            }

            TextEdit {
                id: cm
                text: qsTr("")
                Layout.preferredHeight: 20
                Layout.preferredWidth: 80
                font.pixelSize: 20
                color: "blue"
                focus: true

            }

            Text {
                id: element2
                text: qsTr("몸무게")
                font.pixelSize: 20
            }

            TextEdit {
                id: kg
                text: qsTr("")
                Layout.preferredHeight: 20
                Layout.preferredWidth: 80
                font.pixelSize: 20
                color: "blue"
                focus: true
            }
        }

        Button {
            id: button
            text: qsTr("BMI")
            autoRepeat: true
            spacing: 7
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
            width: 640
            height: 50

            onClicked: {
                cmm = parseFloat(cm.text)
                kgg = parseFloat(kg.text)
                bmi = kgg / (cmm * cmm * 0.0001)

                if(bmi >= 30){
                    result.text = "고도비만 입니다."
                }else if(bmi >= 25){
                    result.text = "경도비만 입니다."
                }else if(bmi >= 23){
                    result.text = "과체중 입니다."
                }else if(bmi >= 18.5){
                    result.text = "정상체중 입니다."
                }else{
                    result.text = " 저체중 입니다."
                }
            }

        }

        Text {
            id: result
            x: 164
            y: 250
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            padding: 20
            font.pixelSize: 25

        }
    }
}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
