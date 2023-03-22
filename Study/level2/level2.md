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

## Closure (클로저)
> 클로저는 우리가 알게 모르게 사용해왔던 것들이다.
> 주로 Button 을 사용하게 되면 Button( action () -> Void, label () -> Void 로 되어있는데 이 것을 클로저 라고 한다.

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



