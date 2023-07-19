//
//  PokemonDetailView.swift
//  PokeInfo
//
//  Created by Jayanth Ambaldhage on 17/07/23.
//

import SwiftUI

struct PokemonDetailView: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon
    var body: some View {
        VStack{
            PokemonView(pokemon: pokemon)
            VStack{
                Text("**ID**: \(vm.pokemonDetails?.id ?? 0)")
                Text("**Weight**: \(vm.formatData(value: vm.pokemonDetails?.weight ?? 0)) Kg")
                Text("**Height**: \(vm.formatData(value: vm.pokemonDetails?.height ?? 0)) cm")
//                Text("**\(vm.pokemonDetails?.stats[0].stat[0].name ?? "Hp")**: \(vm.formatData(value: vm.pokemonDetails?.stats[0].base_stat ?? 0)) cm")
//                Text("**\(vm.pokemonDetails?.stats[1].stat[0].name ?? "Attack")**: \(vm.formatData(value: vm.pokemonDetails?.stats[1].base_stat ?? 0)) cm")

            }
        }
        .onAppear{
            vm.getDetails(pokemon: pokemon)
        }
        
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
