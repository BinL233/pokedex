//
//  WeaknessesView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct WeaknessesView: View {
    @Environment(PokedexManager.self) var manager
    var pokemon : Pokemon
    var body: some View {
        VStack (alignment: .leading){
            Text("Weaknesses")
                .font(.system(size: 30, design: .rounded))
                .bold()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(pokemon.weaknesses) { weakness in
                        CapsuleView(type: weakness)
                    }
                }
            }
        }
        .padding()
    }
}
