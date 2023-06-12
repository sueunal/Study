//
//  level4_initializer.swift
//  Study
//
//  Created by sueun kim on 2023/06/13.
//

import SwiftUI
class Food{
    init(name :String, price : Int){ //이런것도 이니셜라이져이지만
        self.name = name
        self.price = price
    }
    var name :String
    var price : Int
}
struct MyButtons: View{
    var ButtonColor : Color = .cyan
    var ButtonName : String = "Click"
    init(ButtonColor: Color, ButtonName: String) {
        self.ButtonColor = ButtonColor
        self.ButtonName = ButtonName
    }
    var body : some  View{
        Button {
        } label: {
            Text(ButtonName)
        }.background(ButtonColor)
    }
}
struct level4_initializer: View {
    let lunch = Food(name: "hamberger", price: 10000)
    var body: some View {
        VStack{
            Text(lunch.name)
            Text("\(lunch.price)")
            MyButtons(ButtonColor: .orange, ButtonName: "JustButton")
            //버튼은 한가지만 사용할 수 있는게 아니라 title action, config등
            // 다양하게 사용할 수 있는 것을 볼 수 있는데 이니셜라이져를 사용하여
            //한가지만 사용하는게 아니라 다른 방법으로 사용이 가능한 것이었다.
        }
    }
}

struct level4_initializer_Previews: PreviewProvider {
    static var previews: some View {
        level4_initializer()
    }
}
