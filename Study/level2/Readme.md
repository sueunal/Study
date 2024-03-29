# Level 2  

## Class(클래스)
> 클래스를 알기위해선 구조체의 이해가 필요하다.
> 구조체란 하나의 틀을 만들어 두어 편리하게 특정값을 재사용할 때 사용된다.

```
struct myPerson{
    var name :String
    let age : Int
}
class PersonClass{
    var name : String
    let age :Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
struct Level2_Class: View {
    @State var nickname: String = ""
    var body: some View {
        VStack{
            Text(nickname).foregroundColor(.black)
                .font(.system(size:50))
            
            Button {
                var sueun = myPerson(name: "aaa", age: 23)
                var fakename = sueun
                fakename.name = "sueun"
                nickname = fakename.name
            } label: {
                Text("click!")
                    .font(.system(size:30))
            }

        }
    }
}

```
이 코드에서 보면 당연히 nickname에 fakename을 넣었기 때문에 sueun이 나오겠지만 클래스로 작성하게 된다면 aaa가 나온다.
이유는 클래스는 각각의 객체를 생성하는 것이 아니라 자신의 주소를 주어서 자원을 공유하기 때문이다.

## Closure 이름없는 함수 클로져
### 힘수란

> 어떤 코드의 덩어리
> 함수의 사용은 이름을 적고 무엇을 입력 받아 어떤 작업을 하고 무엇을 반환할 것인지

### 어떻게 활용하는 가?
- 내가 자주쓰는 코드를 다시 사용하기 위해 함수를 작성하여 호출함

### 클로저
- 입력을 받을 수 있고, 반환도 할 수 있다.
- 함수가 할 수 있는 모든 것을 할 수 있다.

### 어떻게 활용하는 가?
> 코드를 넘겨 주긴 넘겨주는데 한번만 쓸 때 사용
> 즉 함수는 재활용이나 코드를 분리 하기 위해 사용되어지지만
> 클로저는 한번만 사용할 것을 굳이 함수로 만들필요가 없기 때문에 클로저를 사용하여 만든다.
> 어떤 행동에 이름을 붙이고 싶지 않을때 클로저를 사용
즉 한번만 호출하고 싶을 때 사용되며 함수에서 할 수 있다면 클로저에서도 할 수 있다.

```
struct Level2_Closer: View {
    let myFirstClousure:()-> Void = {print("hi222")}
    func sayHi()->Void{
        print("Hi")
    }
    var body: some View {
        Button(action: myFirstClousure) {
            Text("Hitme")
                .font(.system(size: 50))
        }
    }
}
```
### Optional 옵셔널
- Optional : 있을 수도 있고 없을 수도 있다 -> 필수가 아니다
- Var name :String 을 사용하면 String만 들어갈 수 있지만  
- String? 으로 선언한다면, String, nil 값이 둘다 들어갈 수 있다.

```
struct Level2_Optional: View {
    let name: String
    let age: Int?
    var body: some View {
        VStack {
            Text (name)
            if let age = age {//age가 nil이면 age에 12를 넣는다.
                Text (age.description)
            }
        }
    }
}
```
- 코드 처럼 age가 있을 수도 있고 없을 수도 있기 때문에 if let age =age 를 사용하여 nil 이면 age에 12 를 넣는 것으로 사용될 수 있다.
### Struct 구조체
- 구조체는 공통 되는 요소들로 묶어 놓은 것들이다.
```
struct UserInfo{
    let name : String
    let age : Int?
    let email : String?
    let job : String?
    let hasPet : Bool
    func sayMyName(with name : String){
        print("sueun")
    }
}
```
> 코드를 보면 UserInfo의 정보에 해당하는 주제로 묶인 변수와 함수 이름을 확인할 수 있다.
> 이처럼 공통 적으로 묶일 수 있는 정보들을 구조화해서 나타낸 것이라고 볼 수 있다.

#### 활용

- userInfo 변수를 선언하여 UserInfo구조체의 타입을 가지도록 한다.
- 변수이름.name,.email 등으로 구조체에 접근하여 사용할 수 있다. 
- 다른 곳에 영향을 주지 않고 독립적으로 작동하며 쉽게 구분할 수 있다는 것이 장점이다.

```
struct Level2_Struct: View {
    let userInfo: UserInfo
    var body: some View {
        VStack{ Text(userInfo.name)
            Text(userInfo.age?.description ?? "100")
            Text(userInfo.email?.description ?? "hi@naver.com")
            Text(userInfo.job?.description ?? "no")
            Text(userInfo.hasPet.description)
            Button {
                userInfo.sayMyName(with: userInfo.name)
            } label: {
                Text("Button")
                    .font(.system(size:50))
            }
        }
    }
}
```

### Optional Binding 옵셔널 바인딩
- 옵셔널 바인딩이란 옵셔널은 있을 수도 있고 없을 수도 있다.
- 하지만 값이 없다면, 앱은 죽어버리기 때문에 바인딩이라는 것을 사용해 앱이 죽지 않도록 방지하는 대책을 마련해야 한다.
```
struct Level2_OptionalBinding: View {
    var name : String? = "sueun"
    var body: some View {
        if let name = name {
            Text(name)
        } else{
            Text("this is nil!")
        }
    }
}

```
> 이렇게 if let name = name을 사용하게 된다면 name의 값이 존재하면 Text에 name의 값이 입력될 것이다.   
> 만약 nil이라면 this is nil이라는 것이 Text에 표시 될 것이다.    
> 이처럼 옵셔널이라는 것은 사용할 때 nil 때문에 앱이 죽어버린다는 걸 생각하고 코드를 작성해야한다.

### OptionalChaining 옵셔널 체이닝
- 옵셔널 체이닝이란 nil일수도 있는 프로퍼티나, 함수, 구조체등에 접근하는 것을 말한다.
- 만약 옵셔널 체이닝을 사용하게 된다면 접근하려하는 값이 nil일수도 있다는 것을 대비하고 체이닝을 사용할 때 바인딩을 필수적으로 해줘야 한다.
```
struct Student{
    var name : String
    var pet : Pet?
}
struct Pet {
    var name : String
    var age :Int
}
struct Level2_OptionalChaining: View {
    let sueun = Student(name : "Sueun", pet:Pet(name:"aaa",age:2))
    var body: some View {
        if let sueunPetName = sueun.pet?.name {
            Text(sueunPetName)
        }
    }
}
```
> 펫이 있을 수도 있고 없을 수도 있는 상황에서 옵셔널 체이닝을 사용하여 해당 구조체를 바인딩 해줘야 사용이 가능하다.

## Properties 프로퍼티
- 저장 프로퍼티 : 우리가 흔히 변수라고 부름
- 연산 프로퍼티 : 값을 설정해서 함수 처럼 사용할 수 있다.

```
struct Level2_Properties: View {
    var koreanMoney : Int = 1000
    var jpanenesMoney : Int{
        get{
            return koreanMoney / 10
        }
    }
    var body: some View {
        VStack{
            Text("\(koreanMoney.description)원 있습니다.")
            Text("\(jpanenesMoney.description)엔 있습니다.")
        }
    }
}
```

## 함수와 메서드?
> 둘다 같은거 아니야? 라고 생각할 수 있지만 사실 다르다.


### 함수  func 키워드를 가짐
- Name
- Parameters
- Return type
- Function body

### 메서드
> 메소드는 enum, struct, class 안에서 사용되는 함수를 메서드라고 부르며,
> 선언된 곳 안에서만 사용이 가능하다.

```
import SwiftUI

func returnSueun0() -> String{ // 함수 선언
    return "Sueun0"
}

struct Level2_FunctinoAndMethode: View {
    func returnSueun1() -> String{ // 메서드 선언
        return "Sueun1"
    }
    var body: some View {
        Text(returnSueun0())
    }
}

struct Level2_FunctinoAndMethode_Previews: PreviewProvider {
    static var previews: some View {
        Level2_FunctinoAndMethode()
        returnSueun0()
        returnSueun1() // not define erorr 발생
    }
}
```

> 코드에서 볼 수 있듯이 구조체 안에서 선언한 메서드는 다른 구조체안에서는 사용이 불가능하고, 함수로 선언되어있는 것은 어떤 구조체든 호출이 가능하다.
 
## enum을 더 잘 활용하는 방법
> enum 을 활용하면 코드를 깔끔하게 작성할 수 있다.
> 비슷한 속성끼리 모아서 enum 타입을 지정해두면 지정된 case외에는
> 어떤 것도 들어갈 수 없다.
`var drink : String = "hello?"`

### enum을 사용하는 이유
Drink 변수에 hello? 문자열이 들어가는 것은 전혀 이상하지 않다.
타입을 String으로 지정해두었기 때문에 모든 String 타입을 들어 갈 수 있다.
하지만 drink와 전혀 관련이 없는 단어가 나오면 개발자에게는 예측 불가한 위협이 존재한다.
> Enum을 활용하여 사용자가 선택할 수 있는 범위를 한정시켜 두어 위협에 대비하여야 한다.
### enum 활용 방법
```
enum Drink{
    case coffee
    case juice
    case soft
}
```
> Drink를 선언하여, coffee, juice, soft  case를 지정해두었다.
> 여기서 3가지만 선언하였지만 커피에는 우유, 카페인, 시럽에 따라 부르는 명칭이 다르다.

```
enum Drink{
    case coffee(hasMilk :Bool)
    case juice
    case soft(color:Color)
    
    var name : String{
        switch self{
        case .coffee(hasMilk: let hasMilk):
            if hasMilk{
                return "Latte"
            }else {
                return "Americano"
            }
        case .juice:
            return "Juice"
        case .soft(color: let drinkColor):
            switch drinkColor{
            case .orange:
                return "환타"
            case .black:
                return "콜라"
            default:
                return "음료"
            }
        }
    }
}
struct Level2_EnumAfter: View {
        let myDrinks : Drink = .soft(color: .orange)
    var body: some View {
        VStack{
            Text(myDrinks.name)
        }
    }
}
```
- Drink를 선언하여 coffee에 우유가 있는지 soft에 color가 어떤색인지를 프로퍼티를 활용하여 코드를 간결하게 작성할 수 있다.
 
## DarkMod 설정

> 사용자가 **라이트, 다크모드를 설정**할 수 있으며 설정후 **색깔이 그에 맞게 변경된다.**
> 기본 설정은 **라이트 모드**이다.

### Assets
- 기본 Light모드로 적용 되지만 사용자가 Dark모드를 설정한다면 그 색상 또한 지정해줄 수 있다.
<img width="150" alt="스크린샷 2023-04-19 오후 3 14 20" src="https://user-images.githubusercontent.com/36671600/232982861-70dc2bb9-a4a6-4011-b19a-a89930dc387a.png">

## Light Mod
<img width="150" alt="스크린샷 2023-04-19 오후 3 15 00" src="https://user-images.githubusercontent.com/36671600/232983185-9b72380e-e6a4-4034-973a-2470e9681e3d.png">

## Dark Mod
<img width="150" alt="스크린샷 2023-04-19 오후 3 15 24" src="https://user-images.githubusercontent.com/36671600/232983219-903ec390-05eb-42be-992f-68db71e04ff8.png">


## Divider 디바이더
> 컨텐츠를 선 나누어 주는 뷰
<img width="250" alt="스크린샷 2023-04-19 오후 3 57 43" src="https://user-images.githubusercontent.com/36671600/232993903-f6ed4664-253f-42e4-9941-57cfd2f521b4.png">
- Zstack, Vstack, Hstack을 이용하여 선으로 구분해줄 수 있다.
- .background를 이용하여 색깔 변경
- .frame을 사용하여 선의 길이를 조정할 수 있다.


## Modal 모달
> 기존화면에서 어떤 다른행도을하도록 유도하는 것이 모달이다.
> 주로 구매 버튼을 누르면 밑에 새로운 화면이 올라오며 로그인을 요구하는 것

### .sheet
- 버튼을 누르면 아래에서 부터 sheet가 올라오며 화면을 덮는다.
- 화면이 완전히 가려지지는 않고 아래로 쓸어 내리면 다시 닫히는 것을 볼 수 있다.
<img width="150" alt="스크린샷 2023-04-19 오후 8 37 54" src="https://user-images.githubusercontent.com/36671600/233067215-5d003511-8110-4a0c-966e-f71c73a4ac25.png">

```swift
struct Level2_Modal: View {
    @State var isShowingModal : Bool = false
    var body: some View {
        VStack{
            Button{
                isShowingModal = true
            }label: {
                Text("Call Modal!")
            }
             .sheet(isPresented: $isShowingModal) {
                        Text("Modal View")
               }
                }
        }
}
```

### .fullScreenCover
<img width="150" alt="스크린샷 2023-04-19 오후 8 54 58" src="https://user-images.githubusercontent.com/36671600/233067140-5a87fbf0-7a13-4430-bff1-095d50abab79.png">

```swift
struct Level2_Modal: View {
    @State var isShowingModal : Bool = false
    var body: some View {
        VStack{
            Button{
                isShowingModal = true
            }label: {
                Text("Call Modal!")
            }
            .fullScreenCover(isPresented: $isShowingModal) {
                ZStack{
                    Color("SuEunColor").ignoresSafeArea(.all)
                    Button{
                        isShowingModal = false
                    }
                label:{
                    Text("Close Full Screen")
                        .onAppear{
                            print("hello!")
                        }
                    }
                }
            }
        }
    }
}
```
- 버튼을 누르면 스크린이 화면을 완전히 덮는다.
- .OnAppear는 화면이 생성 될때 안에있는 print(”hello”)코드를 실행한다.반대로 화면을 제거하는 경우  DisApper로 코드를 실행할 수 있다.

## Alert
- 사용자에게 알림을 주는 컴포넌트
<img width="150" alt="스크린샷 2023-04-19 오후 9 16 52" src="https://user-images.githubusercontent.com/36671600/233078105-f112c0a3-dab9-482f-b90e-6ce7600d3322.png">

### 사용방법
불 타입 바인딩 변수를 만들어서 true가 되면 알림을 생성한다.   
<img width="150" alt="스크린샷 2023-04-19 오후 9 27 35" src="https://user-images.githubusercontent.com/36671600/233078159-fc6602a9-4938-49b4-a40e-2b0782018386.png">
<img width="150" alt="스크린샷 2023-04-19 오후 9 32 47" src="https://user-images.githubusercontent.com/36671600/233078267-98ada01e-d7a6-4f9f-ba20-3fb4a75f5f80.png">   

```
Alert Title! : Alert(title : text,
    message : This is Alert Mesaage no String Only Text Input
    primartButton : .Cencel(),
    secondaryButton : .default(”Enter”)
    )
}
```

## TextField, SecureField

### TextField

- 사용자에게 입력을 받을 수 있게 해준다.
- String 타입의 @State 변수가 필요하다.

주로 아이디나, 비밀번호를 입력받을 때 사용된다.

<img width="250" alt="스크린샷 2023-04-20 오후 7 31 04" src="https://user-images.githubusercontent.com/36671600/233613481-a91cbf87-6750-483c-a2c5-02520574925e.png">

```swift
@State var userID : String = ""
TextField("Enter ID", text: $userID")
```

변수를 바인딩 시켜 텍스트 필드안의 내용을 넣는다.   
<img width="250" alt="스크린샷 2023-04-20 오후 7 37 48" src="https://user-images.githubusercontent.com/36671600/233613515-3c2d301a-a087-4be6-84e7-3fbaf9d7cb77.png">

### SecureField
- 입력값이 다른 사람에게 보여지는 상황에 가려질 필요가 있을 때 사용된다 (주로 비밀번호)
- 사용 방법은 텍스트 필드와 동일하며, 이름만 Secure로 변경된다.

```swift
@State var userPW : String = ""
SecureField("Enter ID", text: $userID")
```


시큐어필드는 비밀번호가 가려지고 텍스트필드는 가져지지 않는다.   
시큐어 필드와 텍스트 필드를 이용해 버튼을 누르면 비밀번호를 보이게 또는 안보이게 설정할 수 있다.

## ProgressView

- 현재 작업상태를 보여주는 뷰이다.
- 무언가를 설치할 때나 어플에서 사용자에게 현재 상태를 알려주기 위해 사용된다.

<img width="200" alt="스크린샷 2023-04-22 오전 3 06 17" src="https://user-images.githubusercontent.com/36671600/233706255-8c49b007-6a8d-41c5-8d9b-305e830002ef.png">


```swift
VStack{
            ProgressView("Loading...",value: progress,total: 100)
            Button{
                progress += 5
            }
            label:{
            Text("Click")
            }
        }
```

프로그래스뷰는 위와 같이 value, total 값이 주어지면 그림과 같이 늘어나는 형태로 보여지고   
만약 저런 옵션들이 없다면 화면에서 로딩걸리는 것과 같은 뷰가 계속 돌아간다.

<img width="200" alt="스크린샷 2023-04-22 오전 3 08 51" src="https://user-images.githubusercontent.com/36671600/233706286-70ab6465-3653-4713-b941-1ee0c2f6f3d5.png">

ProgressView()의 그림

## Label
- 텍스트와 이미지르 묶어주는 컴포넌트
- 주로 Text를 많이 사용하지만 Text는 하나만 표시가 가능하고 Label은 2개 표시 가능하다.

```swift
VStack{
            HStack{
                Image(systemName: "bolt")
                Text("Sueun") // Text만 들어감
            }
            Label("Sueun", systemImage: "bolt") // systemImage도 같이 들어감
        }
```
<img width="200" alt="스크린샷 2023-04-22 오후 5 35 24" src="https://user-images.githubusercontent.com/36671600/233773294-fafe667c-bfd5-49e9-8e0d-33bb0a6855bb.png">

Text로 똑같은걸 만들기 위해선 Image를 따로 사용해야하지만 Label를 사용하면 코드 한줄로 해결이 가능하다.
