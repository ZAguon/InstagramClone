//
//  CreatePasswordView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/9/26.
//

import SwiftUI

struct CreatePasswordView: View {
    
  
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegristrationViewModel
    
    var body: some View {
      
        VStack(spacing: 12){
            Text("Create a Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must at least be 8 characters in length")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $viewModel.password)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldCustom())
            
            NavigationLink{
             SignUpView()
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
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreatePasswordView()
}
