//
//  myFunction.swift
//  Study
//
//  Created by sueun kim on 2023/01/30.
//

import SwiftUI

struct myFunction: View {
    
    @State var myMind : String = "nothing is my mind"
    @State var isChangedmyMind :Bool = false
    var body: some View {
        VStack{
            Text(myMind)
            Button{
                isChangedmyMind.toggle()
                myMind = getMymind(with: isChangedmyMind)
            }label: {
                Text("Changed my Mind!")
                    .frame(width: 80,height: 80)
                    .background(.black)
                    .cornerRadius(40)
            }
        }
    }
    func getMymind(with isChangedMind:Bool)->String{
        if isChangedMind {
           return "always open"
        }else {
            return "but closed"
        }
    }
}

struct myFunction_Previews: PreviewProvider {
    static var previews: some View {
        myFunction()
    }
}
