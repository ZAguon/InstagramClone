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
                    ForEach(0 ... 15, id: \.self) { user in
                        HStack {
                            Image("Gogo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading) {
                                Text("Gojo")
                                
                                Text("The Strongest")
                            }
                            .font(.footnote)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
