//
//  Level2_Modal.swift
//  Study
//
//  Created by sueun kim on 2023/04/19.
//

import SwiftUI

struct Level2_Modal: View {
    @State var isShowingModal : Bool = false
    var body: some View {
        VStack{
            Button{
                isShowingModal = true
            }label: {
                Text("Call Modal!")
            }
            .fullScreenCover(isPresented: $isShowingModal) {
                ZStack{
                    Color("SuEunColor").ignoresSafeArea(.all)
                    Button{
                        isShowingModal = false
                    }
                label:{
                    Text("Close Full Screen")
                        .onAppear{
                            print("adsf")
                        }
                    }
                }
            }
        }
    }
}

struct Level2_Modal_Previews: PreviewProvider {
    static var previews: some View {
        Level2_Modal()
    }
}
