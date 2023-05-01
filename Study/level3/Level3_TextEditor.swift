//
//  Level3_TextEditor.swift
//  Study
//
//  Created by sueun kim on 2023/05/01.
//

import SwiftUI

struct Level3_TextEditor: View {
    @State var myText : String = "here Text"
    @State var isText : Bool = false
    
    var body: some View {
        VStack{
            TextEditor(text: $myText)
                .padding()
                .background(.yellow)
                .multilineTextAlignment(.center)
                .frame(height: 300)
                .lineSpacing(10)
                .onChange(of: myText){ newValue in
                    if newValue.count < 10{
                        isText = true
                    }
                    isText = false
                }.alert(isPresented: $isText) {
                    Alert(title: Text("Warning!"))
                }
        }
    }
}


struct Level3_TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        Level3_TextEditor()
    }
}
