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
        VStack{
            ForEach(farmAnimals, id:\.self){ animal in
                Text(animal)
                
            }
            ForEach(0..<5){number in
                Text(farmAnimals[number])
            }
        }
    }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}
