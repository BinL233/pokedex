//
//  Pokemon.swift
//  Pokedex
//
//  Created by Kaile Ying on 10/22/23.
//

import Foundation

struct Pokemon : Identifiable, Codable {
    var id : Int
    let name : String
    let types : [PokemonType]
    let height : Double
    let weight : Double
    let weaknesses : [PokemonType]
    let prevEvolution : [Int]?
    let nextEvolution : [Int]?
    //var captured : Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case types
        case height
        case weight
        case weaknesses
        case prevEvolution = "prev_evolution"
        case nextEvolution = "next_evolution"
        //case captured
    }
    
    static var pokemon : [Pokemon]? = {
        return Persistences(filename: "pokedex").components
    }()
}

extension Pokemon {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        let typesStrings = try values.decode([String].self, forKey: .types)
        types = typesStrings.compactMap { PokemonType(rawValue: $0) }
        height = try values.decode(Double.self, forKey: .height)
        weight = try values.decode(Double.self, forKey: .weight)
        let weaknessesStrings = try values.decode([String].self, forKey: .weaknesses)
        weaknesses = weaknessesStrings.compactMap { PokemonType(rawValue: $0) }
        prevEvolution = try values.decodeIfPresent([Int].self, forKey: .prevEvolution)
        nextEvolution = try values.decodeIfPresent([Int].self, forKey: .nextEvolution)
    }
}
