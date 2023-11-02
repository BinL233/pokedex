//
//  CapsuleView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct CapsuleView: View {
    @Environment(PokedexManager.self) var manager
    var type : PokemonType
    var body: some View {
        Text(type.rawValue)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .font(.system(size: 20, design: .rounded))
            .foregroundColor(.white)
            .background(
                Capsule()
                    .fill(Color(pokemonType: type))
            )
    }
}
