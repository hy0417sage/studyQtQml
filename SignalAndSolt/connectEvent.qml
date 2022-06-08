import QtQuick 2.0

QtObject {
    // 사용자정의 시그널
        signal signalItemCreated(string name)

        Component.onCompleted: {
            signalItemCreated("SignalItem")
        }
}
