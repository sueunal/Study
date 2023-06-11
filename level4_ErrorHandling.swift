//
//  level4_ErrorHandling.swift
//  Study
//
//  Created by sueun kim on 2023/06/11.
//

import SwiftUI
enum NumberIsZero : Error{
   case DividedbyZero
}
struct level4_ErrorHandling: View {
    @State var number :Int = 100
    @State var Inputnumber : String = ""
    var body: some View {
        VStack{
            TextField("100을 무엇으로 나눌까요?", text: $Inputnumber)
            Text("100을 \(Inputnumber)로 나누면 \(number) 입니다.")
            Button{ //0 으로 나누는 경우 crash 발생 후 앱이 죽어버린다.
                // 이런 에러를 처리 하는 방법은 if else 도 있겠지만..
                // swift에서 error라는 프로토콜을 제공함으로 이것을 활용할 수 있다.
                do{
                // do 는 실행했을 때 정상적인 값을 처리하는 부분
                    number = try DivideNumber(Inputnumbers: Inputnumber)
                    //try로 함수에서 처리할 부분에 에러가 발생한다면 catch로 에러를 던진다!
                }catch{
                  print("error: \(error)")
                }
            }label: {
               Text("나누기!")
            }
        }
    }
    func DivideNumber(Inputnumbers : String)throws -> Int{ //이 함수는 에러 또는 Int를 반환할 수 있다.
        if Inputnumbers == "0"{ //만약 0으로 나눈다면 error 프로토콜을 채택한친구를 반환해준다
            throw NumberIsZero.DividedbyZero
        }
        else{
            // 에러가 아니라면 Int를 반환한다.
            return number / (Int(Inputnumbers) ?? 0)
        }
    }
}

struct level4_ErrorHandling_Previews: PreviewProvider {
    static var previews: some View {
        level4_ErrorHandling()
    }
}
