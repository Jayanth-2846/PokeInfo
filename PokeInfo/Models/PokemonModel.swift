//
//  PokemonModel.swift
//  PokeInfo
//
//  Created by Jayanth Ambaldhage on 17/07/23.
//

import Foundation

struct PokemonPage: Codable {
    let count: Int
    let next: String
    let results: [Pokemon]
}

struct Pokemon: Codable,Identifiable,Equatable{
    let id = UUID()
    let name: String
    let url: String
    
    static var samplePokemon = Pokemon(name: "Balbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/")
}

struct DetailPokemon: Codable {
    let id: Int
    let height: Int
    let weight: Int
//    let stats: [Statistics]
}

//struct Statistics: Codable {
//    let base_stat: Int
//    let stat: [Stat]
//}
//struct Stat: Codable {
//    let name: String
//}
