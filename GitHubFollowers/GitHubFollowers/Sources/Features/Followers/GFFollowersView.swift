//
//  GFFollowersView.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 28/02/25.
//

import SwiftUI

struct GFFollowersView: View {
    @State private var store: GFFollowersStore
    private var interactor: GFFollowersInteractor
    
    init(store: GFFollowersStore, interactor: GFFollowersInteractor) {
        self.store = store
        self.interactor = interactor
    }
    
    var body: some View {
        Text("\(store.username)")
    }
}

#Preview {
    GFFollowersAssembler.makeView(appStore: .shared)
}
