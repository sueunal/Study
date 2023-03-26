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

