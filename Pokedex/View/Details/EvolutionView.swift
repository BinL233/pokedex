//
//  EvolutionView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/27/23.
//

import SwiftUI

struct EvolutionView: View {
    @Environment(PokedexManager.self) var manager
    var pokemon : Pokemon
    @Binding var captured : String
    
    var body: some View {
        VStack(alignment: .leading) {
            if let prevEvolutions = pokemon.prevEvolution, !prevEvolutions.isEmpty {
                Text("PrevEvolution")
                    .bold()
                    .font(.system(size: 30, design: .rounded))
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(prevEvolutions, id: \.self) { evo in
                            NavigationLink(destination: PokemonDetailsView(captured: $captured, pokemon: manager.pokemonList[evo-1])) {
                                PokemonImageView(pokemon: manager.pokemonList[evo-1], width: 70, height: 70)
                            }
                        }
                    }
                }
            }
            
            if let nextEvolutions = pokemon.nextEvolution, !nextEvolutions.isEmpty {
                Text("NextEvolution")
                    .bold()
                    .font(.system(size: 30, design: .rounded))
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(nextEvolutions, id: \.self) { evo in
                            NavigationLink(destination: PokemonDetailsView(captured: $captured, pokemon: manager.pokemonList[evo-1])) {
                                PokemonImageView(pokemon: manager.pokemonList[evo-1], width: 70, height: 70)
                            }
                        }
                    }
                }
            }
        }
        .padding()
    }
}
