//
//  MainTabView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 6/29/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem{
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notification")
                .tabItem{
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
        }
        
        .accentColor(.black)
        
    }
}

#Preview {
    MainTabView()
}
