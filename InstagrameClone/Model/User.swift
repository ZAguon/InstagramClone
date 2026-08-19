//
//  User.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/18/26.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    
    let id: String
    var username: String
    var profileImageURL: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    
    static var MOCK_USERS: [User] =  [
        .init(id: NSUUID().uuidString, username: "Gojo", profileImageURL: "Gogo", fullname: nil, bio: "The strongest", email: "GojoRo@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Goku", profileImageURL: "Goku", fullname: "Kakoraot", bio: "The Sayion", email: "GojoRo@gmail.com"),
        .init(id: NSUUID().uuidString, username: "SpiderMan", profileImageURL: "spiderman", fullname: "Peter Parker", bio: "The Hero", email: "GojoRo@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Eren", profileImageURL: "Eren", fullname: "Eren Yeager", bio: "The Attack Tian", email: "Freedom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "fox", profileImageURL: "fox", fullname: "the fox", bio: "The Orange Fox", email: "animaal@gmail.com")
    ]
        
    
}
