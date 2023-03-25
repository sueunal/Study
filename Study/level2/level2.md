# Level 2  
---


## Class(클래스)

---

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
---

> 어떤 코드의 덩어리
> 함수의 사용은 이름을 적고 무엇을 입력 받아 어떤 작업을 하고 무엇을 반환할 것인지

### 어떻게 활용하는 가?
---

> 내가 자주쓰는 코드를 다시 사용하기 위해 함수를 작성하여 호출함

### 클로저
---

> 입력을 받을 수 있고, 반환도 할 수 있다.
> 함수가 할 수 있는 모든 것을 할 수 있다.

### 어떻게 활용하는 가?
---

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
---

> Optional : 있을 수도 있고 없을 수도 있다 -> 필수가 아니다
> Var name :String 을 사용하면 String만 들어갈 수 있지만  
> String? 으로 선언한다면, String, nil 값이 둘다 들어갈 수 있다.
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
코드 처럼 age가 있을 수도 있고 없을 수도 있기 때문에 if let age =age 를 사용하여
nil 이면 age에 12 를 넣는 것으로 사용될 수 있다.
