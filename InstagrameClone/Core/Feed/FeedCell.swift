//
//  FeedCell.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 6/30/26.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
    
    var body: some View {
        VStack {
            //Image + UserNamer
            HStack{
                if let user = post.user {
                    Image(user.profileImageURL ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 37, height: 37)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                }
                Spacer()
            }
            .padding(.leading)
            
            //Post IMage
            Image(post.imageURL)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            //Action Buttons
            HStack(spacing: 16){
                
                Button {
                    print("Like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on Post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
                
            }
           .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            //Likes label
            
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
             
            
            // Caption
            HStack{
//                Text("\(post.user?.username ?? "")").fontWeight(.semibold) +
//                Text(post.caption)
                Text("\(Text(post.user?.username ?? "").fontWeight(.semibold)) \(post.caption)")
                
            }
           
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("9g ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
            
          
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POST[3])
}
