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
    @State private var alertToggle : Bool = false
    @State private var DriverToggle : Bool = false
    var body: some View {
        VStack{
            Button{
                print("현재 기사님은 \(myTaxi.getDriver()) 입니다")
                alertToggle.toggle()
            }label: {
                Text("Get Driver!")
            }.alert(isPresented: $alertToggle) {
                Alert(title:Text("현재 기사님은 \(myTaxi.getDriver()) 입니다 "))
            }
            Button("DriverChanged!"){
                myTaxi.ChangeDriver(NewDriver: "Leeo")
                DriverToggle.toggle()
                print("기사님을 변경하였습니다.")
            }.alert(isPresented: $DriverToggle) {
                Alert(title:Text("기사님이 변경되었습니다."),
                      message: Text("변경된 기사님은 \(myTaxi.getDriver())님 입니다.")
                )
            }
        }
    }
}

struct level4_AccessControl_Previews: PreviewProvider {
    static var previews: some View {
        level4_AccessControl()
    }
}
