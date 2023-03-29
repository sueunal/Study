//
//  Level2_FunctinoAndMethode.swift
//  Study
//
//  Created by sueun kim on 2023/03/29.
//

import SwiftUI

func returnSueun0() -> String{
    return "Sueun0"
}

struct Level2_FunctinoAndMethode: View {
    func returnSueun1() -> String{
        return "Sueun1"
    }
    var body: some View {
        Text(returnSueun0())
    }
}

struct Level2_FunctinoAndMethode_Previews: PreviewProvider {
    static var previews: some View {
        Level2_FunctinoAndMethode()
    }
}
