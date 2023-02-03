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

## 열겨형
코딩을 하다가 선택지가 필요할 때 enum을 사용하면 좋다.  
아래 코드를 살펴보자.
```
struct Myenum: View {
    @State var menu : String = "pork"
    var body: some View {
        if menu == "beef"{
                Text("오늘은 소고기")
        }else if menu == "pork" {
            Text("오늘은 돼지고기")
        }else {
            Text("오늘 뭐먹지?")
        }
        
    }
}
``
### 사용하는 이유
#### menu의 자료형은 String이기때문에 어떤 문자열도 올 수 있다.
**즉 sueun, kill 등 menu와 상관없는 문자열이 포함될 수 있다.**  
#### enum을 사용하여 선택지를 주어 다른 문자열이 포함될 수 있는 변수를 차단하는 것이다
### enum 활용
```
    enum Menu :String {
        case  beef, pork, chicken
    }
    @State var menu : Menu = .beef

    var body: some View {
        if menu == .beef{
                Text("오늘은 소고기")
        }else if menu == .pork {
            Text("오늘은 돼지고기")
        }else if menu == .chicken{
            Text("오늘은 닭고기")
        } else {
            Text("오늘 뭐먹지?")
        }
    }
```
처음 코드와 비교하면 enum으로 발생할 수 있는 문자열이 3개로 정해져있고
그 외의 것은 논리적으로 불가능하다.  
else문의 "이걸 먹을 수 있나"는 선택지중 3개가 아닌 것은 나올 수 없기 때문에
이 텍스트가 출력될 수 없다. 3개중 다른 문자열이 나올 수 없기 때문에 코딩을 할 때에 유용하다.

