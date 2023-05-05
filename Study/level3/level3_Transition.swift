//
//  level3_Transition.swift
//  Study
//
//  Created by sueun kim on 2023/05/05.
//

import SwiftUI

struct level3_Transition: View {
    @State var isCardShown : Bool = false
    let mycolor = [
        Color.red,
        Color.green,
        Color.blue
    ]
    var body: some View {
        VStack{
            if isCardShown{
           RoundedRectangle(cornerRadius: 24)
                .frame(height: 300)
                .foregroundColor(.gray)
                .transition(.push(from: .trailing))
            }
            Button {
                isCardShown.toggle()
            } label: {
                Text("show magic")
                    .frame(width: 80,height: 80)
                    .background(LinearGradient(colors: mycolor, startPoint: .bottomTrailing, endPoint: .topLeading))
            }
        }
        .animation(.easeIn, value: isCardShown)
    }
}

struct level3_Transition_Previews: PreviewProvider {
    static var previews: some View {
        level3_Transition()
    }
}
