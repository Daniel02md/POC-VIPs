//
//  GFAppStore.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 28/02/25.
//

class GFStore{
    
    
    static var shared = GFStore()
    var store: [Keys: Any] = [:]
    var appCoordinator: GFCoordinator
    
    init(appCoordinator: GFCoordinator = GFCoordinator()){
        self.appCoordinator = appCoordinator
        
        self.set(store, for: .appStore)
    }
    
    public func get<T>(_ key: GFStore.Keys) -> T? {
        return store[key] as? T
    }

    public func set(_ value: Any, for key: GFStore.Keys) {
        store[key] = value
    }
    
}


extension GFStore{
    enum Keys: String, CaseIterable{
        case appStore
        case searchQuery
    }
}

