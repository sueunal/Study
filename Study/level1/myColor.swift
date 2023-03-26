//
//  myColor.swift
//  Study
//
//  Created by sueun kim on 2023/02/19.
//

import SwiftUI

struct myColor: View {
    var body: some View {
        VStack{
            Color(.green)
                .frame(width: 300,height: 300)
                .clipShape(Circle())
                .cornerRadius(60)
            Color("ColorSuha")
                .frame(width: 300,height: 300)
                .clipShape(Circle())
                .cornerRadius(60)
        }
    }
}
struct myColor_Previews: PreviewProvider {
    static var previews: some View {
        myColor()
    }
}
