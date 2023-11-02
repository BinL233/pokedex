//
//  TypeRowView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/27/23.
//

import SwiftUI

struct TypeRowView: View {
    @Environment(PokedexManager.self) var manager
    var currType : PokemonType?
    @Binding var captured : String
    
    var body: some View {
        @Bindable var manager = manager
        VStack(alignment:.leading, spacing:2) {
            Text(currType?.rawValue ?? "")
                .font(.system(size: 25, design: .rounded))
                .bold()
                .padding()
            ScrollView(.horizontal) {
                HStack(alignment:.bottom) {
                    ForEach($manager.pokemonList) {$pokemon in
                        if pokemon.types.contains(currType ?? .bug) {
                            NavigationLink(destination: PokemonDetailsView(captured: $captured, pokemon: pokemon)) {
                                PokemonCardView(pokemon: pokemon, captured: $captured)
                            }
                        }
                    }
                }
            }
        }
    }
}
