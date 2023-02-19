//
//  mySpacer.swift
//  Study
//
//  Created by sueun kim on 2023/02/19.
//

import SwiftUI

struct mySpacer: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 50,height: 50)
                Text("hello world")
                Spacer()
            }.padding(.horizontal, 50)
            Spacer()
            Button {
                print("heart!")
            } label: {
                Text("click here!")
                    .font(.system(size:50))
                    .foregroundColor(.yellow)
                    .frame(width:250, height: 50)
                    .background(.blue)
            }

        }
    }
}

struct mySpacer_Previews: PreviewProvider {
    static var previews: some View {
        mySpacer()
    }
}
