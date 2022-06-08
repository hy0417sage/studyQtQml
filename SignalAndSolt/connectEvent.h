#ifndef SIGNALGENERATOR_H
#define SIGNALGENERATOR_H


#include <QQuickView>
#include <QObject>
#include <iostream>
using namespace std;

class ConnectEvent : public QObject//connection을 사용하기 위해 상속 받아야 하는 클래스
{
public:
    Q_OBJECT//솔직히 왜 추가해야하는지는 모르겠지만 추가를 안하면 connection할때 에러 난다(추후에 알아 보도록 하겠다.)

    //그리고 Q_OBJECT 추가한 후 Build->Run qmake를 해주자(중요!!)
public:
    ConnectEvent();
    ~ConnectEvent();

    void cppSignaltoQmlSlot();//cpp에서 시그널을 날리고 qml 에서 받기위해 connection을 해두는 함수

    void setWindow(QQuickWindow* Window);
private:

    QQuickWindow* mMainView;
signals://클래스에서  signal등록 하는 방법
    void cppSignaltestData(QVariant);
public slots://클래스에 slot을 등록 // 추가된 부분
     void cppSlotStringData(QVariant stringData);
     void cppSlotintData(QVariant intData);
};

#endif // CONNECTEVENT_H
