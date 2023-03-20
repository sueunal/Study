//
//  Myswitch.swift
//  Study
//
//  Created by sueun kim on 2023/02/03.
//

import SwiftUI

struct Myswitch: View {
    @State var menu :Menu = .beef
    enum Menu {
        case beef,pork,chicken
    }
    var body: some View {
        switch menu{
        case .beef,.chicken :
            Text("오늘은 소고기")
        case .pork:
            Text("오늘은 돼지고기")
        }
    }
}

struct Myswitch_Previews: PreviewProvider {
    static var previews: some View {
        Myswitch()
    }
}
