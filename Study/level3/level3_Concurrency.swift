//
//  level3_Concurrency.swift
//  Study
//
//  Created by sueun kim on 2023/06/09.
//

import SwiftUI

struct level3_Concurrency: View {
    @State var name : String = "Sueun"
    var body: some View {
        ZStack{
            VStack{
                Text(name)
                Button{
                    downloadFile()
                }label:{
                   Text("downloads!")
                }
            }
        }
    }
        func downloadFile(){
            DispatchQueue.main.asyncAfter(deadline:.now()+3){ // 3초가 걸린후 success를 나타냄
                //combine도 사용해보면 좋을듯하다
                 name = "Success!"
            }
        }
}
struct level3_Concurrency_Previews: PreviewProvider {
    static var previews: some View {
        level3_Concurrency()
    }
}
