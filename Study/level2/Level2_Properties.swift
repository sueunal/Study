//
//  Level2_Properties.swift
//  Study
//
//  Created by sueun kim on 2023/03/29.
//

import SwiftUI

struct Level2_Properties: View {
    var koreanMoney : Int = 1000
    var jpanenesMoney : Int{
        get{
            return koreanMoney / 10
        }
    }
    var body: some View {
        VStack{
            Text("\(koreanMoney.description)원 있습니다.")
            Text("\(jpanenesMoney.description)엔 있습니다.")
        }
    }
}

struct Level2_Properties_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Properties()
    }
}
