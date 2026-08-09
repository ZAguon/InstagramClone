//
//  LoginView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/6/26.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                
                Spacer()
                //logo image
                Image("IG_Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                    .blendMode(.multiply)
                
                // text fields
                VStack {
                    
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldCustom())
                    
                    SecureField("Password", text: $password)
                        .modifier(TextFieldCustom())
                }
                
                Button {
                    
                    print("Show forgot password")
                    
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                
                .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                
                Button {
                    
                    print("Login")
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height:0.5)
                       
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height:0.5)
                       
                }
                .foregroundStyle(.gray)
                
                HStack {
                    Image("fb")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)
                Spacer()
                Divider()
                
                NavigationLink{
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3 ){
                        Text("Dont Have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
