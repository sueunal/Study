//
//  selector.swift
//  Study
//
//  Created by sueun kim on 2023/02/17.
//

import SwiftUI

struct selector: View {
    var body: some View {
        VStack{
            HStack{
                Image("river")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(45)
            }
            List{
                Section{
                    Text("Profile")
                    Text("Phone")
                }
                    header: {
                        Text("Profile")
                            .bold()
                            .foregroundColor(.brown)
                            .font(.system(size: 30))
                    }.textCase(nil) // 대소문자 구별 하도록 설정
                }
            }
        }
    }

struct selector_Previews: PreviewProvider {
    static var previews: some View {
        selector()
    }
}
