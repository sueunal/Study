//
//  Mystack.swift
//  Study
//
//  Created by sueun kim on 2023/02/15.
//

import SwiftUI

struct Mystack: View {
    var body: some View {
        ZStack{
            Image("river")
                .resizable()
                .frame(width: 340,height: 500)
            VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 200)
                .foregroundColor(.yellow)
                Spacer()
            Image(systemName: "bell")
                    .resizable()
                    .frame(width: 150,height: 140)
                    .foregroundColor(.purple)
            }
        }
    }
}

struct Mystack_Previews: PreviewProvider {
    static var previews: some View {
        Mystack()
    }
}
