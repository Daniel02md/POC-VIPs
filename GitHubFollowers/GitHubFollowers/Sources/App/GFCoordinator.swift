//
//  GFCoordinator.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 28/02/25.
//
import SwiftUI

@Observable
class GFCoordinator{
    var navigationPath: NavigationPath
    
    init(navigationPath: NavigationPath = NavigationPath()) {
        self.navigationPath = navigationPath
    }
    
    
    func navigate(to path: NavigationDestination){
        self.navigationPath.append(path)
    }
    
    func navigateToRoot(){
        self.navigationPath.removeLast(self.navigationPath.count)
    }
}

extension GFCoordinator{
    enum NavigationDestination: Hashable{
        case followers
        case searchPage
    }
}
