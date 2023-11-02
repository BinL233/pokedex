//
//  PokemonListView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct PokemonListView: View {
    @Environment(PokedexManager.self) var manager
    @Binding var captured : String
    
    var body: some View {
        
        NavigationStack {
            List {
                if manager.selection == nil {
                    ForEach(manager.pokemonList) { pokemon in
                        NavigationLink(destination: PokemonDetailsView(captured: $captured, pokemon: pokemon)) {
                            PokemonRowView(pokemon: pokemon, captured: $captured)
                        }
                    }
                } else {
                    ForEach(manager.pokemonList) { pokemon in
                        if let selection = manager.selection, pokemon.types.contains(selection) {
                            NavigationLink(destination: PokemonDetailsView(captured: $captured, pokemon: pokemon)) {
                                PokemonRowView(pokemon: pokemon, captured: $captured)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Pokédex")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack (spacing: 0) {
                        TypeFilter()
                    }
                }
            }
        }
    }
}
