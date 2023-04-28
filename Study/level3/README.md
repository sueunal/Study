# Level3 

### Binding 변수
**바인딩 변수는 이름에서 부터 묶다라는 뜻을 가지고있다.**   
**→ Binding 변수는 State 변수에 $를 붙이면 바인딩 변수가 된다.**

### **사용하는 이유**
**하지만 이 상태는 그려질 때 항상 똑같은 상태를 유지하기 때문에 만약 변경된다면 값이 변경되더라도   
처음 값이 유지된다 하지만 Binding 변수를 사용하면 이 변경된 값을 묶어서 유지할 수 있게 만들어준다.**

```swift
@State var isTurnOn : Bool = false
@Stete var myText : String = "" 
var body : some View{
Toogle(isOn : $isTurnOn){
        Text("Switch")
}
TextField("Test", text: $myText) // String type 바인딩 변수
}
```

<img width="600" alt="스크린샷 2023-04-28 오후 4 06 45" src="https://user-images.githubusercontent.com/36671600/235078543-b1308878-09ff-4606-b60a-b7f0b7f4e800.png">

Binding 변수를 사용하여 **값이 변경되어도 상태는 유지가 된다.**

### Slider
**양 옆으로 스와이프 하며 값을 조정할 수 있다   
Slider를 선언하기 위해 바인딩 변수를 필요로 한다.**

![스크린샷 2023-04-28 오후 7.53.55.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/57b0c3ab-3dab-4e83-a018-e6821918b641/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-04-28_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_7.53.55.png)

```swift
@State var sliderval : Float = 100.0
    var body: some View {
        VStack{
            Text(sliderval.description)
            Slider(value: $sliderval)
        }
    }
```

**위의 코드는 간단하게 옮기면 값이 0.1단위로 변하지만 공식문서의 소스를 따라하면 다양하게 사용할 수 있는 것을 확인할 수 있다.**

```swift
        @State var sliderval : Float = 100.0
    @State private var speed = 50.0
    @State private var isEditing = false
    var body: some View {
        VStack{
            Slider(
                   value: $speed, // 초기 설정값에 따라 슬라이더의 위치가 값에 맞게 변경됨
                   in: 0...100, // 0부터 100까지 제한적인 범위
                   step: 10 // 10단위로 증가
               ) {
                   Text("Speed")
               } minimumValueLabel: {
                   Text("0")
               } maximumValueLabel: {
                   Text("100")
               } onEditingChanged: { editing in
                   isEditing = editing
               }
               .tint(.red) // 슬라이드 강조색 변경
               Text("\(speed)")
                   .foregroundColor(isEditing ? .red : .blue)
        }
    }
```

- **value : 초기 값 설정**
- **in : 슬라이더 범위 값 설정 0..100**
- **step : 이동할때마다 1씩 증가할것인지 10씩 증가할것인지**
- **.tint 강조할 색을 설정할 수 있다**
