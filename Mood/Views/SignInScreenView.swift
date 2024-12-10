//
//  SignInScreen.swift
//  Mood
//
//  Created by Yifan Wen on 2024/12/10.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = ""  // 管理电子邮件输入的状态变化

    var body: some View {
        ZStack {
            Color(hex: "#FFF8E7").edgesIgnoringSafeArea(.all)  // 设置整个视图的背景色为柔和的米色
            VStack(spacing: 20) {
                Spacer()

                Text("Sign In")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "#4A4A4A"))
                    .padding(.bottom, 10)

                SocialLoginButton(
                    image: Image(systemName: "globe"),
                    text: Text("Sign in with Google").foregroundColor(Color(hex: "#4A4A4A"))
                )

                Text("or get a link emailed to you")
                    .font(.subheadline)
                    .foregroundColor(Color(hex: "#4A4A4A"))

                TextField("  Email address", text: $email)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "#F7F7F7"))
                    .cornerRadius(50.0)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50.0)
                            .stroke(Color(hex: "#4A4A4A"), lineWidth: 1)
                    )
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)

                Text("Email me a sign up link")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "#4A4A4A"))
                    .cornerRadius(50.0)
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)

                Spacer()

                VStack(spacing: 8) {
                    Text("Read our Terms & Conditions.")
                        .font(.footnote)
                        .foregroundColor(Color(hex: "#4A4A4A"))
                }

                Spacer()
            }
            .padding(.horizontal, 20)
        }
    }
}

// 自定义社交登录按钮
struct SocialLoginButton: View {
    var image: Image
    var text: Text

    var body: some View {
        HStack {
            Spacer()
            image
                .resizable()
                .frame(width: 24, height: 24)
            text
                .font(.headline)
                .padding(.leading, 8)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(hex: "#E8DFF5"))
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}
