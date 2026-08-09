//
//  CreateUserNameView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/9/26.
//

import SwiftUI

struct CreateUserNameView: View {
    
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create Username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this Username to sign in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $username)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldCustom())
            
            NavigationLink{
                CreatePasswordView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            
            .padding(.vertical)

            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                onTapGesture {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    CreateUserNameView()
}
