//
//  FeedView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 6/30/26.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 31){
                    ForEach(0 ... 10, id: \.self) {
                        post in FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("IG Logo")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                        
                }
                
                
            }
        }
       
    }
}

#Preview {
    FeedView()
}
