//
//  PokedexApp.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

@main
struct PokedexApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(PokedexManager())
        }
    }
}
