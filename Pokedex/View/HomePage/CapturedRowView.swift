//
//  CapturedRowView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/27/23.
//

import SwiftUI

struct CapturedRowView: View {
    @Environment(PokedexManager.self) var manager
    @Binding var captured : String
    
    var body: some View {
        @Bindable var manager = manager
        VStack(alignment:.leading, spacing:2) {
            Text("Captured")
                .font(.system(size: 25, design: .rounded))
                .bold()
                .padding()
            ScrollView(.horizontal) {
                HStack(alignment:.bottom) {
                    ForEach($manager.pokemonList) {$pokemon in
                        let index = captured.index(captured.startIndex, offsetBy: pokemon.id - 1)
                        if captured[index] == "1" {
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
