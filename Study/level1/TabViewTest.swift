//
//  TabView.swift
//  Study
//
//  Created by sueun kim on 2023/02/28.
//

import SwiftUI

struct TabViewTest: View {
    var body: some View {
        TabView{
            Text("1 square ")
                .tabItem {
                    Image(systemName: "1.square")
                }
            Text("2.square")
                .tabItem {
                    Image(systemName: "2.square")
                }
            Text("3.square")
                .tabItem {
                    Image(systemName: "3.square")
                }
            Text("4.alt")
                .tabItem {
                    Image(systemName: "4.alt.square")
                }
        }
    }
}

struct TabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTest()
    }
}
