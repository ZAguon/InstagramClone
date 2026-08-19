//
//  UploadPostView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/19/26.
//

import SwiftUI
import PhotosUI
import Combine


struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var isImagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack {
            
            // action tool bar
            HStack {
                Button {
                   caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("Upload Post")
                    .fontWeight(.semibold )
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold )
                }
            }
            
            .padding(.horizontal)
            
            // Post Image/ Caption
            HStack(spacing: 8) {
                
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                    
                }
                TextField("Enter your caption", text: $caption, axis: .vertical)
                
            }
            
            .padding()
            
            Spacer()
        }
        .onAppear {
            isImagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $isImagePickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(2))
}
