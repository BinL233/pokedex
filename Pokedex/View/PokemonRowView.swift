//
//  PokemonRowView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct PokemonRowView: View {
    var pokemon : Pokemon
    @Binding var captured : String
    
    var body: some View {
        HStack {
            Text("\(pokemon.id)")
                .foregroundStyle(Color.accentColor)
                .font(.system(size: 15, design: .rounded))
            Text(pokemon.name)
                .foregroundStyle(Color.accentColor)
                .font(.system(size: 20, design: .rounded))
                .bold()
            let index = captured.index(captured.startIndex, offsetBy: pokemon.id - 1)
            if captured[index] == "1" {
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(.orange)
                    .font(.title2)
            }
            Spacer()
            PokemonImageView(pokemon: pokemon, width: 70, height: 70)
        }
        .padding([.top, .leading, .bottom], 20)
    }
}
