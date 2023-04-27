//
//  Level3_Shape.swift
//  Study
//
//  Created by sueun kim on 2023/04/27.
//

import SwiftUI

struct Level3_Shape: View {
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .background(.red)
                Rectangle()
                    .clipShape(Circle())
                    .background(.green)
                Capsule()
                    .foregroundColor(.yellow)
                Ellipse()
                    .foregroundColor(.red)
            }
        }
    }
}

struct Level3_Shape_Previews: PreviewProvider {
    static var previews: some View {
        Level3_Shape()
    }
}
