//
//  SearchPresenter.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//

// Precisa ser um MainActor?
class SearchPresenter{
    let store: SearchStore
    let appCoordinator: GFCoordinator
    
    init(store: SearchStore, appCoordinator: GFCoordinator) {
        self.store = store
        self.appCoordinator = appCoordinator
    }
    
    func didSearch(query: String){
        GFStore.shared.set(query, for: .searchQuery)
        print(query)
        appCoordinator.navigate(to: .followers)
    }
}
