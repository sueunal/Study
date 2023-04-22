//
//  Level2_Label.swift
//  Study
//
//  Created by sueun kim on 2023/04/22.
//

import SwiftUI

struct Level2_Label: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "bolt")
                Text("Sueun") // Text만 들어감
            }
            Label("Sueun", systemImage: "bolt") // systemImage도 같이 들어감
        }
    }
}

struct Level2_Label_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Label()
    }
}
