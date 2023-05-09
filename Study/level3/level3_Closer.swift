//
//  level3_Closer.swift
//  Study
//
//  Created by sueun kim on 2023/05/09.
//

import SwiftUI

struct level3_Closer: View {
    @State var myname : String = ""
    var body: some View {
        VStack{
            Text(myname)
            Button{
                myname = caluclateNumber(3, 4, calcalate: { first, second in
                    return first + second
                })
            }label: {
                Text("Click Me!")
            }
        }
    }
    func ismyname(firstName : String,lastName : String)->String{
        return firstName + lastName
    }
    func caluclateNumber(_ first : Int, _ second:Int, calcalate: (Int,Int)->Int)->String {
        return String(calcalate(first,second))
    }
}

struct level3_Closer_Previews: PreviewProvider {
    static var previews: some View {
        level3_Closer()
    }
}
