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
            Text(looploop(with : farmAnimals))
        }
    }
    func looploop(with farmAnimals : [String])->String{
            ForEach(farmAnimals, id: \.self ){ animal in
                Text(animal)
            }
        return "asdfasdf"
        }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}
