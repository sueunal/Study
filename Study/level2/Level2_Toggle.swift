//
//  Level2_Toggle.swift
//  Study
//
//  Created by sueun kim on 2023/04/20.
//

import SwiftUI

struct Level2_Toggle: View {
    @State var isToggleState : Bool = false
    var body: some View {
        VStack{
            Toggle(isOn: $isToggleState) {
                VStack{
                    Text("hello")
                    Divider()
                    Text("hello")
                }
            }
            if isToggleState{
                Rectangle()
                    .frame(width:200,height: 200)
                    .foregroundColor(isToggleState ? .yellow : .blue)
            }
            else{
                Circle()
                    .frame(width:100,height: 200)
                    .foregroundColor(isToggleState ? .yellow : .blue)
            }
        }
    }
}

struct Level2_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Toggle()
    }
}
