//
//  PokemonCardView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/27/23.
//

import SwiftUI

struct PokemonCardView: View {
    var pokemon : Pokemon
    @Binding var captured : String
    
    var body: some View {
        VStack(spacing:-10) {
            ZStack(alignment: .topTrailing) {
                PokemonImageView(pokemon: pokemon, width: 100, height: 100)
                let index = captured.index(captured.startIndex, offsetBy: pokemon.id - 1)
                if captured[index] == "1" {
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(.orange)
                        .font(.title)
                }
                
            }
            
            Text(pokemon.name)
                .font(.system(size: 20, design: .rounded))
        .padding()
        }
    }
}
