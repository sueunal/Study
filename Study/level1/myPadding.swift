//
//  myPadding.swift
//  Study
//
//  Created by sueun kim on 2023/02/20.
//

import SwiftUI

struct myPadding: View {
    var body: some View {
        VStack{
            Image(systemName: "bell")
                .resizable()
                .frame(width: 150,height: 150)
                .foregroundColor(.gray)
                .padding(.bottom,100)
                .background(.black)
            
            Image(systemName: "bell")
                .resizable()
                .frame(width: 150,height: 150)
                .foregroundColor(.blue)
                .padding(.leading,100)
                .background(.yellow)
            
            VStack {
                     Text("Text padded by 10 points on each edge.")
                         .padding(10)
                         .border(.gray)
                     Text("Unpadded text for comparison.")
                         .border(.yellow)
                 }
        }
    }
}

struct myPadding_Previews: PreviewProvider {
    static var previews: some View {
        myPadding()
    }
}
