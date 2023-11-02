//
//  Height&WeightView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import SwiftUI

struct HeightWeightView: View {
    var pokemon : Pokemon
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text("Height")
                    .bold()
                HStack {
                    Text(String(format: "%.2f", pokemon.height))
                        .bold()
                        .font(.system(size: 30, design: .rounded))
                    Text("m")
                }
            }
            Spacer()
            
            VStack {
                Text("Weight")
                    .bold()
                HStack {
                    Text(String(format: "%.1f", pokemon.weight))
                        .bold()
                        .font(.system(size: 30, design: .rounded))
                    Text("kg")
                }
            }
            Spacer()
        }
        .padding()
    }
}
