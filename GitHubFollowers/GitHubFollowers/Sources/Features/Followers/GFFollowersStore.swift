//
//  GFFollowersStore.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 28/02/25.
//
import SwiftUI

@Observable
class GFFollowersStore{
    var username: String
    var followers: [String]
    
    init(username: String, followers: [String]) {
        self.username = username
        self.followers = followers
    }
}
