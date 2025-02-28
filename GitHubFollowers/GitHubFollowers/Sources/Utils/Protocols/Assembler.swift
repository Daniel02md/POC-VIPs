//
//  Assembler.swift
//  GitHubFollowers
//
//  Created by Marcos Bezerra on 26/02/25.
//
import SwiftUI

@MainActor
protocol Assembler: AnyObject{
    associatedtype Content: View
    static func makeView(appStore: GFStore) -> Content
}
