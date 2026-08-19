//
//  ProfileView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 6/29/26.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    
     var posts: [Post] {
        return Post.MOCK_POST.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
       
        ScrollView {
            //header
            ProfileHeaderView(user: user)
            //post grid view
            PostGridView(posts: posts)
        }
    
            
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
