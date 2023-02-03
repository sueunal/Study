//
//  Myenum.swift
//  Study
//
//  Created by sueun kim on 2023/02/03.
//

import SwiftUI

struct Myenum: View {
    enum Menu :String {
        case  beef, pork, chicken
    }
    @State var menu : Menu = .beef

    var body: some View {
        if menu == .beef{
                Text("오늘은 소고기")
        }else if menu == .pork {
            Text("오늘은 돼지고기")
        }else if menu == .chicken{
            Text("오늘은 닭고기")
        } else {
            Text("오늘 뭐먹지?")
        }
    }
}

struct Myenum_Previews: PreviewProvider {
    static var previews: some View {
        Myenum()
    }
}
