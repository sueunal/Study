//
//  Level2_TextField.swift
//  Study
//
//  Created by sueun kim on 2023/04/20.
//

import SwiftUI

struct Level2_TextField: View {
    @State var userID : String = ""
    @State var userPW : String = ""
    @State var isShowingPassword : Bool = false
    var body: some View {
        ZStack{
            Color("SuEunColor").ignoresSafeArea()
            VStack(alignment: .leading){
                Text("ID")
                TextField("Enter ID", text: $userID)
                    .textFieldStyle(.roundedBorder)
                    if isShowingPassword{
                        Text("PW")
                        HStack{
                            SecureField("Password", text: $userPW )
                                .textFieldStyle(.roundedBorder)
                        }
                    }else{
                        Text("PW")
                        HStack{
                            TextField("Password", text: $userPW )
                                .textFieldStyle(.roundedBorder)
                        }
                    }
                    Button{
                        isShowingPassword.toggle()
                    }
                    label:{
                    Image(systemName: "eye")
                        .foregroundColor(.black)
                    }
            }
            .padding()
        }
    }
}

struct Level2_TextField_Previews: PreviewProvider {
    static var previews: some View {
        Level2_TextField()
    }
}
