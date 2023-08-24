//
//  PokemonImage.swift
//  PokeInfo
//
//  Created by Jayanth Ambaldhage on 19/07/23.
//

import SwiftUI

struct PokemonImage: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon
    let dimensions: Double = 50
    var body: some View {
        AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(vm.getPokemonId(pokemon: pokemon)).png")) { image in
            if let image = image as? Image {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: dimensions, height: dimensions)
            }
        } placeholder: {
            ProgressView()
                .frame(width: dimensions, height: dimensions)
        }
    }
}

struct PokemonImage_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImage(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
        
    }
}
