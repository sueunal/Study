//
//  Level2_ProgressView.swift
//  Study
//
//  Created by sueun kim on 2023/04/22.
//

import SwiftUI

struct Level2_ProgressView: View {
    @State var progress : Double = 5
    var body: some View {
        VStack{
            ProgressView("Loading...",value: progress,total: 100)
            ProgressView()
            Button{
                progress += 5
            }
            label:{
            Text("Click")
            }
        }
    }
}

struct Level2_ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        Level2_ProgressView()
    }
}
