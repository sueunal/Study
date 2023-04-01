//
//  Level2_Training.swift
//  Study
//
//  Created by sueun kim on 2023/04/01.
//

// optional optional bining, chaining, closure, struct

import SwiftUI
struct Friend {
    let name : String
    let pet : MyPet?
}
enum MyPet{
    case cat(String)
    case dog(String)
}
struct Level2_Training: View {
    @State var pet : String = "제 절친의 애완동물은?"
    var pepe : Friend = Friend(name: "pepe", pet:MyPet.dog("coco"))
    var mimi : Friend = Friend(name: "mimi", pet:MyPet.cat("pepe") )
    var body: some View {
        VStack{
               Text(pet)
            Button{
                if let petName = mimi.pet{
                    switch petName{
                    case .dog(let nickName):
                        pet = nickName
                    case .cat(let nickName):
                        pet = nickName
                    }
                }
                else {
                    Text("nothing pet")
                }
            }
        label:{
            Text("Push")
            
        }
        }
    }
}

struct Level2_Training_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Training()
    }
}
