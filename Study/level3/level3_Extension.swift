//
//  level3_Extension.swift
//  Study
//
//  Created by sueun kim on 2023/05/12.
//

import SwiftUI
class MyLogin{
    
}

struct level3_Extension: View {
    var body: some View {
        ZStack{
            Color.sueun.ignoresSafeArea()
            VStack{
                Text("This is Sueun Color")
            }
        }
    }
}
extension Color{
    static let sueun = Color("SuEunColor")
}
struct level3_Extension_Previews: PreviewProvider {
    static var previews: some View {
        level3_Extension()
    }
}
