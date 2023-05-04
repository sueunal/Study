//
//  level3_Animation.swift
//  Study
//
//  Created by sueun kim on 2023/05/04.
//

import SwiftUI

struct level3_Animation: View {
    @State var isanimation : Bool = false
    var body: some View {
        VStack{
            Image(systemName: isanimation ? "cloud" : "cloud.fill")
                .resizable()
                .frame(width: 150,height: 100)
                .offset(y:-100)
                .animation(.linear(duration: 2), value: isanimation)
                .padding()
            HStack{
                Image(systemName: "bolt")
                .offset(y:isanimation ? 0 :-100)
                .animation(.easeInOut, value: isanimation)
                .padding()
                Image(systemName: "bolt")
                .offset(y:isanimation ? 0 :-100)
                .animation(.easeOut, value: isanimation)
                .padding()
                Image(systemName: "bolt")
                .offset(y:isanimation ? 0 :-100)
                .animation(.easeIn, value: isanimation)
                .padding()
                Image(systemName: "bolt")
                .offset(y:isanimation ? 0 :-100)
                .animation(.linear, value: isanimation)
                .padding()
                Image(systemName: "bolt")
                .offset(y:isanimation ? 0 :-100)
                .animation(.easeInOut, value: isanimation)
                .padding()
            }
            
            Button{
                isanimation.toggle()
            }label: {
                Text("Click to Animaiton")
                    .frame(width: 200,height: 50)
                    .background(.gray)
                    .cornerRadius(10)
            }
        }
    }
}

struct level3_Animation_Previews: PreviewProvider {
    static var previews: some View {
        level3_Animation()
    }
}
