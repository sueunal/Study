//
//  LoginView.swift
//  Study
//
//  Created by sueun kim on 2023/06/15.
//

import SwiftUI

struct LoginView: View {
    @State var password : String = ""
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .padding()
                }
                Text("AFFINITY")
                    .font(.system(size:50))
                    .foregroundColor(.black)
                    .bold()
                    .padding(.horizontal,88)
                HStack{
                    Text("이메일 로그인")
                        .bold()
                        .padding()
                    Spacer()
                }
                SignView(value: "OOOOOOO@mail.com", isPassword: true)
                HStack{
                    Text("비밀번호")
                        .bold()
                        .padding()
                    Spacer()
                }
                SignView(value: "비밀번호", isPassword: false)
                
                LoginProcess()
                
                withAppleLogin()
                
                withGoolgeLogin()
            }
        }
    }
    @ViewBuilder
    func LoginProcess() -> some View{
        VStack{
            Button{
                
            }label: {
                Text("로그인")
                    .frame(width: UIScreen.main.bounds.size.width - 80, height: 50)
                    .background(Color.cyan)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding()
            }
            HStack{
                Text("회원가입 ")
                    .frame(width:90,height: 40)
                    .background(Color.cyan)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding()
                Text("회원가입 ")
                    .frame(width:90,height: 40)
                    .background(Color.cyan)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding()
                Text("회원가입 ")
                    .frame(width:90,height: 40)
                    .background(Color.cyan)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
    @ViewBuilder
    func SignView(value : String, isPassword : Bool?)-> some View{
        @State var showPassword : Bool = false
        VStack(alignment: .leading, spacing: 10) {
            if isPassword ?? true {
                    TextField(value, text:$password )
                        .textCase(.lowercase)
                        .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.cyan)
                        .frame(height: 60)
                )
                .padding()
            }else{
                HStack{
                    if showPassword{
                        TextField(value, text:$password)
                            .padding()
                    }else{
                        SecureField(value, text:$password)
                            .padding()
                    }
                    Button{
                        showPassword.toggle()
                    }label: {
                        Image(systemName: "eye.slash")
                            .padding()
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.cyan)
                        .frame(height: 60)
                    )
                .padding()
            
            }
        }
    }
    @ViewBuilder
    func withAppleLogin() ->some View{
        Button{
            
        }label: {
           Text("애플 아이디로 로그인하기")
                .frame(width: UIScreen.main.bounds.size.width - 80, height: 50)
                .foregroundColor(.white)
                .background(.black )
                .cornerRadius(10)
        }
    }
    @ViewBuilder
    func withGoolgeLogin() ->some View{
        Button{
            
        }label: {
           Text("구글 아이디로 로그인하기")
                .frame(width: UIScreen.main.bounds.size.width - 80, height: 50)
                .foregroundColor(.white)
                .background(.gray )
                .cornerRadius(10)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
