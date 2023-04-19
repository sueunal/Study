//
//  Level2_Divider.swift
//  Study
//
//  Created by sueun kim on 2023/04/19.
//

import SwiftUI

struct Level2_Divider: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Divider()
                .onAppear{
                    print("OnAppear1")
                }
            HStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                Divider()
                    .background(.red)
                    .frame(height: 300)
                    .padding()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            Divider()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Level2_Divider_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Divider()
    }
}
