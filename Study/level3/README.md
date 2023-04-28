# Level3 

### Binding 변수
---
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

![스크린샷 2023-04-28 오후 3.57.30.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fc6fe809-4217-4539-80bb-3385f899cff0/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-04-28_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_3.57.30.png)

Binding 변수를 사용하여 **값이 변경되어도 상태는 유지가 된다.**

