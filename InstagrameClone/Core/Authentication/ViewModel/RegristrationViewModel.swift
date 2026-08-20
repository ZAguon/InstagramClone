//
//  RegristrationViewModel.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/19/26.
//

import Foundation
import FirebaseAuth
import Combine

class RegristrationViewModel: ObservableObject {
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
       try await  AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
