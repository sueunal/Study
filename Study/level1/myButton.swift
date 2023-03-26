//
//  myButton.swift
//  Study
//
//  Created by sueun kim on 2023/02/14.
//

import SwiftUI

struct myButton: View {
    @State var thingAbout : String = "Around here"
    var body: some View {
        Button {
            thingAbout = "unstoppable"
        } label: {
            Text(thingAbout)
                .padding()
                .background(.green)
                .cornerRadius(13)
        }
    }
}
struct myButton_Previews: PreviewProvider {
    static var previews: some View {
        myButton()
    }
}
