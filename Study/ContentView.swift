//
//  ContentView.swift
//  Study
//
//  Created by sueun kim on 2023/01/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Text("Hello Sueun")
                    .font(.system(size:55))
                    .underline(true, color: .red)
                    .foregroundColor(.green)
                    .bold()
                HStack{
                    Spacer()
                    Text("What's going now..?")
                        .bold()
                        .italic()
                        .foregroundColor(.blue)
                        .background(.yellow)
                        .font(.system(size: 30))
                }
                Spacer()
                Text("This is Text : View ")
                    .monospacedDigit()
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
