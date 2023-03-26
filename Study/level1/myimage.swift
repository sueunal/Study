//
//  myimage.swift
//  Study
//
//  Created by sueun kim on 2023/02/15.
//

import SwiftUI

struct myimage: View {
    var body: some View {
        HStack{
            Image("river")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200,height: 200)
            .clipped()
            .border(.black,width:2)
            
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 30, height: 30)
        }
    }
}

struct myimage_Previews: PreviewProvider {
    static var previews: some View {
        myimage()
    }
}
