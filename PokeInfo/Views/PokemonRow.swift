//
//  PokemonRow.swift
//  PokeInfo
//
//  Created by Jayanth Ambaldhage on 19/07/23.
//

import SwiftUI

struct PokemonRow: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon

    var body: some View {
        HStack {
            PokemonImage(pokemon: pokemon)
            Text(pokemon.name)
        }
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
