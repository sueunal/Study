//
//  level3_Grid.swift
//  Study
//
//  Created by sueun kim on 2023/05/05.
//

import SwiftUI

struct level3_Grid: View {
    var colums = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var myimages : [String] = ["river","river"]
    var body: some View{
        ScrollView{
            LazyVGrid(columns: colums, spacing: 20) {
                ForEach( myimages,id:\.self){ item in
                    LazyVStack(alignment: .listRowSeparatorLeading, spacing: 5 ){
                        Image(item)
                            .resizable()
                            .frame(width: 160,height: 200,alignment: .leading)
                        Text("나이키 신발")
                            .frame(width: 160,height: 20,alignment: .leading)
                            .minimumScaleFactor(0.7)
                            .lineLimit(1)
                        Text("나이키 신발")
                            .frame(width: 160,height: 20,alignment: .leading)
                            .minimumScaleFactor(0.7)
                            .lineLimit(1)
                        Text("나이키 신발")
                            .frame(width: 160,height: 20,alignment: .leading)
                            .minimumScaleFactor(0.7)
                            .lineLimit(1)
                    }
                    .padding(.leading,8)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray,lineWidth: 0.3)
                    )
                }
            }
            Spacer()
        }
    }
}

struct level3_Grid_Previews: PreviewProvider {
    static var previews: some View {
            level3_Grid()
    }
}
