//
//  level3_Grid.swift
//  Study
//
//  Created by sueun kim on 2023/05/05.
//

import SwiftUI

struct level3_Grid: View {
    let data = (1...50).map { "Item \($0)" }
    let columns = [ // 한줄에 몇개를 둘것인지 item 설정
        GridItem(.adaptive(minimum: 50)),
        GridItem(.adaptive(minimum: 50)),
        GridItem(.adaptive(minimum: 50)),
        GridItem(.adaptive(minimum: 50)),
        GridItem(.adaptive(minimum: 50))
    ]
                 
    var body: some View {
        LazyVGrid(columns: columns , spacing: 0) {
            ForEach(data, id: \.self) { item in
                Image("river")
                    .resizable()
                    .frame(width:80,height: 80)
            }
        }
    }
}

struct level3_Grid_Previews: PreviewProvider {
    static var previews: some View {
        level3_Grid()
    }
}
