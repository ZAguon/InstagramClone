//
//  SearchView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/5/26.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 12) {
                    ForEach(User.MOCK_USERS) { user in
                        //grab user value 
                        NavigationLink(value: user){
                            HStack {
                                Image(user.profileImageURL ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                                
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            
            //on tap of user, take user to Profile
            .navigationDestination(for: User.self, destination: { user in ProfileView(user: user)
            } )
            
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
