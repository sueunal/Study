//
//  Level2_NavigationStack.swift
//  Study
//
//  Created by sueun kim on 2023/04/22.
//

import SwiftUI

struct Level2_NavigationStack: View {
    var body: some View {
        VStack{
            NavigationStack {
                NavigationLink {
                /*@START_MENU_TOKEN@*/Text("Content")/*@END_MENU_TOKEN@*/
                } label: {
                    ZStack{
                        Color.yellow
                        Text("move")
                    }
                }.navigationTitle("helo")
            }
        }
    }
}

struct Level2_NavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        Level2_NavigationStack()
    }
}
