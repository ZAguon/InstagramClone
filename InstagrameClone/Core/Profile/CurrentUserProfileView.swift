//
//  CurrentUserProfileView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/18/26.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    var posts: [Post] {
       return Post.MOCK_POST.filter({$0.user?.username == user.username})
   }
    
   
    var body: some View {
        NavigationStack {
            ScrollView {
                // Header
                ProfileView(user: user)
                
                //post grid view
                
                PostGridView(posts: posts)
            }
            
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
