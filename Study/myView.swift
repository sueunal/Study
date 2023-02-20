//
//  myView.swift
//  Study
//
//  Created by sueun kim on 2023/02/20.
//

import SwiftUI

struct thisIsView : View {
    var body: some View{
        Button {
           print("Hited!")
        } label: {
            Text("this is view !")
        }

    }
}
struct myView: View {
    var body: some View {
        thisIsView()
    }
}

struct myView_Previews: PreviewProvider {
    static var previews: some View {
        myView()
    }
}
