//
//  CapturedView.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/27/23.
//

import SwiftUI

struct CapturedView: View {
    @Environment(PokedexManager.self) var manager
    var pokemon : Pokemon
    @Binding var captured : String
    
    var body: some View {
        let index = captured.index(captured.startIndex, offsetBy: pokemon.id - 1)
        
        HStack(spacing: -10){
            Spacer()
            Text("Capture:")
                .font(.system(size: 18, design: .rounded))
                .padding()
            Button(action: {
                var captured_arr = Array(captured)
                if captured[index] == "1" {
                    captured_arr[pokemon.id - 1] = "0"
                } else {
                    captured_arr[pokemon.id - 1] = "1"
                }
                captured = String(captured_arr)
            }) {
                if captured[index] == "1" {
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(.orange)
                        .font(.title2)
                } else {
                    Image(systemName: "checkmark.seal")
                        .foregroundStyle(.orange)
                        .font(.title2)
                }
            }
        }
        .padding(.horizontal, 30)
    }
}
