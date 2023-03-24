//
//  Level2_Optional.swift
//  Study
//
//  Created by sueun kim on 2023/03/23.
//

import SwiftUI

struct Level2_Optional: View {
    let name: String
    let age: Int?
    var body: some View {
        VStack {
            Text (name)
            if let age = age {//age가 nil이면 age에 12를 넣는다.
                Text (age.description)
            }
        }
    }
}

struct Level2_Optional_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Optional(name:"Sueun",age: 12)
    }
}
