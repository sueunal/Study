//
//  MyStruct.swift
//  Study
//
//  Created by sueun kim on 2023/03/26.
//

import SwiftUI
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
struct Level2_Struct: View {
    let userInfo: UserInfo
    var body: some View {
        VStack{
            Text(userInfo.name)
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

struct Level2_Struct_Previews: PreviewProvider {
    static var previews: some View {
        let olivia = UserInfo(name: "Olivia", age: 20, email: "doms@kakao.com", job:"programmer" , hasPet: true)
        Level2_Struct(userInfo: olivia)
    }
}
