//
//  PostGridView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/18/26.
//

import SwiftUI

struct PostGridView: View {
    
    var posts: [Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
        
    ]
    
    
    var body: some View {
        GeometryReader { geomtry in
            let imageDimension = (geomtry.size.width / 3) - 1
            let gridItems = Array(repeating: GridItem(.fixed(imageDimension), spacing: 1), count: 3)
            
            LazyVGrid(columns: gridItems, spacing: 1) {
                ForEach(posts) {post in
                    Image(post.imageURL)
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageDimension, height: imageDimension)
                        .clipped()
                }
                
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POST)
}
