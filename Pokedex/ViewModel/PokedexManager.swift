//
//  PokedexManager.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import Foundation
import Observation

@Observable
class PokedexManager {
    var pokemonList : [Pokemon]
    var selection: PokemonType?
    
    init() {
        pokemonList = Pokemon.pokemon ?? []
        selection = nil
    }
    
    func checkNoOneCaptured(captured: String) -> Bool {
        for i in 0..<captured.count {
            let index = captured.index(captured.startIndex, offsetBy: i)
            if captured[index] == "1" {
                return false
            }
        }
        
        return true
    }
    
//    private func pokemonCaptureToggle(pokemon: Pokemon) {
//        for i in 0..<pokemonList.count {
//            if pokemonList[i].id == pokemon.id {
//                pokemonList[i].captured.toggle()
//            }
//        }
//    }
//    
//    func pokemonCaptureToggleButton(pokemon: Pokemon) {
//        pokemonCaptureToggle(pokemon: pokemon)
//    }
}

