//
//  SignUpView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/9/26.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegristrationViewModel


    var body: some View {

        VStack(spacing: 12){
            Spacer()
            Text("Welcone to Instagram, \(viewModel.username)")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using Instagram ")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
           
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Complete sign up ")
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
    SignUpView()
}
