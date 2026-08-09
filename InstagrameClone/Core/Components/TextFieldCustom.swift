//
//  TextFieldCustom.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/9/26.
//

import SwiftUI

struct TextFieldCustom: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
        
    }
  
}
