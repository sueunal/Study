//
//  myFrame.swift
//  Study
//
//  Created by sueun kim on 2023/02/21.
//

import SwiftUI

struct myFrame: View {
    var body: some View {
        Image(systemName: "bolt")
            .resizable()
            .frame(width: 200,height:300, alignment: .leading)
    }
}

struct myFrame_Previews: PreviewProvider {
    static var previews: some View {
        myFrame()
    }
}
