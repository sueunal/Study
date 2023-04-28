//
//  Level3_Slider.swift
//  Study
//
//  Created by sueun kim on 2023/04/28.
//

import SwiftUI

struct Level3_Slider: View {
    @State var sliderval : Float = 100.0
    @State private var speed = 50.0
    @State private var isEditing = false
    var body: some View {
        VStack{
            Slider(
                   value: $speed, // 초기 설정값에 따라 슬라이더의 위치가 값에 맞게 변경됨
                   in: 0...100, // 0부터 100까지 제한적인 범위
                   step: 10 // 10단위로 증가
               ) {
                   Text("Speed")
               } minimumValueLabel: {
                   Text("0")
               } maximumValueLabel: {
                   Text("100")
               } onEditingChanged: { editing in
                   isEditing = editing
               }
               .tint(.red) // 슬라이드 강조색 변경
               Text("\(speed)")
                   .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

struct Level3_Slider_Previews: PreviewProvider {
    static var previews: some View {
        Level3_Slider()
    }
}
