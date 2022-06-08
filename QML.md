# QML
- 애플리케이션의 사용자 인터페이스를 기술하는데 사용되는 선언적 언어이다.
- 사용자 인테페이스는 작은 요소로 나뉘어 element와 결합할 수 있다.
- QML은 이러한 사용자 인터페이스 element모양과 동작을 기술한다.
- 자바스크립트 코드를 통해 단순한 동작 뿐만 아니라 복잡한 로직을 더할 수 있다.
</br>

## QML 문법

### 프로퍼티(Property)
하나의 element에 사용자 속성을 추가할때는 property한정자 뒤에 type, 이름 그리고 선택적으로 초기값을 지정하는 방식으로 이루어 진다.
```qml
//property <type> <name> : <value>
property int times : 24

//속성을 선언하는 또다른 방법은 alias 키워드를 사용하는 것이다.
// type 내에서객체의 속성이나 element id를 root레벨로 내보내기 위한 component를 정의할 때 사용할 수 있음 
property alias anotherTimes: thisLabel.times
```
</br>

### 스크립팅
자바스크립트 함수로 명령을 내리고나 값을 줄 수 있다.
```qml
Keys.onSpacePressed:{
    increment()
}

function increment(){
    spacePresses = spacePresses + 1
}
```
</br>

### 바인딩
- 바인딩과 자바스크립트의 할당의 차이점은 바인딩은 일종의 계약이고 바인딩이 살아있는 동안 그 계약은 유지되는 반면, 자바 스크립트의 할당(=)은 일회성으로 값을 지정하는 것이다.
```qml
Keys.onEscapePressed:{
    label.text = ''
}
```
</br>

## 기본 앨리먼트

### Item
- Item은 모든 visual element의 base element다.
- Geometry
- Layout handling
- Key handling
- Transformation
- Visual
- State definition
</br>

### Rectangle
- Item을 확장해서 영역을 색상으로 채우는 기능을 제공한다.
- border.color와 border.width로 정의되는 테두리도 지원한다.
- radius 속성을 사용해서 모서리를 둥글게 만들 수도 있다.
</br>

### Text
- 텍스트롤 표시하기 위함
- 텍스트는 horizontalAlignment와 verticalAlignment속성을 사용해서 양 끝 혹은 가운데로 정렬할 수 있음
- warpMode 속성을 사용하여 텍스트가 자동으로 줄바꿈 되도록 설정할 수 있다.
</br>

### Image
- image element는 다양한 포맷의 이미지를 화면에 표시할 수 있다.
</br>

### MouseArea
- element들과 상호 작용하기 위해 사용한다.
- 마우스 이벤트를 받을 수 있는 보이지 않는 사각 아이템이다.
- 마우스 영역은 주로 사용자가 시각적인 부분과 상호 작용할 때 명령 내릴 visual item과 함께 사용된다.
</br>

### 컴포넌트
- 하나의 재사용 가능한 element이며 QML은 component를 생성하는 다양한 방법을 제공한다.
</br>

### 아이템 레이아웃
- QML은 anchor를 사용해 아이템을 배치하는 방법을 제공한다.
- Anchoring의 개념은 Item의 기본 속성 중 일부이며 모든 visual element에서 사용할 수 있다.
- anchor는 마치 계약처럼 적동하며 경쟁 관계에 있는 좌표값의 변화보다 우선한다.
- anchor은 상대적인 표현이며 항상 anchor할 대상 element를 필요로 한다.

```qml
//element를 부모 element의 영역만큼 채운다.
anchors.fill : parent

//element의 왼편을 부모의 오른편과 맞춘다.
anchors.left : parent.left

//부모와 좌우 중앙선을 일치시킨다.
anchors.horizontalCenter: parent.horizontalCenter

//부모의 정중앙에 위치시킨다.
anchors.centerIn: perent
```
</br>

## 입력 엘리먼트
### TextInput
- textInput은 사용자로 부터 한 줄의 텍스트를 입력 받을 수 있게 한다.
- 이 element는 validator, inputMask, echoMode와 같은 입력 제약 조건을 지원한다.
</br>

### FocusScope
- 해당 focus scope이 focus를 받았을 때 마지막으로 focus:true인 자식 element가 focus를 갖도록 한다.
- 그래서 focus는 마지막으로 focus를 요청하는 자식 element에게 전달된다.
</br>

### EditText
- text input과 유사하지만 대신 여러줄의 텍스트 편집을 지원한다.
- 텍스트 제한 속성은 없지만 텍스트가 페인팅될 크기(paintedHeight, paintedWidth)에 제한을 받는다.
</br>

### Keys
- 첨부 속성인 keys는 특정 키를 눌렀을 때 코드를 실행할 수 있게 한다.
- 방향키를 눌렀을 때 사각형을 움직이거나 더하기, 빼기 키를 눌렀을 때 엘리먼트의 크기를 조정하는 등의 구현을 할 수 있다.
</br>

## 상태와 전이
- 사용자 인터페이스의 많은 부분을 state로 기술할 수 있다.
- 하나의 state는 일련의 속성 변화를 정의하고, 특정한 조건에 따라 전환될 수 있다.
- 더불어 이러한 state의 전환은 transition을 가질수 있는데 이것은 어떻게 속성들이 애니메이션되며 변할지 혹은 추가적인 동작이 적용되어야 하는지 정의한다.
- 이 때 동작은 어떤 state로 진입할 때 적용될 수도 있다.
</br>

### 상태
- QML에서는 State element를 통해 상태를 정의한다.
- 이 state는 element내에 state 배열의 요소 중 하나여야 한다.
- 하나의 state는 이름을 통해 식별되며, 가장 단순한 형태를 가진 일련의 속성 변경으로 구성된다.
- 기본 state는 element의 초기 속성으로 정의되며 ""(빈 문자열)로 명명된다.
```qml
Item{
    id: root

    states: [
        State {
            name: "go"
            PropertyChanges {target: light1; color: root.red}
            PropertyChanges {target: light2; color: root.black}
        },
        State {
            name: "Stop"
            PropertyChanges {target: light1; color: root.black}
            PropertyChanges {target: light2; color: root.green}
        }
    ]
}
```