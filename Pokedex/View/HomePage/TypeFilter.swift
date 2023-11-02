//
//  TypeFilter.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/27/23.
//

import SwiftUI

struct TypeFilter: View {
    @Environment(PokedexManager.self) var manager
    
    var body: some View {
        @Bindable var manager = manager
        Picker("TypeFilter", selection: $manager.selection) {
            Text("None").tag(nil as PokemonType?)
            ForEach(PokemonType.allCases) { type in
                Text(type.rawValue).tag(type as PokemonType?)
            }
        }
    }
}
