//
//  level3_ColorHex.swift
//  Study
//
//  Created by sueun kim on 2023/05/04.
//

import SwiftUI

struct level3_ColorHex: View {
    var body: some View {
        VStack{
            Color.red // 지금까지 사용해왔던 방식
            Color("SuEunColor")
            //만약 디자이너가 hex값으로 컬러를 주면 어떻게 적용해야 할까?
            //ex 255,251,12
            Color(0xAABECA) // initializer가 없는데 extension으로 만들어서 사용함
        }
    }
}
extension Color{
    init(_ hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double((hex >> 0) & 0xFF) / 255,
            opacity: alpha
        )
    }
}

struct level3_ColorHex_Previews: PreviewProvider {
    static var previews: some View {
        level3_ColorHex()
    }
}
