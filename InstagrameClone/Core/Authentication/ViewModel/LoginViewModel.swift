//
//  LoginViewModel.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/20/26.
//

import Foundation
import Combine


class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
