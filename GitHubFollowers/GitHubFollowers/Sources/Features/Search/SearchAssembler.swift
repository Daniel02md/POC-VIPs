//
//  Untitled.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//
import SwiftUI

class SearchAssembler: Assembler{
    static func makeView(appStore: GFStore) -> some View {
        let store = SearchStore()
        let presenter = SearchPresenter(store: store, appCoordinator: appStore.appCoordinator)
        let interactor = SearchInteractor(presenter: presenter)
        return GFSearchView(store: store, interactor: interactor)
    }
}
