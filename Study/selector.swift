//
//  selector.swift
//  Study
//
//  Created by sueun kim on 2023/02/17.
//

import SwiftUI
struct Profile : Identifiable {
    var id = UUID()
    var name : String
    var age : String
    var nickname : String
    var like : String
    var language : String
}

struct selector: View {
    let profileList : [Profile] = [Profile(name: "sueun", age: "24", nickname: "Suha", like: "Swift Coding", language: "Swift")]
    var body: some View {
        VStack{
            HStack{
                Image("river")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(45)
            }
            List(profileList){ profile in
                Section{
                    Text("π§βπ» \(profile.name)\nπ¬ \(profile.language)\nπ­ \(profile.nickname)")
                         }
                    header: {
                        Text("Profile")
                            .bold()
                            .foregroundColor(.brown)
                            .font(.system(size: 30))
                    }.textCase(nil) // λμλ¬Έμ κ΅¬λ³ νλλ‘ μ€μ 
                Section{
                    Text("π comment here ")
                }
                }
            }
        }
    }

struct selector_Previews: PreviewProvider {
    static var previews: some View {
        selector()
    }
}
