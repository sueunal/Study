## 함수(Function)
**함수는 실행 가능한 코드를 다른곳으로 분리 시킴으로서 코드간의 격리를 시켜줄 수 있다. 
코드를 분리 시키면 어디서 에러 난 것인지 구분해 줄 수 있다.
또한 똑같은 코드를 재사용하는 것에 있어서 재활용도가 높다.**


### 선언
```
func name (parameter : type )-> return type {
        code
}
```
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

## 열겨형(Enum)
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
```
### 사용하는 이유
#### menu의 자료형은 String이기때문에 어떤 문자열도 올 수 있다.
**즉 sueun, kill 등 menu와 상관없는 문자열이 포함될 수 있다.**  
### 사용하는 이유
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
처음 코드와 비교하면 enum으로 발생할 수 있는 문자열이 beef, pork, chicken 3개로 정해져있고
그 외의 것은 논리적으로 불가능하다.  
else문의 "이걸 먹을 수 있나"는 선택지중 3개가 아닌 것은 나올 수 없기 때문에. 
이 텍스트가 출력될 수 없다. 3개중 다른 문자열이 나올 수 없기 때문에 코딩을 할 때에 유용하다.
## 스위치(Switch)
```
    @State var menu :Menu = .beef
    enum Menu {
        case beef,pork,chicken
    }
    var body: some View {
        switch menu{
        case .beef,.chicken :
            Text("오늘은 소고기")
        case .pork:
            Text("오늘은 돼지고기")
        default:
            Text("이 것은 못 만들어요")  // 절대 실행되지 않는 코드
        }
    }
```
우선 enum으로 3가지 케이스를 작성한다.  
switch 문으로 발상할 케이스 별로 묶어 실행할 코드를 작성해주면 끝이난다.  

if문 충분히 switch로 하는 것처럼 작성할 수 있다.   
**하지만, 코드의 간결함과 포함 되어지는 케이스가 증가한다면 케이스를 누락하는 경우도 있다**.  
**때문에.. switch로 작성해 케이스가 누락되지 않도록 작성하는 것이 좋다**. 

## Text("hello world")
#### swiftUI view에서 주로 화면에 텍스트를 표시해주는 역할을 한다.
<img width="150" alt="스크린샷 2023-02-14 오후 9 41 20" src="https://user-images.githubusercontent.com/36671600/218762987-af79830c-86dc-4000-bdeb-e112bb2cd27c.png">

```
struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Text("Hello Sueun")
                    .font(.system(size:55))
                    .underline(true, color: .red)
                    .foregroundColor(.green)
                    .bold()
                HStack{
                    Spacer()
                    Text("What's going now..?")
                        .bold()
                        .italic()
                        .foregroundColor(.blue)
                        .background(.yellow)
                        .font(.system(size: 30))
                }
                Spacer()
                Text("This is Text : View ")
                    .monospacedDigit()
                    .bold()
                    .font(.title)
            }
        }
    }
}
```
Text("hello world!")
입력하면 화면에 hello world가 나타나게 되고, Text에 맞는 modifier를 지정해주면   
- bold, italic, font 등 다양한 스타일을 지정할 수 있다.  
## Button
- 누르면 어떤 특정한 동작을 하는 컴포넌트이다.   
- cmd + shift + L 을 누르면 여러가지 컴포넌트를 확인할 수 있다.   
<img width="150" alt="스크린샷 2023-02-15 오전 12 09 47" src="https://user-images.githubusercontent.com/36671600/218778185-d1d9f823-19c5-4041-af5c-f427a1947417.png">

```
struct myButton: View {
    @State var thingAbout : String = "Around here"
    var body: some View {
        Button {
            thingAbout = "unstoppable"
        } label: {
            Text(thingAbout)
                .padding()
                .background(.green)
                .cornerRadius(13)
        }
    }
}
```

Button 안에 있는 코드는 버튼을 눌렀을 때 실행 되는 코드 이다.   
- label: 내부의 코드는 직접적으로 버튼이 시각적으로 나타나는 부분이다.   
- Around here 이라는 버튼을 누르면 unstoppable 이라는 메시지로 변경된다.   
- padding, background, conrnerRadius 등을 활용하여 버튼을 꾸밀 수있다. 

## Image
SwiftUI 에서 이미지를 추가하는 방법은 간단하다.
Assets에 이미지를 추가한 후 Image("이미지이름")을 적어주면 바로 추가 된다.   
<img width="150" alt="스크린샷 2023-02-15 오전 1 23 46" src="https://user-images.githubusercontent.com/36671600/218797084-f19af236-2a51-45da-bde2-d11bb891ce70.png">
```
struct myimage: View {
    var body: some View {
        HStack{
            Image("river")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200,height: 200)
            .clipped()
            .border(.black,width:2)
            
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 30, height: 30)
        }
    }
}
```
이미지를 추가 하면 크기가 맞지 않아 다시 조절해주어야 할 필요가 있다.   
- frame()을 사용하여 width, heigth를 조절하여,
- resizable()로 이미지를 frame 크기에 맞게 넣어준다.   
#### 내가 추가한 이미지가 아닌 아이콘 처럼 애플에서 제공되어지는 것들이 있는데.  
**SF symbols을 사용하면 Image(systemName: "이미지 이름")으로 제공 되어지는 아이콘을 사용할 수 있다.**

## Stack
<img width="150" alt="stack" src="https://user-images.githubusercontent.com/36671600/218945454-7f9dea1b-91e4-4043-8ec4-6b90d49ea3f1.png">

- 쌓는다의 의미를 가진다.
- VStack, HStack, ZStack 존재한다.
- VStack : Verital 수직으로 쌓는다
- HStack : Horizontal 수평으로 쌓는다.
- ZStack : Depth 겹쳐서 쌓는다.

```
struct Mystack: View {
    var body: some View {
        ZStack{
            Image("river")
                .resizable()
                .frame(width: 340,height: 500)
            VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 200)
                .foregroundColor(.yellow)
                Spacer()
            Image(systemName: "bell")
                    .resizable()
                    .frame(width: 150,height: 140)
                    .foregroundColor(.purple)
            }
        }
    }
}
```
우선 ZStack으로 이미지를 깔아두고 VStack으로 수평으로 사람,종을 쌓아서 만들었다.   
ZStack을 Text()를 나열해서 만들게 된다면 Text가 모두 겹치게 되는데 주로 Color, Image를 밑에 깔아두고 사용한다.   

## ScrollView
- VStack, HStack 처럼 쌓을 때 화면을 벗어나게 된다면 제대로 보이지 않는 경우가 발생한다.   
- 일반적으로 자동으로 보여지게 되는 것이 정상이라고 생각할 순 있지만 ScrollView를 생성하여 View를 넣어주어야만 스크롤을 이용하여 화면을 볼 수 있다.   
<img width="150" alt="Vstack" src="https://user-images.githubusercontent.com/36671600/219335813-cde20d9c-2fe5-46ee-b7be-a5bb7cae0806.png">
스크롤뷰가 없는 상태에서 쌓았을 경우 화면 밖의 요소들은 보이지 않는다.
<img width="150" alt="스크린샷 2023-02-16 오후 7 06 32" src="https://user-images.githubusercontent.com/36671600/219335445-ce8931c7-aa8a-4c30-bcaf-4140f44a724b.png">
스클롤뷰를 추가하면 옆에 스크롤바가 생기며 위아래로 이동하며 범위를 벗어난 것들을 볼 수 있다.

```
struct MyScrollView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("1")
                    .frame(width: 300,height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300,height: 500)
                    .background(.blue)
                Text("3")
                    .frame(width: 300,height: 500)
                    .background(.green)
            }
            ScrollView(.horizontal){
                HStack{
                    Text("4")
                        .frame(width: 300,height: 500)
                        .background(.purple)
                    Text("5")
                        .frame(width: 300,height: 500)
                        .background(.green)
                }
            }
        }
    }
}
```
**ScrollView 를 사용할 때 기본적으로 수직으로 설정되어 있는데 .horizontal 을 추가하면 수평으로 설정 가능하다.**
## List
- 선을 그어 구분지어 주는 컴포넌트이다.
- 아주 간단하게 생성할 수 있다.

![스크린샷 2023-02-16 오후 9 54 05](https://user-images.githubusercontent.com/36671600/219370727-b25b1144-c838-4079-a59d-34d052389dd8.png)

```
List{
        Text("Hello")
        Text("Hello")
        Text("Hello")
        Text("Hello")
}
```
- 간단한 코드 몇줄로 리스트가 완성된다.
- 리스트는 이렇게 정적으로 사용하게 된다면 이 코드에 변경사항이 생겼을 경우 매번 빌드를 해야 한다.
- 정적으로 리스트를 사용하기 보다는 동적으로 리스트를 추가,삭제, 변경하는 작업을 코드를 빌드하지 않아도 앱 안에서 동적으로 사용될 수 있어야 한다.

```
let names : [String] = ["sueun","olivia","john"]
var body : some view {
    List(names,\.self){ name in
        Text(name)
    }
}
```
**names를 배열 형태로 만들고 names의 크기 만큼 List를 생성해주면   
만약 추가를 해주어야 하는 상황이면 배열의 인덱스만 추가해주면 된다.**

![스크린샷 2023-02-16 오후 10 55 27](https://user-images.githubusercontent.com/36671600/219384046-9904dd7e-a7e1-4a1a-ab69-abeb91d7619c.png)
```
struct Person: Identifiable {
    var id = UUID()
    let name : String
    let imageName : String
}
struct myLIst: View {
    var names : [Person]  = [Person(name:"Sueun",imageName: "bolt"),
                             Person(name: "Jenny", imageName: "cloud"),
                             Person(name: "John", imageName: "tree")
    ]
    var body: some View{
        List(names){person in
            HStack{
                Image(systemName: person.imageName)
                Text(person.name)
            }
        }
    }
}
``` 
## Spacer
- 공간을 만들어주는 레이아웃이다
- HStack, VStack 경우 쌓을 때 사이에 공간을 만들어주는 역할을 한다.
<img width="150" alt="스크린샷 2023-02-19 오후 7 54 25" src="https://user-images.githubusercontent.com/36671600/219943634-febe61c1-ca35-4f52-9671-6ffcb84d9b20.png">

```
struct mySpacer: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 50,height: 50)
                Text("hello world")
                Spacer()
            }.padding(.horizontal, 50)
            Button {
                print("heart!")
            } label: {
                Text("click here!")
                    .font(.system(size:50))
                    .foregroundColor(.yellow)
                    .frame(width:250, height: 50)
                    .background(.blue)
            }

        }
    }
}
```
- 화면을 보면 이미지와 버튼 사이에 공간이 존재하는 것을 볼 수 있는데, Spacer를 사용하여 공간을 삽입했다.
- Spacear로 공간을 삽입하고 세부적인 조정은 padding을 주어 공간을 활용한다.
## Color
- 색을 표현해주는 뷰이다. 색을 깔아서 사용할 수도있고, 텍스트의 색깔, 배경색깔 등을 설정하여 사용한다.
- Assets 에 자신이 설정한 색깔을 미리 지정해 Color("name") 이렇게도 사용할 수 있다.

<img width="150" alt="스크린샷 2023-02-19 오후 8 31 14" src="https://user-images.githubusercontent.com/36671600/219945240-e450d054-3ab1-4b85-9983-f219e3b075da.png">

```
struct myColor: View {
    var body: some View {
        VStack{
            Color(.green)
                .frame(width: 300,height: 300)
                .clipShape(Circle())
                .cornerRadius(60)
                
            Color("ColorSuha")
                .frame(width: 300,height: 300)
                .clipShape(Circle())
                .cornerRadius(60)
        }
    }
}
```
- Color는 주로 배경에 사용되거나 원을 만들어 활용할 수도 있다.
- ignoreSafeArea는 시간이 표시되거나, 홈 버튼과 관련되어 사용되어지는 곳을 SafeArea라고 한다.
- igrnore를 사용하면 해당 공간을 덮어서 사용할 수 있는데, [.top,.bottom]으로 지정하여 위 아래를 지정할 수 있다.

## View 
- 사용자 인터페이스의 일부를 나타내는 유형이며 보기를 구성할 수 있다.
- var body : some view안에 print를 넣으면 뷰를 만족하지 않아서 에러가 나타나게 된다.
뷰 라는 것은 Button,Text, Section 등 cmd + shift + L을 누르면 나타나는 것들이 뷰를 만족한다고 할 수 있다.

```
struct thisIsView : View {
    var body: some View{
        Button {
           print("Hited!")
        } label: {
            Text("this is view !")
        }

    }
}
struct myView: View {
    var body: some View {
        thisIsView()
    }
}
```
- myVeiw에서 thistisView를 호출하여 Text("this is view !")가 표시된다.
- 이 코드를 활용할 수 있는 방법은 다른 파일에 뷰를 생성해두고 호출하면 함수처럼 분리해서 사용할 수 있다.
## @State 
- @State는 이름 처럼 상태를 나타내는 변수이다.
- 즉 SwiftUI에서 UI를 그리기 위해서는 @State변수를 사용해서 다시 그려야한다.
- 만약 @State 변수를 사용하지 않으면 해당 변수는 변할 수 없다고 에러가 나오며 주로 구조체 안에 있는 것들은 바꾸기가 힘들다.

<img width="150" alt="스크린샷 2023-02-20 오후 3 49 10" src="https://user-images.githubusercontent.com/36671600/220033870-eb5894be-5832-426c-a40b-0dd201d4d2fe.png">

```
struct myState: View {
    @State var name : String = ""
    var body: some View {
        VStack{
            Text("Hello \(name)")
            Button {
                name = "Sueun!"
            } label: {
                Text("Hit me!")
            }
        }

    }
}
```
- 버튼을 누르면 Hello 내용이 Hello Sueun으로 바뀌는 동작을한다.
- 간단하게 바뀌는 것 처럼 보이지만 SwiftUI는 UI를 그리기 위해서는 @State 변수를 사용하여 다시 그려주어야 한다.


## modifier
- .(dot)를 찍으면 나타나는 것들이다.  사용할 때 그냥 옵션이라고만 생각했지만.. 자세히 들여다 보니 
  <img width="150" alt="스크린샷 2023-02-20 오후 4 08 10" src="https://user-images.githubusercontent.com/36671600/220036707-ea9d5e5e-3880-433b-af98-5a63bcacd14d.png"> 
  
```

Image()
    .resizeable()
    .aspectRatio(contentMode: .fit)
```
이 코드는 이미지를 그리고 resizeable() 이라는 modifier로 이미지를 resize로 다시 그려서 화면에 보여주는 것 이었다.
옵션을 하나하나 추가한 것이 아닌 이미지를 만들어서 뷰를 만들고, 뷰를 만들고 한 것이다.

```
struct myModifier: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100,height: 100)
            .foregroundColor(.yellow)
            .background(.green)
    }
}
```

