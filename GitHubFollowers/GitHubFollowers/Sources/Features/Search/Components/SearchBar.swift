//
//  SearchBar.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var username: String
    var onSearch: (() -> Void)?
    
    var body: some View {
        TextField("Enter Username", text: $username)
            .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    SearchBar(username: .constant("")){
        
    }
}
