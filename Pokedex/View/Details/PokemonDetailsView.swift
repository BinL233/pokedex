//
//  PokemonDetailsView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct PokemonDetailsView: View {
    @Environment(PokedexManager.self) var manager
    @Binding var captured : String
    
    var pokemon : Pokemon
    var body: some View {
        ScrollView {
            VStack {
                PokemonImageView(pokemon: pokemon)
                    .padding()
                CapturedView(pokemon: pokemon, captured: $captured)
                HeightWeightView(pokemon: pokemon)
                TypesView(pokemon: pokemon)
                WeaknessesView(pokemon: pokemon)
                EvolutionView(pokemon: pokemon, captured: $captured)
            }
            .navigationTitle(pokemon.name)
        }
    }
}
