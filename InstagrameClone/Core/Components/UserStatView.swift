//
//  UserStatView.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 6/30/26.
//

import SwiftUI

struct UserStatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
                
            Text(title)
                .font(.footnote)
        }
        
        .frame(width: 67)
    }
}

#Preview {
    UserStatView(value: 12, title: "Posts")
}
