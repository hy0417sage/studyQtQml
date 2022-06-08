#include "ConnectEvent.h"

ConnectEvent::ConnectEvent()
{
    cout << "ConnectEvent" << endl;
}

ConnectEvent::~ConnectEvent()
{

}


void ConnectEvent::cppSignaltoQmlSlot()
{
    //connect 은 연결을 등록해주는 역활을 한다.
    QObject::connect(this, SIGNAL(cppSignaltestData(QVariant)), mMainView, SLOT(qmlSlotTestData(QVariant)));//cpp 시그널과 qml 슬롯을 연결해주는 connection
    QObject::connect(mMainView, SIGNAL(qmlSignalStringData(QVariant)), this, SLOT(cppSlotStringData(QVariant)));//qml 시그널과 cpp 슬롯을 연결해주는 connection // 새로추가
    QObject::connect(mMainView, SIGNAL(qmlSignalintData(QVariant)), this, SLOT(cppSlotintData(QVariant)));//qml 시그널과 cpp 슬롯을 연결해주는 connection//새로 추가

    emit cppSignaltestData(3);//cpp에서 시그널을 호출하는 부분 매개변수에 3을 넣어서 3이 qml함수에 전달됨
    emit cppSignaltestData(4);
    emit cppSignaltestData(5);
    emit cppSignaltestData("test");
}

void ConnectEvent::setWindow(QQuickWindow* Window)
{
    mMainView = Window;//connection을 해주기 위해 윈도우를 등록

    cppSignaltoQmlSlot();//윈도우 등록과 동시에 connection 등록
}

void ConnectEvent::cppSlotStringData(QVariant stringData)// 새로추가
{
    cout << "cppSlotTestData call" << endl;
    std::string data_str = stringData.toString().toStdString();//QVariant를 std::string으로 변환
    cout << "cppSlotTestData data_str: " << data_str << endl;
}

void ConnectEvent::cppSlotintData(QVariant intData)// 새로추가
{
    cout << "cppSlotintData call" << endl;
    int data = intData.toInt();//QVariant 를 int형으로 변환
    cout << "cppSlotintData data: " << data << endl;
}
