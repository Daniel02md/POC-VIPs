//
//  GFFollowersAssemble.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 28/02/25.
//
import SwiftUI

class GFFollowersAssembler: Assembler{
    static func makeView(appStore: GFStore) -> some View {
        let username: String? = appStore.get(.searchQuery)
        let store = GFFollowersStore(username: username ?? "", followers: [])
        let presenter = GFFollowersPresenter(store: store)
        let interactor = GFFollowersInteractor(presenter: presenter)
        
        return GFFollowersView(store: store, interactor: interactor)
        
    }
}
