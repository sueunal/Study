//
//  KeypadAppTabView.swift
//  Study
//
//  Created by sueun kim on 2023/03/11.
//

import SwiftUI

struct KeypadAppTabView: View {
    var body: some View {
        TabView {
            Text("즐겨 찾기 뷰")
            .tabItem {
                Image(systemName: "star.fill")
                Text("즐겨 찾기")
                    .tag(1)
            }
            Text("최근 통화 뷰")
            .tabItem {
                Image(systemName: "clock.fill")
                Text("최근 통화")
                    .tag(2)
            }
            Text("연락처 뷰")
            .tabItem {
                Image(systemName: "person.circle")
                Text("연락처")
                    .tag(3)
            }
            KeypadApp()
            .tabItem {
                Image(systemName: "circle.grid.3x3.fill")
                Text("키패드")
                    .tag(4)
            }
            Text("음성 사서함 뷰")
            .tabItem {
                Image(systemName: "recordingtape")
                Text("음성 사서함")
                    .tag(4)
            }
        }
    }
}

struct KeypadAppTabView_Previews: PreviewProvider {
    static var previews: some View {
        KeypadAppTabView()
    }
}
