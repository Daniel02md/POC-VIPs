//
//  ContentView.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//

import SwiftUI

struct GFSearchView: View {
    @State var store: SearchStore
    private var interactor: SearchInteractor
    
    init(store: SearchStore, interactor: SearchInteractor) {
        self.store = store
        self.interactor = interactor
    }
    
    var body: some View {
        VStack{
            Spacer()
            Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 250)
                .padding(.vertical, 40)
            
            TextField("Enter Username", text: $store.text)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    if !store.text.isEmpty{
                        interactor.didSearch(query: store.text)
                    }
                }
            .padding(.horizontal, 20)
            Spacer()
            Button{
                interactor.didSearch(query: store.text)
            } label: {
                Text("Search")
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 50)
                
        }
        .frame(maxHeight: .infinity)
    }
}

#Preview {
    SearchAssembler.makeView(appStore: .shared)
}
