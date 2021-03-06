# Signal & Slot

#### Qt에서는 이벤트 처리에 있어서 **시그널**과 **슬롯**이라는 매커니즘을 사용한다.
- 시그널이 발생하면 슬롯 이벤트가 발생
- 마우스 클릭시 여러 변화를 줄 수 있기 때문에 하나의 시그널에는 다수의 슬롯이 연결될 수 있음
- TCP/IP통신에서 입력받을 데이터가 있으면 A함수가 실행됨 (SIGNAL : 입력받을 데이터, SLOT : A함수)
- 키보드에서 키를 입력하면 라벨이 움직임 (SIGNAL : 키보드에서 키 입력, SLOT : 라벨움직임)
- 이런식으로 Signal은 이미 만들어진걸 사용할 수도 있고 만들 수도 있음

## 시그널(Signal)
QPushButton에서 mouse click, double click, mouse over등과 같이 정의된 것.
```
    signal:
    void Signals();
```

## 슬롯(Slot)
valueChanged()와 같이 <U>값을 변경하기 위해</U> 제공되는 Virtual 함수
```
    private slots:
    void Slots();
```
## 시그널과 슬롯 연결하기 (connect 함수)
시그널과 슬롯을 한 클래스 내에 사용할때는 this를 사용한다.
```
    connect(this, SIGNAL(), this, SLOT());
```