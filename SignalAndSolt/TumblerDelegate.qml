import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4

Item {

    Text {
        text: modelData
        color: Tumbler.tumbler.Material.foreground
        font: Tumbler.tumbler.font
        opacity: 1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    RoundButton {
            id: addAlarmButton
            text: "+"
            anchors.bottom: alarmListView.bottom
            anchors.bottomMargin: 8
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: alarmDialog.open()
        }


}
