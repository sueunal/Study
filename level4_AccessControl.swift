//
//  level4_AccessControl.swift
//  Study
//
//  Created by sueun kim on 2023/06/11.
//

import SwiftUI
class Taxi{
    private var Driver : String // 누구나 변경하지 못하게 선언 보여지고 싶지 않을때 사용
    init(Driver:String) {
        self.Driver = Driver
    }
    func ChangeDriver(NewDriver: String){
        self.Driver = NewDriver
    }
    func getDriver() -> String{
        return self.Driver
    }
}
struct level4_AccessControl: View {
    var myTaxi = Taxi(Driver: "Sueun")
    var body: some View {
        VStack{
            Button{
                print("현재 기사님은 \(myTaxi.getDriver()) 입니다 ")
            }label: {
                Text("Get Driver!")
            }
            Button("DriverChange!"){
                myTaxi.ChangeDriver(NewDriver: "Leeo")
                print("기사님을 변경하였습니다.")
            }
        }
    }
}

struct level4_AccessControl_Previews: PreviewProvider {
    static var previews: some View {
        level4_AccessControl()
    }
}
