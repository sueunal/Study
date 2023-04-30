//  Level3_Stepper.swift
//  Study
//
//  Created by sueun kim on 2023/04/30.
//

import SwiftUI

struct Level3_Stepper: View {
    @State var level : Int = 0
    var body: some View {
        VStack{
            Text("My level :\(level)")
            Stepper(value: $level , in: 1...100) {
                Text("Level Up!")
            }
            .background(Color(.red))
        }
    }
}

struct Level3_Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Level3_Stepper()
    }
}
