//
//  myLIst.swift
//  Study
//
//  Created by sueun kim on 2023/02/16.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name : String
    let imageName : String
}

struct myLIst: View {
    var names : [Person]  = [Person(name:"Sueun",imageName: "bolt"),
                            Person(name: "Jenny", imageName: "cloud"),
                             Person(name: "John", imageName: "tree")
    ]
    var body: some View {
        List{
            Text("Hello")
            Text("Hello")
            Text("Hello")
            Text("Hello")
            Text("Hello")
        }
//        List(names){person in
//            HStack{
//                Image(systemName: person.imageName)
//                Text(person.name)
//            }
//        }
    }
}

struct myLIst_Previews: PreviewProvider {
    static var previews: some View {
        myLIst()
    }
}
