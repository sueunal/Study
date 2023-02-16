//
//  MyScrollView.swift
//  Study
//
//  Created by sueun kim on 2023/02/15.
//

import SwiftUI

struct MyScrollView: View {
    var body: some View {
        ScrollView{
            Text("1")
                .frame(width: 300,height: 500)
                .background(.red)
            Text("2")
                .frame(width: 300,height: 500)
                .background(.blue)
            Text("3")
                .frame(width: 300,height: 500)
                .background(.green)
        }
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView()
    }
}
