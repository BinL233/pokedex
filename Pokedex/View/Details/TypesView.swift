//
//  TypesView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct TypesView: View {
    @Environment(PokedexManager.self) var manager
    var pokemon : Pokemon
    var body: some View {
        VStack (alignment: .leading){
            Text("Types")
                .font(.system(size: 30, design: .rounded))
                .bold()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pokemon.types) { type in
                        CapsuleView(type: type)
                    }
                }
            }
        }
        .padding()
    }
}
