//
//  Pokemon.swift
//  Pokedex
//
//  Created by Kerby Jean on 2/14/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

import Foundation

//struct Pokemon: Codable {
//    let count: Int
//    let results: [PokeResult]
//}
//
//// MARK: - Result
//struct PokeResult: Codable {
//    let name: String
//    let url: String
//}

struct Pokemon: Codable {
    
    let abilities: [Ability]
    let id: Int
    let name: String
    let sprites: Sprites
    let types: [TypeElement]
    let weight: Int
}

// MARK: - Ability
struct Ability: Codable {
    let ability: Species
    let slot: Int
}

// MARK: - Species
struct Species: Codable {
    let name: String
    let url: String
}


// MARK: - Sprites
struct Sprites: Codable {
    let backDefault: String
    let backShiny: String
    let frontDefault: String
    let frontShiny: String

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backShiny = "back_shiny"
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
}


// MARK: - TypeElement
struct TypeElement: Codable {
    let slot: Int
    let type: Species
}
