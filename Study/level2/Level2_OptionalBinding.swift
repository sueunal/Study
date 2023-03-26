//
//  Level2_OptionalBinding.swift
//  Study
//
//  Created by sueun kim on 2023/03/26.
//

import SwiftUI

struct Level2_OptionalBinding: View {
    var name : String? = "sueun"
    var body: some View {
        if let name = name {
            Text(name)
        } else{
            Text("this is nil!")
        }
    }
}

struct Level2_OptionalBinding_Previews: PreviewProvider {
    static var previews: some View {
        Level2_OptionalBinding()
    }
}
