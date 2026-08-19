//
//  Post.swift
//  InstagrameClone
//
//  Created by Zachary Aguon on 8/18/26.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    
    let id: String
    let ownerUID: String
    let caption: String
    let likes: Int
    let imageURL: String
    let timeStamp: Date
    var user: User?
}


extension Post {
    
    static var MOCK_POST: [Post] = [
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Just vibes", likes: 5, imageURL: "Gogo", timeStamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Lowkey living.", likes: 45, imageURL: "Goku", timeStamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Here for the moment.", likes: 2, imageURL: "spiderman", timeStamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Mood: unbothered.", likes: 122, imageURL: "Eren", timeStamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Nothing but good energy.", likes: 23, imageURL: "fox", timeStamp: Date(), user: User.MOCK_USERS[4])
    ]
}
