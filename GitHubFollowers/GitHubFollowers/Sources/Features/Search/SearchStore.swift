//
//  SearchStore.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//
import SwiftUI

@Observable
class SearchStore{
    var text: String
    
    init(text: String = "") {
        self.text = text
    }
}
