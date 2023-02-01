//
//  Loop.swift
//  Study
//
//  Created by sueun kim on 2023/01/31.
//

import SwiftUI

struct Loop: View {
    let farmAnimals = ["🦮","🦌","🐿️","🦧","🦚"]
    var body: some View {
        VStack {
        Text("Loop Here!")
        looploop(farmAnimals)
        }
    }
    func looploop(farmAnimals : [String])->String{
            ForEach(farmAnimals, id: \.self ){ animal in
                Text(animal)
            }
        return animal
    }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}
