//
//  Level2_Closer.swift
//  Study
//
//  Created by sueun kim on 2023/03/21.
//

import SwiftUI

struct Level2_Closer: View {
    let myFirstClousure:()-> Void = {print("hi222")}
    let mySecondClosure:()-> Void = { print("hello2!!")}
    func sayHi(action:() -> ())->Void{
        print("Hi")
    }
    var body: some View {
        VStack{
            Button(action: myFirstClousure) {
                Text("Hitme")
                    .font(.system(size: 50))
            }
            Button{
                sayHi {
                    print("aa")
                }
            }
        label:{
            Text("text")
                .font(.system(size: 50))
        }
        }
    }
}
struct Level2_Closer_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Closer()
    }
}
