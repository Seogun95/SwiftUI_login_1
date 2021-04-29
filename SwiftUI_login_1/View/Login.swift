//
//  Login.swift
//  SwiftUI_login_1
//
//  Created by 김선중 on 2021/04/29.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    @Namespace var animation
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("로그인")
                        .font(.system(size: 30, weight: .heavy))
                        .foregroundColor(.primary)
                    Text("계속하려면 로그인 해주세요.")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                }
                Spacer()
            }
            .padding()
            .padding(.leading)
            
            CustomTextField(image: "envelope.fill", title: "이메일", value: $email, animation: animation)
            
            CustomTextField(image: "lock.fill", title: "비밀번호", value: $password, animation: animation)
                .padding(.top, 10)
            
            //하단 로그인 관련 버튼
            HStack {
                Spacer(minLength: 0)
                VStack(alignment: .trailing, spacing: 15) {
                   //비밀번호 찾기 버튼
                    Button(action: {}) {
                        Text("아이디 / 비밀번호 찾기")
                            .fontWeight(.heavy)
                            .foregroundColor(.myYellow)
                    }
                    // 로그인 버튼
                    Button(action: {}) {
                        HStack {
                            Text("로그인")
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                            Image(systemName: "arrow.right")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [.myYellow,.myYellow_light]), startPoint: .trailing, endPoint: .leading)
                        )
                        .clipShape(Capsule())
                    }
                }
            }
            .padding()
            .padding(.top, 20)
            .padding(.trailing)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
