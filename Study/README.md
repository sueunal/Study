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
![스크린샷 2023-02-15 오후 2 56 00](https://user-images.githubusercontent.com/36671600/218944819-b1f28e4b-3f44-4cb9-b80a-8ca80241ea44.png)
- 쌓는다의 의미를 가진다.
- VStack, HStack, ZStack 존재한다.
- VStack : Verital 수직으로 쌓는다
- HStack : Horizontal 수평으로 쌓는다.
- ZStack : Depth 겹쳐서 쌓는다.
-> 주로 색깔이나 이미지 등을 활용하여 사용된다.

