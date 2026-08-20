//
//  ContentViewModel.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/19/26.
//

import Foundation
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setUpSuscribers()
    }

    func setUpSuscribers() {

        service.$userSession.sink{[weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }
}
