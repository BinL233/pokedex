//
//  PokemonImageView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct PokemonImageView: View {
    @Environment(PokedexManager.self) var manager
    var pokemon : Pokemon
    var width : CGFloat?
    var height : CGFloat?
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(
                    gradient: Gradient(colors: pokemon.types.map {Color(pokemonType: $0)}),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ))
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Image(String(format: "%03d", pokemon.id))
                .resizable()
                .scaledToFit()
                .frame(width: (width != nil ? width! - 10 : nil), height: (height != nil ? height! - 10 : nil))
                .padding()
        }
    }
}
