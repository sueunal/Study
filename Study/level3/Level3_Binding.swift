//
//  Level3_Binding.swift
//  Study
//
//  Created by sueun kim on 2023/04/28.
//

import SwiftUI

struct Level3_Binding: View {
    @State var isTurnOn: Bool = false
    @State var myText : String = ""
    var body: some View {
        VStack{
            Toggle(isOn: $isTurnOn) {
                Text("Switch")
            }
            TextField(text: $myText) {
                Text("Test Text Field")
            }
            .background(.gray)
        }
    }
}

struct Level3_Binding_Previews: PreviewProvider {
    static var previews: some View {
        Level3_Binding()
    }
}
