//
//  level3_Gradiant.swift
//  Study
//
//  Created by sueun kim on 2023/05/05.
//

import SwiftUI

struct level3_Gradiant: View {
    @State var isAnimation : Bool = false
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "cloud.rain.fill")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .offset(y:isAnimation ? 0 : -80)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 150), value: isAnimation)
                Button{
                    isAnimation.toggle()
                }label:{
                    Text("Click Me!")
                        .frame(width: 150,height: 50)
                        .foregroundColor(.black)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.green])
                                                    ,startPoint: .topLeading
                                                    , endPoint: .bottomTrailing ))
                        .cornerRadius(45)
                }
            }
        }
    }
}

struct level3_Gradiant_Previews: PreviewProvider {
    static var previews: some View {
        level3_Gradiant()
    }
}
