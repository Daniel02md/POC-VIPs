//
//  SearchInteractor.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//

class SearchInteractor{
    let presenter: SearchPresenter
    
    
    init(presenter: SearchPresenter) {
        self.presenter = presenter
    }
    
    
    func didSearch(query: String){
        presenter.didSearch(query: query)
    }
}


