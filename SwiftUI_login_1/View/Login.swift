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
            
            CustomTextField(image: "envelope.fill", title: "이메일", value: $email, animation: animation)
            
            CustomTextField(image: "lock.fill", title: "비밀번호", value: $password, animation: animation)
                .padding(.top, 10)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
