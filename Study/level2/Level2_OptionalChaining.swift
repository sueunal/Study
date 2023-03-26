//
//  OptionalChaining.swift
//  Study
//
//  Created by sueun kim on 2023/03/26.
//

import SwiftUI

struct Student{
    var name : String
    var pet : Pet?
}
struct Pet {
    var name : String
    var age :Int
}
struct Level2_OptionalChaining: View {
    let sueun = Student(name : "Sueun", pet:Pet(name:"aaa",age:2))
    var body: some View {
        if let sueunPetName = sueun.pet?.name {
            Text(sueunPetName)
        }
    }
}
struct Level2_OptionalChaining_Previews: PreviewProvider {
    static var previews: some View {
        Level2_OptionalChaining()
    }
}
