//
//  CustomTextField.swift
//  SwiftUI_login_1
//
//  Created by 김선중 on 2021/04/29.
//

import SwiftUI

struct CustomTextField: View {
    
    var image: String
    var title: String
    @Binding var value: String
    
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Image(systemName: image)
                    .font(.system(size: 20))
                    .foregroundColor(.primary)
                    .frame(width: 30)
                
                //만약 value 값이 할당 되었다면 이미지 아래에 VStack과 조건을 실행
                VStack(alignment: .leading) {
                    if value != "" {
                        Text(title)
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .matchedGeometryEffect(id: title, in: animation)
                    }
                    
                    
                    //텍스트 필드 안에 텍스트를 넣기 위한 ZStack 생성
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                        
                        
                        if value == "" {
                            Text(title)
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                                .matchedGeometryEffect(id: title, in: animation)
                        }
                        
                        if title == "비밀번호" {
                            TextField("", text: $value)
                        } else {
                            TextField("", text: $value)
                                .keyboardType(title == "휴대폰 번호" ? .numberPad : .default)
                        }
                        
                    }
                    
                }
            }
            
            if value == "" {
                Divider()
            }
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        //value가 empty면 투명도 1 아니면 0
        .background(Color("darkmode").opacity(value != "" ? 1 : 0))
        .cornerRadius(10)
        //그림자 효과
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)
        .padding(.horizontal)
        .padding(.top)
        .animation(.linear)
        
    }
}

