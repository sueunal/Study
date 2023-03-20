//
//  Level2_Class.swift
//  Study
//
//  Created by sueun kim on 2023/03/17.
//

import SwiftUI

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
                let sueun = PersonClass(name: "aaa", age: 23)
                let fakename = sueun
                fakename.name = "sueun"
                nickname = fakename.name
            } label: {
                Text("click!")
                    .font(.system(size:30))
            }

        }
    }
}

struct Level2_Class_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Class()
    }
}
