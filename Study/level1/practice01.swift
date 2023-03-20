//
//  practice01.swift
//  Study
//
//  Created by sueun kim on 2023/02/21.
//

import SwiftUI

struct practice01: View {
    @State var isPressButton : Bool  = false
    @State var isRandomImages : imagesRandom = .wind
    enum imagesRandom {
        case wind,bolt,person,cloud
        var thisIsImages : String {
            switch self {
            case .person:
                return "person"
            case .wind:
                return "wind"
            case .bolt:
                return "bolt"
            case .cloud:
                return "cloud"
            }
        }
    }
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea(.all)
            VStack{
                Spacer()
                HStack{
                    Image(systemName: isPressButton ? "bolt" : "bolt.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150,height: 100)
                    
                    Image(systemName: isRandomImages.thisIsImages)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150,height: 100)
                }
                Spacer()
                    List{
                        Section{
                            
                        }header: {
                            Text("리스트 입니다")
                                .foregroundColor(.black)
                                .font(.system(size:20))
                                .bold()
                        }
                }
                HStack{
                    Button{
                        isPressButton.toggle()
                    }label: {
                        Text("누르면 반짝")
                            .foregroundColor(.black)
                            .frame(width: 150,height: 50)
                            .background(.blue)
                            .cornerRadius(45)
                    }
                    Button{
                        if isRandomImages.thisIsImages == "wind"{
                            
                        }
                    }label: {
                        Text("이미지 변경")
                            .foregroundColor(.black)
                            .frame(width: 150,height: 50)
                            .background(.green)
                            .cornerRadius(45)
                    }
                }
            }
        }
    }
}

struct practice01_Previews: PreviewProvider {
    static var previews: some View {
        practice01()
    }
}
