//
//  level3_NavigationLink.swift
//  Study
//
//  Created by sueun kim on 2023/05/05.
//

import SwiftUI

struct level3_NavigationLink: View {
    var body: some View {
        NavigationStack{
            Form{
                NavigationLink("0"){
                    ZStack{
                        RadialGradient(gradient: Gradient(colors: [Color.red,Color.yellow, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/).ignoresSafeArea()
                    Text("00000")
                        .navigationTitle("0번째")
                        
                    }
                }
                NavigationLink{
                    Text("destination")
                        .navigationTitle("1번째")
                } label:{
                    Label("1",systemImage: "bolt")
                }
                NavigationLink{
                    Text("destination")
                        .navigationTitle("2번째")
                } label:{
                    Label("2",systemImage: "bolt")
                }
                .navigationTitle("main page")
            }
        }
    }
}

struct level3_NavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        level3_NavigationLink()
    }
}
