//
//  myModifier.swift
//  Study
//
//  Created by sueun kim on 2023/02/20.
//

import SwiftUI

struct myModifier: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100,height: 100)
            .foregroundColor(.yellow)
            .background(.green)
    }
}

struct myModifier_Previews: PreviewProvider {
    static var previews: some View {
        myModifier()
    }
}
