//
//  GFApp.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//

import SwiftUI

@main
struct GitHubFollowersApp: App {

    @State var appStore: GFStore
    @State var appCoordinator: GFCoordinator
    
    init() {
        self.appStore = .shared
        self.appCoordinator = GFStore.shared.appCoordinator
    }
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $appCoordinator.navigationPath){
                SearchAssembler.makeView(appStore: .shared)
                    .navigationDestination(for: GFCoordinator.NavigationDestination.self){ destination in
                        switch destination {
                        case .followers:
                            GFFollowersAssembler.makeView(appStore: GFStore.shared)
                        case .searchPage:
                            SearchAssembler.makeView(appStore: GFStore.shared)
                        }
                    }
                    
            }
        }
    }
}
