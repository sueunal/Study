//
//  level2_Alert.swift
//  Study
//
//  Created by sueun kim on 2023/04/19.
//

import SwiftUI

struct level2_Alert: View {
    @State var isShowingAlert = false
    var body: some View {
        VStack{
            Button{
               isShowingAlert = true
            }label:{
                Text("click me!!")
            }
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("Alert Title!"),
                      message: Text("This is Alert Message not String Only Text Input"),
                      primaryButton: .cancel(),
                      secondaryButton: .default(Text("Enter"))
                )
            }
        }
    }
}

struct level2_Alert_Previews: PreviewProvider {
    static var previews: some View {
        level2_Alert()
    }
}
