#  myFunction



## 함수
**함수는 실행 가능한 코드를 다른곳으로 분리 시킴으로서 코드간의 격리를 시켜줄 수 있다. 
코드를 분리 시키면 어디서 에러 난 것인지 구분해 줄 수 있다.
또한 똑같은 코드를 재사용하는 것에 있어서 재활용도가 높다.**


## 선언
``
func name (parameter : type )-> return type {
        code
}
``
스위프트의 함수를 사용할 때는 
parameter : tpye으로 매개변수:타입
-> 표시로 return type을 지정해준다.


### 활용 예시
```
    @State var myMind : String = "nothing is my mind"
    @State var isChangedmyMind : Bool = false
    var body: some View {
        VStack{
            Text(myMind)
            Button{
                isChangedmyMind.toggle()
                myMind = getMymind(with: isChangedmyMind)
            }label: {
                Text("Changed my Mind!")
            }
        }
    }
    func getMymind(with isChangedMind:Bool)->String{
        if isChangedMind {
           return "always open"
        }else {
            return "but closed"
        }
    }
```
예시와 같이 함수는 원래의 코드를 따로 분리 시켜 사용할 수 있으며

버튼이 눌릴때 마다 재사용됨으로 재사용을 getMymind 한 줄 코드로 간결하게 할 수 있다.
