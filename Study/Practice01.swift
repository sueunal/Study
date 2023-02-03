//
//  Practice01.swift
//  Study
//
//  Created by sueun kim on 2023/02/03.
//

import SwiftUI

struct Practice01: View {
    enum Menu : String{
        case jjazangmun = "짜장면"
        case bogumbab = "볶음밥"
        case dosirak = "도시락"
        case chicken = "치킨"
    }
    @State var menu :String = "오늘 뭐먹지?"
    let menus : [Menu] = [.jjazangmun,.bogumbab,.dosirak,.chicken]
                          
    var body: some View {
        VStack{
            Text(menu)
            Button{
                menu = menus.randomElement()!.rawValue
            }label:{
                Text("눌러요!")
            }
        }
    }
}

struct Practice01_Previews: PreviewProvider {
    static var previews: some View {
        Practice01()
    }
}
