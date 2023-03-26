//
//  myState.swift
//  Study
//
//  Created by sueun kim on 2023/02/20.
//

import SwiftUI

struct myState: View {
    @State var name : String = ""
    var body: some View {
        VStack{
            Text("Hello \(name)")
            Button {
                name = "Sueun!"
            } label: {
                Text("Hit me!")
            }
        }

    }
}

struct myState_Previews: PreviewProvider {
    static var previews: some View {
        myState()
    }
}
