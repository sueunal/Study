//
//  level3_checkpoint.swift
//  Study
//
//  Created by sueun kim on 2023/06/10.
//

import SwiftUI
// 클로져의 활용
// -> 왜 사용하는가?
//이렇게 쓰려면 어떻게 만들어야 하지?
// 고차 함수
// - 함수의 인자로 함수를 받은 함수
// extension
//확장하다 ? 무엇을? 색깔같은걸 새롭게 정의하여 사용함
// 프로토콜 규칙을 정의한다.
// 콘커런시?
// 만약 음식점에서 주문이 3개가 들어오면 하나하나 준비하는 것보다 동시에 3개를 준비하는 것이 더 효율적
// 콘커런시를 사용하여 여러 작업을 효율적으로 작업한다! 사용자가 속이 터지기 때문


struct level3_checkpoint: View {
    var body: some View {
        Button("click!") {
        }
    }
}

struct level3_checkpoint_Previews: PreviewProvider {
    static var previews: some View {
        level3_checkpoint()
    }
}
